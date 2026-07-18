#!/usr/bin/env bash
set -euo pipefail

# Mirrors .github/workflows/sigma-test.yml for a SigmaHQ/sigma checkout.
# Usage: execution/scripts/verify-sigmahq-pr.sh /absolute/path/to/sigma

sigma_repo="${1:-/Users/architsingh/projects/sigma}"
venv_path="/private/tmp/sigmahq-ci-venv"

if [[ ! -f "$sigma_repo/.github/workflows/sigma-test.yml" ]]; then
    echo "Not a SigmaHQ/sigma checkout: $sigma_repo" >&2
    exit 2
fi

python3.11 -m venv "$venv_path"
"$venv_path/bin/pip" install --upgrade pip
"$venv_path/bin/pip" install \
    PyYAML \
    colorama \
    yamllint \
    pysigma \
    sigma-cli \
    'pySigma-validators-sigmahq==0.20.*'

cd "$sigma_repo"

echo '==> yamllint (strict)'
"$venv_path/bin/yamllint" --strict .

echo '==> logsource tests'
"$venv_path/bin/python" tests/test_logsource.py

echo '==> legacy rule tests'
"$venv_path/bin/python" tests/test_rules.py

echo '==> full Sigma validator'
"$venv_path/bin/sigma" check --fail-on-error --fail-on-issues \
    --validation-config tests/sigma_cli_conf.yml \
    rules*

echo '==> duplicate ID check'
if grep -rh '^id: ' rules* deprecated unsupported | sort | uniq -c | grep -vE '^\s+1 id: '; then
    echo 'Duplicate Sigma IDs found.' >&2
    exit 1
else
    duplicate_status=$?
fi
if [[ $duplicate_status -eq 1 ]]; then
    echo 'No duplicate IDs found.'
else
    exit "$duplicate_status"
fi

echo 'All local SigmaHQ CI gates passed.'
