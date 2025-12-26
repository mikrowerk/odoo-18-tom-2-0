#!/usr/bin/env bash
/Users/gfr/Documents/odoo_repository/odoo-18-tom-2-0/.venv/bin/activate
arch
echo "using venv= $(which python)"
echo "using pip= $(which pip)"
pip list


/Users/gfr/Documents/odoo_repository/odoo-18/odoo-bin -c /Users/gfr/Documents/odoo_repository/odoo-18-tom-2-0/odoo.conf \
-d localhost_18 --log-level debug --load-language de_DE \
-i base,web,account,analytic,barcodes,calendar,contacts,hr,hr_timesheet,mail,payment,payment_paypal,portal,product,project,purchase,sale,spreadsheet,stock,uom
