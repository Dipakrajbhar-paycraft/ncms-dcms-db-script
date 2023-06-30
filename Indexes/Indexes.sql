CREATE UNIQUE INDEX cons_ext_card_ref_number ON cms_card_detail_extention USING btree (card_ref_no);

CREATE UNIQUE INDEX cs_config_dr_cr_indicator_pkey ON cs_config_dr_cr_indicator USING btree (id);

CREATE UNIQUE INDEX instrumenet_master_pk ON instrument_master USING btree (instrument_id);

CREATE UNIQUE INDEX cms_hsm_pin_key_config_pk ON cms_hsm_pin_key_config USING btree (id);

CREATE UNIQUE INDEX mkchr_wallet_profile_pk ON mkchr_wallet_profile USING btree (wallet_profile_id);

CREATE UNIQUE INDEX pk_ug ON user_group USING btree (id);

CREATE UNIQUE INDEX sys_c0079756 ON cms_otp_audit USING btree (otp);

CREATE UNIQUE INDEX prd_topup_template_pk ON prd_topup_template USING btree (id);

CREATE UNIQUE INDEX pk_prd_usage_template_id ON prd_usage_template USING btree (id);

CREATE UNIQUE INDEX prd_txn_template_id_key ON prd_txn_template USING btree (id);

CREATE UNIQUE INDEX cons_uk_mkchr_bin_prd_uk ON mkchr_bin_profile USING btree (bin, product_id);

CREATE UNIQUE INDEX prd_bin_mkchr_pkey ON mkchr_bin_profile USING btree (id);

CREATE UNIQUE INDEX cons_waiver_pk ON pcs_fee_waiver USING btree (fee_id);

CREATE INDEX indx_digi_release_flag ON digital_txn_authorization_queue USING btree (release_flag);

CREATE UNIQUE INDEX pk_prd_merchant_profile_id ON prd_merchant_profile USING btree (id);

CREATE UNIQUE INDEX cms_wallet_channel_mapping_pkey ON cms_wallet_channel_mapping USING btree (wallet_type);

CREATE UNIQUE INDEX sys_c0079704 ON service USING btree (service_id);

CREATE UNIQUE INDEX card_status_change_pk ON card_status_change USING btree (id);

CREATE INDEX indx_card_status_crn ON card_status_change USING btree (card_ref_number);

CREATE INDEX indx_card_status_send ON card_status_change USING btree (is_send);

CREATE UNIQUE INDEX cms_card_generation_sequen_pk ON cms_card_generation_sequence USING btree (id);

CREATE UNIQUE INDEX pk_users ON user_master USING btree (id);

CREATE UNIQUE INDEX cons_mkchr_virtual_to_phy_id_pk ON mkchr_virtual_to_physical_prd USING btree (id);

CREATE UNIQUE INDEX cons_mkchr_virtual_to_phy_pro_id_uk ON mkchr_virtual_to_physical_prd USING btree (physical_product_id);

CREATE UNIQUE INDEX cons_mkchr_virtual_to_phy_v_pro_uk ON mkchr_virtual_to_physical_prd USING btree (virtual_product_id);

CREATE INDEX indx_cs_fee_issuer_temp_card ON cs_fee_issuer_temp USING btree (card_number);

CREATE UNIQUE INDEX cms_issuer_config_ext_pk ON cms_issuer_config_extention USING btree (issuer_id);

CREATE UNIQUE INDEX card_detail_pk ON card_detail USING btree (id);

CREATE UNIQUE INDEX card_detail_uk1 ON card_detail USING btree (card_ref_number);

CREATE INDEX indx_card_detail_hash ON card_detail USING btree (hash_card_number);

CREATE INDEX indx_card_detail_mobile_no ON card_detail USING btree (mobile_no);

CREATE UNIQUE INDEX prd_bin_template_profile_pkey ON prd_bin_template USING btree (id);

CREATE UNIQUE INDEX cons_pk_cust_seq_id ON cms_cust_details USING btree (cust_seq_id);

CREATE UNIQUE INDEX cons_uniq_emploee_id ON cms_cust_details USING btree (employee_id);

CREATE UNIQUE INDEX cms_web_service_master_pk ON cms_web_service_master USING btree (service_id);

CREATE INDEX indx_cs_fee_temp_card ON cs_fee_temp USING btree (card_number);

CREATE UNIQUE INDEX cs_fee_issuer_pkey ON cs_fee_issuer USING btree (transaction_id);

CREATE UNIQUE INDEX cs_fee_issuer_unique_txn_id_key ON cs_fee_issuer USING btree (unique_txn_id);

CREATE INDEX indx_cs_fee_issuer_card ON cs_fee_issuer USING btree (card_number);

CREATE INDEX indx_cs_fee_card ON cs_fee USING btree (card_number);

CREATE UNIQUE INDEX sys_c0079749 ON cs_fee USING btree (transaction_id);

CREATE UNIQUE INDEX sys_c0079755 ON cs_fee USING btree (unique_txn_id);

CREATE UNIQUE INDEX mkchr_wallet_profile_mapping_pk ON mkchr_wallet_profile_mapping USING btree (wallet_profile_id, wallet_id, priority_order);

CREATE UNIQUE INDEX pk_prd_fee_profile_id ON prd_fee_profile USING btree (id);

CREATE UNIQUE INDEX prd_embossing_mode_master_pkey ON prd_embossing_mode_master USING btree (id);

CREATE UNIQUE INDEX partner_pkey ON partner USING btree (id);

CREATE INDEX aswt_auth_f002 ON aswt_switch_txn_authrization USING btree (f002);

CREATE UNIQUE INDEX cons_comp_src_mode ON cs_config_txn_scenario USING btree (txn_type_id, txn_source_id, txn_payment_mode_id, id);

CREATE UNIQUE INDEX cs_config_txn_type_pkey ON cs_config_txn_type USING btree (id);

CREATE UNIQUE INDEX sys_c0079784 ON card_procurement_master USING btree (id);

CREATE UNIQUE INDEX sys_c0079679 ON vendor_details USING btree (id);

CREATE UNIQUE INDEX card_activity_process_log_pk ON card_activity_process_log USING btree (id);

CREATE UNIQUE INDEX prd_network_scheme_master_pkey ON prd_network_scheme_master USING btree (id);

CREATE UNIQUE INDEX pk_prd_txn_profile_id1 ON cms_card_txn_config USING btree (id);

CREATE UNIQUE INDEX sub_transaction_type_id_key ON sub_transaction_type USING btree (id);

CREATE UNIQUE INDEX sub_transaction_type_pkey ON sub_transaction_type USING btree (txn_type, sub_txn_type);

CREATE UNIQUE INDEX cms_customer_limit_pkey ON cms_customer_limit USING btree (id);

CREATE UNIQUE INDEX sys_c0079811 ON transaction_balance USING btree (txn_id);

CREATE UNIQUE INDEX cons_topup_mkr_pk ON mkchr_topup_profile USING btree (id);

CREATE UNIQUE INDEX wallet_master_pk ON wallet_master USING btree (wallet_id);

CREATE UNIQUE INDEX cms_wallet_channle_pkey ON cms_wallet_channel_limit USING btree (id);

CREATE INDEX indx_wallet_cust ON cms_wallet_channel_limit USING btree (cust_seq_id);

CREATE UNIQUE INDEX indx_wallet_txn_mode ON cms_wallet_channel_limit USING btree (wallet_id, txn_mode, cust_seq_id);

CREATE UNIQUE INDEX sys_c0079808 ON cms_event_actions USING btree (id);

CREATE UNIQUE INDEX comp_acc_entry ON cs_config_account_entry USING btree (program_id, scenario_id);

CREATE UNIQUE INDEX cons_pk_corp_id ON corporate USING btree (id);

CREATE INDEX indx_bin_sub_bin_master ON cms_card_generation_master USING btree (bin, sub_bin, status);

CREATE UNIQUE INDEX cms_wallet_type_master_pkey ON cms_wallet_type_master USING btree (wallet_type);

CREATE UNIQUE INDEX mcc_groups_pk ON mcc_groups USING btree (mcc_grp_id);

CREATE UNIQUE INDEX prd_pin_generation_master_pkey ON prd_pin_generation_master USING btree (id);

CREATE UNIQUE INDEX pk_zone ON zone USING btree (id);

CREATE UNIQUE INDEX cms_issuer_config_pk ON cms_issuer_config USING btree (id);

CREATE UNIQUE INDEX cons_unikey ON cms_issuer_config USING btree (issuer_id);

CREATE UNIQUE INDEX cons_cms_outlet_pk ON cms_outlet USING btree (outlet_id);

CREATE UNIQUE INDEX wallet_profile_mapping_pk ON wallet_profile_mapping USING btree (wallet_profile_id, wallet_id, priority_order);

CREATE UNIQUE INDEX sys_c0011350 ON cms_black_list_data USING btree (serial_no);

CREATE UNIQUE INDEX sys_c0079774 ON cms_black_list_data USING btree (serial_no);

CREATE UNIQUE INDEX mcc_grp_template_pk ON mcc_groups_template USING btree (mcc_grp_id);

CREATE UNIQUE INDEX cms_product_pk ON cms_product USING btree (id);

CREATE UNIQUE INDEX prd_fee_profile_extension_pkey ON prd_fee_profile_extension USING btree (fee_id);

CREATE UNIQUE INDEX pk_page ON page_master USING btree (id);

CREATE UNIQUE INDEX mkchr_mcc_groups_pk ON mkchr_mcc_groups USING btree (mcc_grp_id);

CREATE UNIQUE INDEX prd_txn_master_id_key ON prd_txn_master USING btree (id);

CREATE UNIQUE INDEX prd_txn_master_pkey ON prd_txn_master USING btree (txn_type);

CREATE UNIQUE INDEX cons_inst_pk ON institution USING btree (id);

CREATE UNIQUE INDEX cons_pk_txn_type_id ON transaction_type USING btree (id);

CREATE UNIQUE INDEX transaction_type_unq ON transaction_type USING btree (txn_type);

CREATE UNIQUE INDEX uk_hsm_bin ON cms_hsmkey_configuration USING btree (bin);

CREATE UNIQUE INDEX cons_issuer_pk ON issuer USING btree (id);

CREATE UNIQUE INDEX cons_pk_bin_sub_bin ON prd_sub_bin USING btree (bin, sub_bin);

CREATE UNIQUE INDEX pk_mcc ON aswt_mcc_check USING btree (mcc);

CREATE UNIQUE INDEX cons_unique_key ON cms_bin_salt_config USING btree (id);

CREATE UNIQUE INDEX mkchr_product_pk ON mkchr_cms_product USING btree (id);

CREATE UNIQUE INDEX comp_narration1 ON cs_config_narration_details USING btree (scenario_id, program_id);

CREATE UNIQUE INDEX currency_code_pk ON currency_code USING btree (id);

CREATE UNIQUE INDEX cons_pk_mer_intemp_id ON cs_mercury_intemp USING btree (id);

CREATE UNIQUE INDEX cms_tax_master_pkey ON cms_tax_master USING btree (id);

CREATE UNIQUE INDEX pk_mkchr_fee_template_id ON mkchr_fee_template USING btree (id);

CREATE UNIQUE INDEX outlet_user_master_pk ON outlet_user_master USING btree (id);

CREATE UNIQUE INDEX exte_cif_id_benefi ON cms_cust_details_extension USING btree (cif_id, beneficiryaccountno);

CREATE UNIQUE INDEX cms_customer_authenticate_pkey ON cms_customer_authenticate USING btree (id);

CREATE UNIQUE INDEX prd_topup_profile_pk ON prd_topup_profile USING btree (id);

CREATE UNIQUE INDEX cms_card_generation_sequence_hist_pkey ON cms_card_generation_sequence_hist USING btree (id);

CREATE UNIQUE INDEX cons_mkchr_outlet_pk ON mkchr_cms_outlet USING btree (outlet_id);

CREATE UNIQUE INDEX cons_group_id ON pcs_fee_waiver_group_config USING btree (group_id);

CREATE UNIQUE INDEX unq_channel_service_csl ON cms_channel_service_link USING btree (channel_id, service_id);

CREATE UNIQUE INDEX prd_wallet_profile_pk ON prd_wallet_profile USING btree (wallet_profile_id);

CREATE UNIQUE INDEX pk_prd_usage_profile_id ON prd_usage_profile USING btree (id);

CREATE UNIQUE INDEX prd_interface_master_pkey ON prd_interface_master USING btree (id);

CREATE UNIQUE INDEX password_policy_pk ON password_policy USING btree (id);

CREATE UNIQUE INDEX cons_unique_image_name ON prd_card_image_master USING btree (image_name);

CREATE UNIQUE INDEX prd_card_image_master_pkey ON prd_card_image_master USING btree (image_code);

CREATE UNIQUE INDEX pk_emcossa_format_id ON cms_embossing_format USING btree (id);

CREATE UNIQUE INDEX sys_c00147536 ON prd_threshold_limit USING btree (id);

CREATE UNIQUE INDEX country_master_pk ON country_master USING btree (id);

CREATE INDEX indx_log_date ON processlog USING btree (trunc(entry_date));

CREATE UNIQUE INDEX prd_txn_mkchr_pkey ON mkchr_txn_profile USING btree (id);

CREATE UNIQUE INDEX uk_subtype_product_mkr ON mkchr_txn_profile USING btree (sub_txn_type, product_id);

CREATE UNIQUE INDEX prd_network_bin_type_master_pkey ON prd_network_bin_type_master USING btree (id);

CREATE UNIQUE INDEX pcs_adj_pk ON cs_manual_adjustment USING btree (seq_id);

CREATE UNIQUE INDEX prd_card_activation_master_pkey ON prd_card_activation_master USING btree (id);

CREATE UNIQUE INDEX cons_uk_bin_prd ON prd_bin_profile USING btree (bin, product_id);

CREATE UNIQUE INDEX prd_bin_profile_pkey ON prd_bin_profile USING btree (id);

CREATE UNIQUE INDEX prd_txn_profile_pkey ON prd_txn_profile USING btree (id);

CREATE UNIQUE INDEX uk_subtype_product ON prd_txn_profile USING btree (sub_txn_type, product_id);

CREATE UNIQUE INDEX password_history_pk ON password_history USING btree (id);

CREATE UNIQUE INDEX cs_config_file_name_convention_pkey ON cs_config_file_name_convention USING btree (id);

CREATE UNIQUE INDEX sys_c0079768 ON configuration_ui USING btree (id);

CREATE UNIQUE INDEX cms_events_master_pkey ON cms_events_master USING btree (event_id);

CREATE UNIQUE INDEX pk_prd_customer_template_id ON prd_customer_template USING btree (id);

CREATE UNIQUE INDEX sys_c0079785 ON card_type USING btree (id);

CREATE UNIQUE INDEX cms_mo_card_request_pk ON cms_mo_card_request USING btree (id);

CREATE UNIQUE INDEX cons_unique_composite ON prd_vendor_master USING btree (vendor_name, network_scheme);

CREATE UNIQUE INDEX cons_vendor_id_pk ON prd_vendor_master USING btree (vendor_id);

CREATE UNIQUE INDEX account_details_account_id_key ON account_details USING btree (account_id);

CREATE UNIQUE INDEX cons_balance_template_id_pk ON prd_balance_template USING btree (id);

CREATE UNIQUE INDEX cms_emd_enquiry_pkey ON cms_emd_enquiry USING btree (id);

CREATE UNIQUE INDEX cms_contact_center_dtl_pkey ON cms_contact_center_dtl USING btree (id);

CREATE UNIQUE INDEX cs_config_payment_mode_pkey ON cs_config_payment_mode USING btree (id);

CREATE UNIQUE INDEX alert_engine_process_log_pkey ON alert_engine_process_log USING btree (id);

CREATE UNIQUE INDEX sys_c0011358 ON cms_otp_details USING btree (id);

CREATE UNIQUE INDEX sys_c0079757 ON cms_otp_details USING btree (id);

CREATE UNIQUE INDEX mcc_master_pk ON mcc_master USING btree (mcc_code);

CREATE UNIQUE INDEX cons_pk_acdrcr ON cs_config_dr_cr_code_entry USING btree (program_id, account_code, dr_cr_ind);

CREATE INDEX indx_cs_fee_queue_card ON cs_fee_queue USING btree (card_number);

CREATE UNIQUE INDEX cons_pk_mer_in_id ON cs_mercury_in USING btree (id);

CREATE INDEX ind_cust_attempt_mob ON cms_cust_attempt_details USING btree (mobile_no);

CREATE INDEX ind_cust_id_otp ON cms_cust_attempt_details USING btree (cust_seq_id);

CREATE UNIQUE INDEX sys_c00147534 ON prd_outlet_threshold_limit USING btree (id);

CREATE UNIQUE INDEX pk_roles ON role USING btree (id);

CREATE UNIQUE INDEX cons_balance_profile_id_pk ON prd_balance_profile USING btree (id);

CREATE UNIQUE INDEX cms_outlet_card_request_pk ON cms_outlet_card_request USING btree (id);

CREATE INDEX indx_hash_card_number ON card_balance_eod_history USING btree (hash_card_number);

CREATE UNIQUE INDEX cms_mo_limit_details_pk ON cms_mo_limit_details USING btree (id);

CREATE UNIQUE INDEX const_ibcm_pk ON inventory_blank_card_manager USING btree (id);

CREATE UNIQUE INDEX pk_prd_customer_profile_id ON prd_customer_profile USING btree (id);

CREATE UNIQUE INDEX pk_prd_fee_template_id ON prd_fee_template USING btree (id);

CREATE UNIQUE INDEX pk_prd_txn_template_id ON prd_txn_limit_template USING btree (id);

CREATE UNIQUE INDEX prd_card_type_master_pkey ON prd_card_type_master USING btree (id);

CREATE UNIQUE INDEX cust_tem_cif_id_benefi ON temp_cust_detail USING btree (cif_id, beneficiryaccountno);

CREATE UNIQUE INDEX comp_acc_detail ON cs_config_account_details USING btree (program_id, account_code);

CREATE UNIQUE INDEX pk_prd_txn_profile_id ON prd_txn_limit_profile USING btree (id);

CREATE INDEX indx_digital_txn_hash ON digital_txn_authorization USING btree (card_enc);

CREATE INDEX indx_digital_txn_txn_type ON digital_txn_authorization USING btree (txn_type);

CREATE UNIQUE INDEX sys_c0079754 ON digital_txn_authorization USING btree (id);

CREATE UNIQUE INDEX old_card_number_unique ON old_to_new_card_migration USING btree (old_card_number);

CREATE UNIQUE INDEX sys_c0079738 ON inventory_manager USING btree (id);

CREATE UNIQUE INDEX cms_channels_master_pk ON cms_channels_master USING btree (id);

CREATE UNIQUE INDEX mcc_group_mapping_pk ON mcc_group_mapping USING btree (mcc_grp_id, mcc_code);

CREATE UNIQUE INDEX pk_mkchr_txn_limit_id ON mkchr_txn_limit_profile USING btree (id);

CREATE UNIQUE INDEX mkchr_wallet_master_pk ON mkchr_wallet_master USING btree (wallet_id);

CREATE UNIQUE INDEX pk_branch ON branch USING btree (id);

CREATE UNIQUE INDEX web_response_interface_service_request_id_key ON web_response_interface USING btree (service_request_id);

CREATE UNIQUE INDEX cs_config_txn_source_pkey ON cs_config_txn_source USING btree (id);

