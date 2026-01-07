# Copyright Gammadata GmbH. All Rights Reserved.
# SPDX-License-Identifier: APACHE-2.0

ARG ODOO_18_BASE_IMAGE=ghcr.io/mikrowerk/odoo-18-official-image:ba4310c

FROM ${ODOO_18_BASE_IMAGE}

ARG ADDON_PATH="/mnt/extra-addons"

# copy OCA add-ons
COPY oca-account-financial-tools ${ADDON_PATH}
COPY oca-account-reconcile ${ADDON_PATH}
COPY oca-bank-payment ${ADDON_PATH}
COPY oca-credit-control ${ADDON_PATH}
COPY oca-partner-contact ${ADDON_PATH}
COPY oca_knowledge/document_url ${ADDON_PATH}/document_url
COPY oca_web/web_remember_tree_column_width ${ADDON_PATH}/web_remember_tree_column_width
COPY oca_web/web_no_bubble ${ADDON_PATH}/web_no_bubble
COPY oca_web/web_save_discard_button ${ADDON_PATH}/web_save_discard_button
COPY oca_web/web_chatter_position ${ADDON_PATH}/web_chatter_position
COPY oca_web/web_dialog_size ${ADDON_PATH}/web_dialog_size
#COPY oca-purchase-workflow/purchase_mass_mail ${ADDON_PATH}/purchase_mass_mail
#COPY oca-social/mail_template_substitute ${ADDON_PATH}/mail_template_substitute
COPY oca-mail/mail_debrand ${ADDON_PATH}/mail_debrand
COPY oca-mail/mail_inline_css ${ADDON_PATH}/mail_inline_css
COPY oca-mail/mail_layout_preview ${ADDON_PATH}/mail_layout_preview
COPY oca-mail/mail_optional_autofollow ${ADDON_PATH}/mail_optional_autofollow
# copy third party addons
COPY odoo-tom-third-party-addons/copy_section_with_products ${ADDON_PATH}/copy_section_with_products
COPY odoo-tom-third-party-addons/section_wise_subtotal ${ADDON_PATH}/section_wise_subtotal
# copy Mikrowerk addons
COPY odoo-tom-jobcontrol/mikrowerk_account_payment ${ADDON_PATH}/mikrowerk_account_payment
COPY odoo-tom-jobcontrol/mikrowerk_edi_documents ${ADDON_PATH}/mikrowerk_edi_documents
# COPY odoo-tom-jobcontrol/mikrowerk_email_processing ${ADDON_PATH}/mikrowerk_email_processing
COPY odoo-tom-jobcontrol/mikrowerk_eventmanagement ${ADDON_PATH}/mikrowerk_eventmanagement
COPY odoo-tom-jobcontrol/mikrowerk_odoo_bundle ${ADDON_PATH}/mikrowerk_odoo_bundle
COPY odoo-tom-jobcontrol/mikrowerk_project_admin ${ADDON_PATH}/mikrowerk_project_admin
COPY odoo-tom-jobcontrol/mikrowerk_third_party_bundle ${ADDON_PATH}/mikrowerk_third_party_bundle
COPY odoo-tom-jobcontrol/mikrowerk_tom_din5008_forms ${ADDON_PATH}/mikrowerk_tom_din5008_forms
COPY odoo-tom-jobcontrol/mikrowerk_tom_import ${ADDON_PATH}/mikrowerk_tom_import
COPY odoo-tom-jobcontrol/mikrowerk_tomagency_bundle ${ADDON_PATH}/mikrowerk_tomagency_bundle
COPY odoo-tom-jobcontrol/oca_accounting_payment_bundle ${ADDON_PATH}/oca_accounting_payment_bundle


RUN echo "------------- python module lib after install --------------" && \
    pip3 list








