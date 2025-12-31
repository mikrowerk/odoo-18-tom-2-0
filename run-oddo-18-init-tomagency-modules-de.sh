#!/usr/bin/env bash
/Users/gfr/Documents/odoo_repository/odoo-18-tom-2-0/.venv/bin/activate
arch
echo "using venv= $(which python)"
echo "using pip= $(which pip)"
pip list


/Users/gfr/Documents/odoo_repository/odoo-18/odoo-bin -c /Users/gfr/Documents/odoo_repository/odoo-18-tom-2-0/odoo.conf \
-d localhost_18_tom_de_template --log-level info --load-language de_DE --without-demo all \
--stop-after-init \
-i mikrowerk_tomagency_bundle,l10n_de
