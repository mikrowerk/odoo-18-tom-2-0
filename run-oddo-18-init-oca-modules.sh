#!/usr/bin/env bash
/Users/gfr/Documents/odoo_repository/odoo-18-tom-2-0/.venv/bin/activate
arch
echo "using venv= $(which python)"
echo "using pip= $(which pip)"
pip list


/Users/gfr/Documents/odoo_repository/odoo-18/odoo-bin -c /Users/gfr/Documents/odoo_repository/odoo-18-tom-2-0/odoo.conf \
-d localhost_18 --log-level debug --load-language de_DE \
--stop-after-init \
-i partner_firstname,partner_country_lang,account_usability,account_fiscal_year,account_move_name_sequence,account_banking_mandate,account_banking_mandate_contact,account_banking_mandate_sale,account_banking_pain_base,account_banking_sepa_credit_transfer,account_banking_sepa_direct_debit,account_payment_mode,account_payment_order,account_payment_order_grouped_output,account_payment_order_notification,account_payment_partner,account_payment_purchase,account_payment_purchase_stock,account_payment_sale,account_vendor_bank_account_defaultv,account_vendor_bank_account_default_purchasev,account_in_payment,account_move_base_import,account_move_reconcile_forbid_cancel,account_partner_reconcile,account_reconcile_model_oca,account_reconcile_oca,account_statement_base,base_transaction_id,document_url,web_chatter_position,web_dialog_size,web_no_bubble,web_remember_tree_column_width,purchase_mass_mail,mai,mail_template_substitute
