#!/usr/bin/env bash
/Users/gfr/Documents/odoo_repository/odoo-18-tom-2-0/.venv/bin/activate
arch
echo "using venv= $(which python)"
echo "using pip= $(which pip)"
pip list


/Users/gfr/Documents/odoo_repository/odoo-18/odoo-bin -c /Users/gfr/Documents/odoo_repository/odoo-18-tom-2-0/odoo.conf \
-d localhost_18 --log-level debug --load-language de_DE \
--stop-after-init \
--without-demo all \
-i mikrowerk_project_admin,mikrowerk_account_payment,mikrowerk_edi_documents

#mikrowerk_project_admin,mikrowerk_account_payment,mikrowerk_edi_documents,mikrowerk_tom_import