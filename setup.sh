#!/usr/bin/env bash
# SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source ./.venv/bin/activate
echo "using venv= $(which python)"
echo "using pip= $(which pip)"
pip install -r /Users/gfr/Documents/odoo_repository/odoo-18/requirements.txt
pip install -r ./additional-requirements.txt