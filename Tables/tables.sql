-- account_details definition

-- Drop table

-- DROP TABLE account_details;

CREATE TABLE account_details (
	account_id numeric NOT NULL,
	account_number varchar(20) NOT NULL,
	cust_seq_id varchar(20) NULL,
	wallet_id numeric NOT NULL DEFAULT 0,
	previous_balance numeric NULL DEFAULT 0,
	available_balance numeric NULL DEFAULT 0,
	hold_balance numeric NULL DEFAULT 0,
	current_balance numeric NULL DEFAULT 0,
	account_status varchar(1) NULL DEFAULT 'A'::character varying,
	product_id numeric NULL,
	issuer_id numeric NULL,
	created_date timestamp NULL,
	created_by numeric NULL,
	updated_date timestamp NULL,
	updated_by numeric NULL,
	batch_no varchar(20) NULL,
	wallet_identifier varchar(20) NOT NULL DEFAULT '0'::character varying,
	is_wallet_block varchar(6) NULL DEFAULT 'N'::character varying,
	wallet_block_unblock_reason varchar(50) NULL,
	CONSTRAINT account_details_account_id_key UNIQUE (account_id)
);


-- account_details_history definition

-- Drop table

-- DROP TABLE account_details_history;

CREATE TABLE account_details_history (
	account_id numeric NULL,
	account_number varchar(20) NULL,
	host_balance float8 NULL,
	card_offline_balance float8 NULL,
	product_id numeric NULL,
	issuer_id numeric NULL,
	branch_id numeric NULL,
	balance_sharing varchar(20) NULL,
	created_date timestamp NULL,
	created_by numeric NULL,
	updated_date timestamp NULL,
	updated_by numeric NULL,
	soft_delete varchar(20) NULL,
	batch_no varchar(20) NULL,
	cust_seq_id varchar(20) NULL,
	balance numeric NULL,
	"LIMIT" numeric NULL,
	account_status varchar(1) NULL,
	id numeric NULL,
	hold_balance varchar(100) NULL DEFAULT 0,
	previous_balance numeric NULL DEFAULT 0,
	available_balance numeric NULL DEFAULT 0,
	current_balance numeric NULL DEFAULT 0
);


-- action_on_card definition

-- Drop table

-- DROP TABLE action_on_card;

CREATE TABLE action_on_card (
	card_ref_no varchar(20) NULL,
	status varchar(5) NULL,
	action_date timestamp NULL,
	action_type varchar(500) NULL,
	prepaid_account_number varchar(20) NULL,
	action_flag varchar(4) NULL,
	"source" varchar(500) NULL,
	reason_code varchar(255) NULL
);


-- alert_engine definition

-- Drop table

-- DROP TABLE alert_engine;

CREATE TABLE alert_engine (
	action_id varchar(20) NULL,
	action_name varchar(50) NULL,
	alert_type varchar(30) NULL,
	display_msg varchar(1000) NULL,
	subject varchar(500) NULL,
	send_flag varchar(1) NULL,
	place_holder_fetch_query varchar(4000) NULL,
	institution_id numeric NULL,
	mail_config_id numeric(4) NULL,
	issuerid numeric(10) NULL,
	productid numeric(10) NULL,
	adhoc_queries varchar(4000) NULL,
	template_id varchar(50) NULL
);


-- alert_engine_old definition

-- Drop table

-- DROP TABLE alert_engine_old;

CREATE TABLE alert_engine_old (
	action_id varchar(20) NULL,
	action_name varchar(50) NULL,
	alert_type varchar(30) NULL,
	display_msg varchar(1000) NULL,
	subject varchar(500) NULL,
	send_flag varchar(1) NULL,
	place_holder_fetch_query varchar(4000) NULL,
	institution_id numeric NULL,
	mail_config_id numeric(4) NULL,
	issuerid numeric(10) NULL,
	productid numeric(10) NULL,
	adhoc_queries varchar(4000) NULL,
	template_id varchar(50) NULL
);


-- alert_engine_process_log definition

-- Drop table

-- DROP TABLE alert_engine_process_log;

CREATE TABLE alert_engine_process_log (
	request_id varchar(20) NULL,
	alert_type varchar(30) NULL,
	status varchar(1000) NULL,
	sender_detail sys."clob" NULL,
	cc_list sys."clob" NULL,
	send_msg varchar(1000) NULL,
	subject varchar(500) NULL,
	file_name varchar(100) NULL,
	file_path varchar(200) NULL,
	action_id varchar(20) NULL,
	action_name varchar(50) NULL,
	send_date timestamp NULL,
	is_send varchar(20) NULL,
	error varchar(1000) NULL,
	bcc_list sys."clob" NULL,
	id numeric NOT NULL DEFAULT nextval('alert_log_seq'::regclass),
	CONSTRAINT alert_engine_process_log_pkey PRIMARY KEY (id)
);


-- alert_engine_sch definition

-- Drop table

-- DROP TABLE alert_engine_sch;

CREATE TABLE alert_engine_sch (
	action_id varchar(20) NULL,
	action_name varchar(50) NULL,
	alert_type varchar(30) NULL,
	display_msg varchar(1000) NULL,
	subject varchar(500) NULL,
	send_flag varchar(1) NULL,
	place_holder_fetch_query varchar(4000) NULL,
	institution_id numeric NULL,
	mail_config_id numeric(4) NULL,
	issuer_id numeric(10) NULL,
	product_id numeric(10) NULL,
	adhoc_queries varchar(4000) NULL,
	template_id varchar(50) NULL
);


-- aswt_error_code definition

-- Drop table

-- DROP TABLE aswt_error_code;

CREATE TABLE aswt_error_code (
	response_code varchar(20) NULL,
	response_reason varchar(80) NULL
);


-- aswt_mcc_check definition

-- Drop table

-- DROP TABLE aswt_mcc_check;

CREATE TABLE aswt_mcc_check (
	mcc varchar(256) NOT NULL,
	status varchar(3) NULL,
	updated_by varchar(16) NULL,
	updated_date timestamp NULL,
	description varchar(256) NULL,
	CONSTRAINT pk_mcc PRIMARY KEY (mcc)
);


-- aswt_mcc_tolerance_limit definition

-- Drop table

-- DROP TABLE aswt_mcc_tolerance_limit;

CREATE TABLE aswt_mcc_tolerance_limit (
	program_id numeric NULL,
	rule_id numeric NULL,
	mcc varchar(256) NULL,
	lower_slab numeric NULL,
	upper_slab numeric NULL,
	rate_type varchar(10) NULL,
	tolerance_limit numeric NULL,
	applicable_date timestamp NULL,
	expiry_date timestamp NULL,
	user_id varchar(100) NULL,
	status varchar(3) NULL
);


-- aswt_raw_decline_queue definition

-- Drop table

-- DROP TABLE aswt_raw_decline_queue;

CREATE TABLE aswt_raw_decline_queue (
	settle_flag varchar(1) NULL,
	txn_issuer varchar(4) NULL,
	txn_fwd_inst_1 varchar(12) NULL,
	txn_fwd_inst_2 varchar(12) NULL,
	txn_auth_source varchar(4) NULL,
	txn_channel varchar(4) NULL,
	txn_type varchar(8) NULL,
	txn_code varchar(4) NULL,
	txn_date varchar(20) NULL,
	txn_time varchar(12) NULL,
	fp_masked varchar(50) NULL,
	fp_type varchar(6) NULL,
	int_mti varchar(4) NULL,
	int_ref_no varchar(32) NULL,
	txn_batch_no varchar(6) NULL,
	txn_batch_status varchar(9) NULL,
	drcr varchar(2) NULL,
	fp_form_factor varchar(4) NULL,
	int_seq_no varchar(12) NULL,
	int_rc varchar(8) NULL,
	scheme varchar(4) NULL,
	int_rrn varchar(12) NULL,
	int_proc_code varchar(6) NULL,
	int_amt varchar(12) NULL,
	int_adj_amt1 varchar(12) NULL,
	int_adj_amt2 varchar(12) NULL,
	int_txn_fees1 varchar(12) NULL,
	int_txn_fees2 varchar(12) NULL,
	int_pos_entry_mode varchar(12) NULL,
	int_void_flag varchar(2) NULL,
	mti varchar(4) NULL,
	f002 varchar(64) NULL,
	f003 varchar(6) NULL,
	f004 varchar(12) NULL,
	f005 varchar(12) NULL,
	f006 varchar(12) NULL,
	f007 varchar(10) NULL,
	f008 varchar(99) NULL,
	f009 varchar(99) NULL,
	f010 varchar(99) NULL,
	f011 varchar(11) NULL,
	f012 varchar(6) NULL,
	f013 varchar(4) NULL,
	f014 varchar(4) NULL,
	f015 varchar(6) NULL,
	f016 varchar(6) NULL,
	f017 varchar(6) NULL,
	f018 varchar(4) NULL,
	f019 varchar(6) NULL,
	f020 varchar(6) NULL,
	f021 varchar(6) NULL,
	f022 varchar(12) NULL,
	f023 varchar(6) NULL,
	f024 varchar(6) NULL,
	f025 varchar(4) NULL,
	f026 varchar(6) NULL,
	f027 varchar(4) NULL,
	f028 varchar(10) NULL,
	f029 varchar(10) NULL,
	f030 varchar(10) NULL,
	f031 varchar(10) NULL,
	f032 varchar(12) NULL,
	f033 varchar(12) NULL,
	f034 varchar(60) NULL,
	f035 varchar(100) NULL,
	f036 varchar(200) NULL,
	f037 varchar(12) NULL,
	f038 varchar(6) NULL,
	f039 varchar(3) NULL,
	f040 varchar(10) NULL,
	f041 varchar(16) NULL,
	f042 varchar(15) NULL,
	f043 varchar(40) NULL,
	f044 varchar(200) NULL,
	f045 varchar(100) NULL,
	f046 varchar(300) NULL,
	f047 varchar(300) NULL,
	f048 varchar(500) NULL,
	f049 varchar(4) NULL,
	f050 varchar(4) NULL,
	f051 varchar(4) NULL,
	f052 varchar(64) NULL,
	f053 varchar(64) NULL,
	f054 varchar(200) NULL,
	f055 varchar(550) NULL,
	f056 varchar(500) NULL,
	f057 varchar(500) NULL,
	f058 varchar(500) NULL,
	f059 varchar(500) NULL,
	f060 varchar(500) NULL,
	f061 varchar(500) NULL,
	f062 varchar(500) NULL,
	f063 varchar(500) NULL,
	f064 varchar(200) NULL,
	f065 varchar(200) NULL,
	f066 varchar(10) NULL,
	f067 varchar(200) NULL,
	f068 varchar(200) NULL,
	f069 varchar(200) NULL,
	f070 varchar(200) NULL,
	f071 varchar(200) NULL,
	f072 varchar(200) NULL,
	f073 varchar(200) NULL,
	f074 varchar(200) NULL,
	f075 varchar(200) NULL,
	f076 varchar(200) NULL,
	f077 varchar(200) NULL,
	f078 varchar(200) NULL,
	f079 varchar(200) NULL,
	f080 varchar(200) NULL,
	f081 varchar(200) NULL,
	f082 varchar(200) NULL,
	f083 varchar(200) NULL,
	f084 varchar(200) NULL,
	f085 varchar(200) NULL,
	f086 varchar(200) NULL,
	f087 varchar(200) NULL,
	f088 varchar(200) NULL,
	f089 varchar(200) NULL,
	f090 varchar(200) NULL,
	f091 varchar(200) NULL,
	f092 varchar(200) NULL,
	f093 varchar(200) NULL,
	f094 varchar(200) NULL,
	f095 varchar(200) NULL,
	f096 varchar(200) NULL,
	f097 varchar(200) NULL,
	f098 varchar(200) NULL,
	f099 varchar(200) NULL,
	f100 varchar(200) NULL,
	f101 varchar(200) NULL,
	f102 varchar(200) NULL,
	f103 varchar(200) NULL,
	f104 varchar(700) NULL,
	f105 varchar(200) NULL,
	f106 varchar(200) NULL,
	f107 varchar(200) NULL,
	f108 varchar(200) NULL,
	f109 varchar(200) NULL,
	f110 varchar(200) NULL,
	f111 varchar(200) NULL,
	f112 varchar(200) NULL,
	f113 varchar(200) NULL,
	f114 varchar(200) NULL,
	f115 varchar(200) NULL,
	f116 varchar(200) NULL,
	f117 varchar(200) NULL,
	f118 varchar(200) NULL,
	f119 varchar(200) NULL,
	f120 varchar(600) NULL,
	f121 varchar(200) NULL,
	f122 varchar(200) NULL,
	f123 varchar(200) NULL,
	f124 varchar(500) NULL,
	f125 varchar(500) NULL,
	f126 varchar(200) NULL,
	f127 varchar(400) NULL,
	f128 varchar(200) NULL,
	reversal_flag varchar(8) NULL,
	txn_acquirer varchar(20) NULL,
	sys_txn_date timestamp NULL,
	program_id varchar(50) NULL,
	bank_id varchar(50) NULL,
	settle_date timestamp NULL,
	balance_update_flag varchar(3) NULL,
	balance_update_date timestamp NULL,
	sub_batch_no numeric NULL,
	acc_flag varchar(1) NULL,
	batch_no varchar(20) NULL,
	batch_upload_flag varchar(2) NULL,
	cs_id varchar(20) NULL,
	atc varchar(4) NULL,
	batch_upload_date timestamp NULL,
	subbatch_settle_flag varchar(1) NULL,
	subbatch_settle_date timestamp NULL,
	bal_update_flag_ruk varchar(3) NULL,
	bal_update_date_ruk timestamp NULL,
	ticket_id varchar(40) NULL,
	manual_settle_flag varchar(10) NULL,
	manual_settle_date timestamp NULL,
	unique_txn_id varchar(50) NULL,
	cs_process_id varchar(50) NULL,
	server_code numeric NULL,
	stationname varchar(100) NULL,
	stationid varchar(100) NULL,
	transacdesc varchar(100) NULL,
	trml_date timestamp NULL,
	total_bal numeric NULL,
	host_bal numeric NULL,
	shadow_bal numeric NULL,
	process_id varchar(200) NULL,
	insert_date timestamp NULL,
	fund_source varchar(5) NULL,
	int_txn_type varchar(20) NULL
);


-- aswt_replaced_card_reversal definition

-- Drop table

-- DROP TABLE aswt_replaced_card_reversal;

CREATE TABLE aswt_replaced_card_reversal (
	f002 varchar(64) NULL,
	f004 varchar(12) NULL,
	f012 varchar(6) NULL,
	f013 varchar(4) NULL,
	f037 varchar(12) NULL,
	f041 varchar(16) NULL,
	f042 varchar(15) NULL,
	f038 varchar(6) NULL,
	drcr varchar(2) NULL,
	f039 varchar(3) NULL,
	settle_flag varchar(1) NULL,
	sys_txn_date timestamp NULL,
	old_f002 varchar(64) NULL,
	mti varchar(4) NULL,
	txn_type varchar(8) NULL,
	sub_txn_type varchar(6) NULL,
	process_id varchar(200) NULL,
	action_flag varchar(1) NULL,
	action_by varchar(50) NULL,
	action_date timestamp NULL,
	is_reverse varchar(1) NULL,
	is_reverse_date timestamp NULL,
	txn_date varchar(20) NULL,
	trml_date timestamp NULL,
	new_f002 varchar(64) NULL,
	fund_source varchar(5) NULL,
	int_txn_type varchar(20) NULL
);


-- aswt_reversal_reason_code definition

-- Drop table

-- DROP TABLE aswt_reversal_reason_code;

CREATE TABLE aswt_reversal_reason_code (
	reason_code varchar(4) NULL,
	reason_msg varchar(20) NULL,
	reason_abbr varchar(4) NULL
);


-- aswt_session_keys definition

-- Drop table

-- DROP TABLE aswt_session_keys;

CREATE TABLE aswt_session_keys (
	ppk varchar(32) NOT NULL,
	ppk_kcv varchar(6) NOT NULL,
	dpk varchar(32) NOT NULL,
	dpk_kcv varchar(6) NOT NULL,
	gen_date timestamp NULL,
	status varchar(2) NULL
);


-- aswt_switch_txn_authrization definition

-- Drop table

-- DROP TABLE aswt_switch_txn_authrization;

CREATE TABLE aswt_switch_txn_authrization (
	settle_flag varchar(1) NULL DEFAULT 'N'::character varying,
	txn_issuer varchar(4) NULL,
	txn_fwd_inst_1 varchar(12) NULL,
	txn_fwd_inst_2 varchar(12) NULL,
	txn_auth_source varchar(4) NULL,
	txn_channel varchar(4) NULL,
	txn_type varchar(8) NULL,
	txn_code varchar(4) NULL,
	txn_date varchar(20) NULL,
	txn_time varchar(12) NULL,
	fp_masked varchar(50) NULL,
	fp_type varchar(6) NULL,
	int_mti varchar(4) NULL,
	int_ref_no varchar(32) NULL,
	txn_batch_no varchar(6) NULL,
	txn_batch_status varchar(9) NULL,
	drcr varchar(2) NULL,
	fp_form_factor varchar(4) NULL,
	int_seq_no varchar(12) NULL,
	int_rc varchar(8) NULL,
	scheme varchar(4) NULL,
	int_rrn varchar(12) NULL,
	int_proc_code varchar(6) NULL,
	int_amt varchar(12) NULL,
	int_adj_amt1 varchar(12) NULL,
	int_adj_amt2 varchar(12) NULL,
	int_txn_fees1 varchar(12) NULL,
	int_txn_fees2 varchar(12) NULL,
	int_pos_entry_mode varchar(12) NULL,
	int_void_flag varchar(2) NULL,
	mti varchar(4) NULL,
	f002 varchar(64) NULL,
	f003 varchar(6) NULL,
	f004 varchar(12) NULL,
	f005 varchar(12) NULL,
	f006 varchar(12) NULL,
	f007 varchar(20) NULL,
	f008 varchar(99) NULL,
	f009 varchar(99) NULL,
	f010 varchar(99) NULL,
	f011 varchar(11) NULL,
	f012 varchar(6) NULL,
	f013 varchar(4) NULL,
	f014 varchar(4) NULL,
	f015 varchar(6) NULL,
	f016 varchar(6) NULL,
	f017 varchar(6) NULL,
	f018 varchar(4) NULL,
	f019 varchar(6) NULL,
	f020 varchar(6) NULL,
	f021 varchar(6) NULL,
	f022 varchar(12) NULL,
	f023 varchar(6) NULL,
	f024 varchar(6) NULL,
	f025 varchar(4) NULL,
	f026 varchar(6) NULL,
	f027 varchar(4) NULL,
	f028 varchar(20) NULL,
	f029 varchar(20) NULL,
	f030 varchar(20) NULL,
	f031 varchar(20) NULL,
	f032 varchar(12) NULL,
	f033 varchar(12) NULL,
	f034 varchar(60) NULL,
	f035 varchar(100) NULL,
	f036 varchar(200) NULL,
	f037 varchar(12) NULL,
	f038 varchar(6) NULL,
	f039 varchar(3) NULL,
	f040 varchar(20) NULL,
	f041 varchar(16) NULL,
	f042 varchar(15) NULL,
	f043 varchar(40) NULL,
	f044 varchar(200) NULL,
	f045 varchar(100) NULL,
	f046 varchar(300) NULL,
	f047 varchar(300) NULL,
	f048 varchar(500) NULL,
	f049 varchar(4) NULL,
	f050 varchar(4) NULL,
	f051 varchar(4) NULL,
	f052 varchar(64) NULL,
	f053 varchar(64) NULL,
	f054 varchar(200) NULL,
	f055 varchar(550) NULL,
	f056 varchar(500) NULL,
	f057 varchar(500) NULL,
	f058 varchar(500) NULL,
	f059 varchar(500) NULL,
	f060 varchar(500) NULL,
	f061 varchar(500) NULL,
	f062 varchar(500) NULL,
	f063 varchar(500) NULL,
	f064 varchar(200) NULL,
	f065 varchar(200) NULL,
	f066 varchar(20) NULL,
	f067 varchar(200) NULL,
	f068 varchar(200) NULL,
	f069 varchar(200) NULL,
	f070 varchar(200) NULL,
	f071 varchar(200) NULL,
	f072 varchar(200) NULL,
	f073 varchar(200) NULL,
	f074 varchar(200) NULL,
	f075 varchar(200) NULL,
	f076 varchar(200) NULL,
	f077 varchar(200) NULL,
	f078 varchar(200) NULL,
	f079 varchar(200) NULL,
	f080 varchar(200) NULL,
	f081 varchar(200) NULL,
	f082 varchar(200) NULL,
	f083 varchar(200) NULL,
	f084 varchar(200) NULL,
	f085 varchar(200) NULL,
	f086 varchar(200) NULL,
	f087 varchar(200) NULL,
	f088 varchar(200) NULL,
	f089 varchar(200) NULL,
	f090 varchar(200) NULL,
	f091 varchar(200) NULL,
	f092 varchar(200) NULL,
	f093 varchar(200) NULL,
	f094 varchar(200) NULL,
	f095 varchar(200) NULL,
	f096 varchar(200) NULL,
	f097 varchar(200) NULL,
	f098 varchar(200) NULL,
	f099 varchar(200) NULL,
	f100 varchar(200) NULL,
	f101 varchar(200) NULL,
	f102 varchar(200) NULL,
	f103 varchar(200) NULL,
	f104 varchar(700) NULL,
	f105 varchar(200) NULL,
	f106 varchar(200) NULL,
	f107 varchar(200) NULL,
	f108 varchar(200) NULL,
	f109 varchar(200) NULL,
	f110 varchar(200) NULL,
	f111 varchar(200) NULL,
	f112 varchar(200) NULL,
	f113 varchar(200) NULL,
	f114 varchar(200) NULL,
	f115 varchar(200) NULL,
	f116 varchar(200) NULL,
	f117 varchar(200) NULL,
	f118 varchar(200) NULL,
	f119 varchar(200) NULL,
	f120 varchar(600) NULL,
	f121 varchar(200) NULL,
	f122 varchar(200) NULL,
	f123 varchar(200) NULL,
	f124 varchar(500) NULL,
	f125 varchar(500) NULL,
	f126 varchar(200) NULL,
	f127 varchar(400) NULL,
	f128 varchar(200) NULL,
	reversal_flag varchar(8) NULL DEFAULT 'N'::character varying,
	txn_acquirer varchar(20) NULL,
	sys_txn_date timestamp NULL DEFAULT sysdate,
	program_id varchar(50) NULL,
	bank_id varchar(50) NULL,
	settle_date timestamp NULL,
	balance_update_flag varchar(3) NULL DEFAULT 'N'::character varying,
	balance_update_date timestamp NULL,
	sub_batch_no numeric NULL,
	acc_flag varchar(1) NULL,
	batch_no varchar(20) NULL,
	batch_upload_flag varchar(2) NULL DEFAULT 'N'::character varying,
	cs_id varchar(20) NULL,
	atc varchar(4) NULL,
	batch_upload_date timestamp NULL,
	bal_update_flag_ruk varchar(3) NULL DEFAULT 'N'::character varying,
	bal_update_date_ruk timestamp NULL,
	bal_update_settl_flag varchar(200) NULL,
	bal_update_settl_date varchar(200) NULL,
	ticket_id varchar(40) NULL,
	otb varchar(1000) NULL,
	subbatch_settle_date timestamp NULL,
	subbatch_settle_flag varchar(20) NULL,
	stationname varchar(100) NULL,
	stationid varchar(100) NULL,
	transacdesc varchar(100) NULL,
	rfu_6 varchar(200) NULL,
	rfu_7 varchar(200) NULL,
	rfu_8 varchar(200) NULL,
	rfu_9 varchar(200) NULL,
	rfu_10 varchar(200) NULL,
	manual_settle_flag varchar(20) NULL DEFAULT 'N'::character varying,
	manual_settle_date timestamp NULL,
	test_id varchar(80) NULL,
	txn_unique_id varchar(50) NULL,
	unique_txn_id varchar(50) NULL,
	cs_process_id varchar(200) NULL,
	tax_fees varchar(50) NULL,
	convenience_fees varchar(50) NULL,
	csu_amount varchar(12) NULL,
	req_chip_amount varchar(12) NULL,
	cur_off_bal varchar(12) NULL,
	cum_off_usage numeric NULL DEFAULT 0,
	host_bal numeric NULL DEFAULT 0,
	shadow_bal numeric NULL DEFAULT 0,
	server_code numeric NULL,
	trml_date timestamp NULL,
	saf_flag varchar(3) NULL,
	int_txn_type varchar(20) NULL,
	fund_source varchar(20) NULL,
	req_f004 varchar(20) NULL,
	current_balance numeric NULL,
	previous_balance numeric NULL,
	hold_balance numeric NULL,
	prepaid_account_number varchar(23) NULL,
	available_balance numeric NULL DEFAULT 0,
	intl_flag varchar(4) NULL,
	atm_flag varchar(4) NULL,
	wallet_id numeric NOT NULL DEFAULT 0,
	mark_up_fee numeric NULL,
	file_sett_date timestamp NULL,
	sub_txn_type varchar(5) NULL,
	csu_flag numeric(4) NULL,
	updated_date timestamp NULL,
	is_send varchar(2) NULL DEFAULT 'N'::character varying,
	org_drcr varchar(2) NULL,
	server_desc varchar(50) NULL
);
CREATE INDEX aswt_auth_f002 ON aswt_switch_txn_authrization USING btree (f002);




-- aswt_switch_txn_offline definition

-- Drop table

-- DROP TABLE aswt_switch_txn_offline;

CREATE TABLE aswt_switch_txn_offline (
	settle_flag varchar(1) NULL DEFAULT 'N'::character varying,
	txn_issuer varchar(4) NULL,
	txn_fwd_inst_1 varchar(12) NULL,
	txn_fwd_inst_2 varchar(12) NULL,
	txn_auth_source varchar(4) NULL,
	txn_channel varchar(4) NULL,
	txn_type varchar(8) NULL,
	txn_code varchar(4) NULL,
	txn_date varchar(20) NULL,
	txn_time varchar(12) NULL,
	fp_masked varchar(50) NULL,
	fp_type varchar(6) NULL,
	int_mti varchar(4) NULL,
	int_ref_no varchar(32) NULL,
	txn_batch_no varchar(6) NULL,
	txn_batch_status varchar(9) NULL,
	drcr varchar(2) NULL,
	fp_form_factor varchar(4) NULL,
	int_seq_no varchar(12) NULL,
	int_rc varchar(8) NULL,
	scheme varchar(4) NULL,
	int_rrn varchar(12) NULL,
	int_proc_code varchar(6) NULL,
	int_amt varchar(12) NULL,
	int_adj_amt1 varchar(12) NULL,
	int_adj_amt2 varchar(12) NULL,
	int_txn_fees1 varchar(12) NULL,
	int_txn_fees2 varchar(12) NULL,
	int_pos_entry_mode varchar(12) NULL,
	int_void_flag varchar(2) NULL,
	mti varchar(4) NULL,
	f002 varchar(100) NULL,
	f003 varchar(6) NULL,
	f004 varchar(12) NULL,
	f005 varchar(12) NULL,
	f006 varchar(12) NULL,
	f007 varchar(10) NULL,
	f008 varchar(99) NULL,
	f009 varchar(99) NULL,
	f010 varchar(99) NULL,
	f011 varchar(11) NULL,
	f012 varchar(6) NULL,
	f013 varchar(4) NULL,
	f014 varchar(4) NULL,
	f015 varchar(6) NULL,
	f016 varchar(6) NULL,
	f017 varchar(6) NULL,
	f018 varchar(4) NULL,
	f019 varchar(6) NULL,
	f020 varchar(6) NULL,
	f021 varchar(6) NULL,
	f022 varchar(12) NULL,
	f023 varchar(6) NULL,
	f024 varchar(6) NULL,
	f025 varchar(4) NULL,
	f026 varchar(6) NULL,
	f027 varchar(4) NULL,
	f028 varchar(12) NULL,
	f029 varchar(12) NULL,
	f030 varchar(12) NULL,
	f031 varchar(12) NULL,
	f032 varchar(12) NULL,
	f033 varchar(12) NULL,
	f034 varchar(60) NULL,
	f035 varchar(100) NULL,
	f036 varchar(200) NULL,
	f037 varchar(12) NULL,
	f038 varchar(6) NULL,
	f039 varchar(3) NULL,
	f040 varchar(50) NULL,
	f041 varchar(16) NULL,
	f042 varchar(15) NULL,
	f043 varchar(40) NULL,
	f044 varchar(999) NULL,
	f045 varchar(100) NULL,
	f046 varchar(999) NULL,
	f047 varchar(999) NULL,
	f048 varchar(999) NULL,
	f049 varchar(4) NULL,
	f050 varchar(4) NULL,
	f051 varchar(4) NULL,
	f052 varchar(64) NULL,
	f053 varchar(64) NULL,
	f054 varchar(200) NULL,
	f055 varchar(550) NULL,
	f056 varchar(999) NULL,
	f057 varchar(999) NULL,
	f058 varchar(999) NULL,
	f059 varchar(999) NULL,
	f060 varchar(999) NULL,
	f061 varchar(999) NULL,
	f062 varchar(999) NULL,
	f063 varchar(2000) NULL,
	f064 varchar(200) NULL,
	f065 varchar(200) NULL,
	f066 varchar(50) NULL,
	f067 varchar(200) NULL,
	f068 varchar(200) NULL,
	f069 varchar(200) NULL,
	f070 varchar(200) NULL,
	f071 varchar(200) NULL,
	f072 varchar(200) NULL,
	f073 varchar(200) NULL,
	f074 varchar(200) NULL,
	f075 varchar(200) NULL,
	f076 varchar(200) NULL,
	f077 varchar(200) NULL,
	f078 varchar(200) NULL,
	f079 varchar(200) NULL,
	f080 varchar(200) NULL,
	f081 varchar(200) NULL,
	f082 varchar(200) NULL,
	f083 varchar(200) NULL,
	f084 varchar(200) NULL,
	f085 varchar(200) NULL,
	f086 varchar(200) NULL,
	f087 varchar(200) NULL,
	f088 varchar(200) NULL,
	f089 varchar(200) NULL,
	f090 varchar(300) NULL,
	f091 varchar(200) NULL,
	f092 varchar(200) NULL,
	f093 varchar(200) NULL,
	f094 varchar(200) NULL,
	f095 varchar(200) NULL,
	f096 varchar(200) NULL,
	f097 varchar(200) NULL,
	f098 varchar(200) NULL,
	f099 varchar(200) NULL,
	f100 varchar(200) NULL,
	f101 varchar(200) NULL,
	f102 varchar(200) NULL,
	f103 varchar(200) NULL,
	f104 varchar(700) NULL,
	f105 varchar(999) NULL,
	f106 varchar(999) NULL,
	f107 varchar(999) NULL,
	f108 varchar(999) NULL,
	f109 varchar(999) NULL,
	f110 varchar(999) NULL,
	f111 varchar(999) NULL,
	f112 varchar(999) NULL,
	f113 varchar(999) NULL,
	f114 varchar(999) NULL,
	f115 varchar(999) NULL,
	f116 varchar(999) NULL,
	f117 varchar(999) NULL,
	f118 varchar(999) NULL,
	f119 varchar(999) NULL,
	f120 varchar(999) NULL,
	f121 varchar(999) NULL,
	f122 varchar(999) NULL,
	f123 varchar(999) NULL,
	f124 varchar(999) NULL,
	f125 varchar(999) NULL,
	f126 varchar(999) NULL,
	f127 varchar(999) NULL,
	f128 varchar(200) NULL,
	reversal_flag varchar(4) NULL,
	txn_acquirer varchar(20) NULL,
	settle_date timestamp NULL,
	program_id varchar(50) NULL,
	bank_id varchar(50) NULL,
	sys_txn_date timestamp NULL,
	balance_update_flag varchar(3) NULL,
	balance_update_date timestamp NULL,
	sub_batch_no numeric NULL,
	acc_flag varchar(20) NULL,
	batch_upload_flag varchar(2) NULL DEFAULT 'N'::character varying,
	ticket_id varchar(40) NULL,
	batch_upload_date timestamp NULL,
	subbatch_settle_flag varchar(1) NULL DEFAULT 'N'::character varying,
	subbatch_settle_date timestamp NULL,
	bal_update_settl_flag varchar(200) NULL,
	bal_update_settl_date varchar(200) NULL,
	stationname varchar(100) NULL,
	stationid varchar(100) NULL,
	transacdesc varchar(100) NULL,
	rfu_6 varchar(200) NULL,
	rfu_7 varchar(200) NULL,
	rfu_8 varchar(200) NULL,
	rfu_9 varchar(200) NULL,
	rfu_10 varchar(200) NULL,
	manual_settle_flag varchar(10) NULL DEFAULT 'N'::character varying,
	manual_settle_date timestamp NULL,
	atc varchar(4) NULL,
	chip_balance varchar(20) NULL,
	txn_unique_id varchar(50) NULL,
	tax_fees varchar(50) NULL,
	convenience_fees varchar(50) NULL,
	unique_txn_id varchar(50) NULL,
	server_code numeric NULL,
	bsr_flag varchar(100) NULL,
	bsr_date varchar(100) NULL,
	bsr_card_flag varchar(2) NULL,
	bsr_card_date varchar(30) NULL,
	cs_id varchar(20) NULL,
	cs_process_id varchar(200) NULL,
	tlf_flag varchar(2) NULL,
	external_mid varchar(20) NULL,
	saf_flag varchar(2) NULL,
	trml_date timestamp NULL,
	prepaid_account_number varchar(23) NULL,
	previous_balance numeric NULL DEFAULT 0,
	available_balance numeric NULL DEFAULT 0,
	hold_balance numeric NULL DEFAULT 0,
	current_balance numeric NULL DEFAULT 0,
	wallet_id numeric NULL,
	sub_txn_type varchar(5) NULL,
	is_send varchar(2) NULL DEFAULT 'N'::character varying,
	updated_date timestamp NULL,
	org_drcr varchar(2) NULL
);


-- aswt_switch_txn_request definition

-- Drop table

-- DROP TABLE aswt_switch_txn_request;

CREATE TABLE aswt_switch_txn_request (
	settle_flag varchar(1) NULL,
	txn_issuer varchar(4) NULL,
	txn_fwd_inst_1 varchar(12) NULL,
	txn_fwd_inst_2 varchar(12) NULL,
	txn_auth_source varchar(4) NULL,
	txn_channel varchar(4) NULL,
	txn_type varchar(8) NULL,
	txn_code varchar(4) NULL,
	txn_date varchar(20) NULL,
	txn_time varchar(12) NULL,
	fp_masked varchar(50) NULL,
	fp_type varchar(6) NULL,
	int_mti varchar(4) NULL,
	int_ref_no varchar(32) NULL,
	txn_batch_no varchar(6) NULL,
	txn_batch_status varchar(9) NULL,
	drcr varchar(2) NULL,
	fp_form_factor varchar(4) NULL,
	int_seq_no varchar(12) NULL,
	int_rc varchar(8) NULL,
	scheme varchar(4) NULL,
	int_rrn varchar(12) NULL,
	int_proc_code varchar(6) NULL,
	int_amt varchar(12) NULL,
	int_adj_amt1 varchar(12) NULL,
	int_adj_amt2 varchar(12) NULL,
	int_txn_fees1 varchar(12) NULL,
	int_txn_fees2 varchar(12) NULL,
	int_pos_entry_mode varchar(12) NULL,
	int_void_flag varchar(2) NULL,
	mti varchar(4) NULL,
	f002 varchar(64) NULL,
	f003 varchar(6) NULL,
	f004 varchar(12) NULL,
	f005 varchar(12) NULL,
	f006 varchar(12) NULL,
	f007 varchar(20) NULL,
	f008 varchar(99) NULL,
	f009 varchar(99) NULL,
	f010 varchar(99) NULL,
	f011 varchar(11) NULL,
	f012 varchar(6) NULL,
	f013 varchar(4) NULL,
	f014 varchar(4) NULL,
	f015 varchar(6) NULL,
	f016 varchar(6) NULL,
	f017 varchar(6) NULL,
	f018 varchar(4) NULL,
	f019 varchar(6) NULL,
	f020 varchar(6) NULL,
	f021 varchar(6) NULL,
	f022 varchar(12) NULL,
	f023 varchar(6) NULL,
	f024 varchar(6) NULL,
	f025 varchar(4) NULL,
	f026 varchar(6) NULL,
	f027 varchar(4) NULL,
	f028 varchar(20) NULL,
	f029 varchar(20) NULL,
	f030 varchar(20) NULL,
	f031 varchar(20) NULL,
	f032 varchar(12) NULL,
	f033 varchar(12) NULL,
	f034 varchar(60) NULL,
	f035 varchar(100) NULL,
	f036 varchar(200) NULL,
	f037 varchar(12) NULL,
	f038 varchar(6) NULL,
	f039 varchar(3) NULL,
	f040 varchar(20) NULL,
	f041 varchar(16) NULL,
	f042 varchar(15) NULL,
	f043 varchar(40) NULL,
	f044 varchar(200) NULL,
	f045 varchar(100) NULL,
	f046 varchar(300) NULL,
	f047 varchar(300) NULL,
	f048 varchar(500) NULL,
	f049 varchar(4) NULL,
	f050 varchar(4) NULL,
	f051 varchar(4) NULL,
	f052 varchar(64) NULL,
	f053 varchar(64) NULL,
	f054 varchar(200) NULL,
	f055 varchar(550) NULL,
	f056 varchar(500) NULL,
	f057 varchar(500) NULL,
	f058 varchar(500) NULL,
	f059 varchar(500) NULL,
	f060 varchar(500) NULL,
	f061 varchar(500) NULL,
	f062 varchar(500) NULL,
	f063 varchar(500) NULL,
	f064 varchar(200) NULL,
	f065 varchar(200) NULL,
	f066 varchar(20) NULL,
	f067 varchar(200) NULL,
	f068 varchar(200) NULL,
	f069 varchar(200) NULL,
	f070 varchar(200) NULL,
	f071 varchar(200) NULL,
	f072 varchar(200) NULL,
	f073 varchar(200) NULL,
	f074 varchar(200) NULL,
	f075 varchar(200) NULL,
	f076 varchar(200) NULL,
	f077 varchar(200) NULL,
	f078 varchar(200) NULL,
	f079 varchar(200) NULL,
	f080 varchar(200) NULL,
	f081 varchar(200) NULL,
	f082 varchar(200) NULL,
	f083 varchar(200) NULL,
	f084 varchar(200) NULL,
	f085 varchar(200) NULL,
	f086 varchar(200) NULL,
	f087 varchar(200) NULL,
	f088 varchar(200) NULL,
	f089 varchar(200) NULL,
	f090 varchar(200) NULL,
	f091 varchar(200) NULL,
	f092 varchar(200) NULL,
	f093 varchar(200) NULL,
	f094 varchar(200) NULL,
	f095 varchar(200) NULL,
	f096 varchar(200) NULL,
	f097 varchar(200) NULL,
	f098 varchar(200) NULL,
	f099 varchar(200) NULL,
	f100 varchar(200) NULL,
	f101 varchar(200) NULL,
	f102 varchar(200) NULL,
	f103 varchar(200) NULL,
	f104 varchar(700) NULL,
	f105 varchar(200) NULL,
	f106 varchar(200) NULL,
	f107 varchar(200) NULL,
	f108 varchar(200) NULL,
	f109 varchar(200) NULL,
	f110 varchar(200) NULL,
	f111 varchar(200) NULL,
	f112 varchar(200) NULL,
	f113 varchar(200) NULL,
	f114 varchar(200) NULL,
	f115 varchar(200) NULL,
	f116 varchar(200) NULL,
	f117 varchar(200) NULL,
	f118 varchar(200) NULL,
	f119 varchar(200) NULL,
	f120 varchar(600) NULL,
	f121 varchar(200) NULL,
	f122 varchar(200) NULL,
	f123 varchar(200) NULL,
	f124 varchar(500) NULL,
	f125 varchar(500) NULL,
	f126 varchar(200) NULL,
	f127 varchar(400) NULL,
	f128 varchar(200) NULL,
	reversal_flag varchar(8) NULL,
	txn_acquirer varchar(20) NULL,
	sys_txn_date timestamp NULL,
	program_id varchar(50) NULL,
	bank_id varchar(50) NULL,
	settle_date timestamp NULL,
	balance_update_flag varchar(3) NULL,
	balance_update_date timestamp NULL,
	sub_batch_no numeric NULL,
	acc_flag varchar(1) NULL,
	batch_no varchar(20) NULL,
	batch_upload_flag varchar(2) NULL,
	cs_id varchar(20) NULL,
	atc varchar(4) NULL,
	batch_upload_date timestamp NULL,
	bal_update_flag_ruk varchar(3) NULL,
	bal_update_date_ruk timestamp NULL,
	bal_update_settl_flag varchar(200) NULL,
	bal_update_settl_date varchar(200) NULL,
	ticket_id varchar(40) NULL,
	otb varchar(1000) NULL,
	subbatch_settle_date timestamp NULL,
	subbatch_settle_flag varchar(20) NULL,
	stationname varchar(100) NULL,
	stationid varchar(100) NULL,
	transacdesc varchar(100) NULL,
	rfu_6 varchar(200) NULL,
	rfu_7 varchar(200) NULL,
	rfu_8 varchar(200) NULL,
	rfu_9 varchar(200) NULL,
	rfu_10 varchar(200) NULL,
	manual_settle_flag varchar(20) NULL,
	manual_settle_date timestamp NULL,
	test_id varchar(80) NULL,
	txn_unique_id varchar(50) NULL,
	unique_txn_id varchar(50) NULL,
	cs_process_id varchar(200) NULL,
	tax_fees varchar(50) NULL,
	convenience_fees varchar(50) NULL,
	csu_amount varchar(12) NULL,
	req_chip_amount varchar(12) NULL,
	cur_off_bal varchar(12) NULL,
	cum_off_usage numeric NULL,
	host_bal numeric NULL,
	shadow_bal numeric NULL,
	server_code numeric NULL,
	trml_date timestamp NULL,
	saf_flag varchar(3) NULL,
	int_txn_type varchar(20) NULL,
	fund_source varchar(20) NULL,
	req_f004 varchar(20) NULL,
	current_balance numeric NULL,
	previous_balance numeric NULL,
	hold_balance numeric NULL,
	prepaid_account_number varchar(23) NULL,
	available_balance numeric NULL,
	intl_flag varchar(4) NULL,
	atm_flag varchar(4) NULL,
	wallet_id numeric NULL,
	mark_up_fee numeric NULL,
	file_sett_date timestamp NULL,
	sub_txn_type varchar(5) NULL,
	csu_flag numeric(4) NULL,
	updated_date timestamp NULL,
	is_send varchar(2) NULL,
	org_drcr varchar(2) NULL,
	server_desc varchar(50) NULL,
	cvv_flag varchar(1) NULL,
	product_code varchar(5) NULL,
	request_mac varchar(16) NULL,
	txn_product_id varchar(3) NULL,
	additional_txntype varchar(2) NULL
);


-- aswt_tmk definition

-- Drop table

-- DROP TABLE aswt_tmk;

CREATE TABLE aswt_tmk (
	tmk1 varchar(120) NULL,
	tmk1_kcv varchar(120) NULL,
	tmk2 varchar(120) NULL,
	tmk2_kcv varchar(120) NULL,
	tmk3 varchar(120) NULL,
	tmk3_kcv varchar(120) NULL,
	gen_date timestamp NULL,
	status varchar(2) NULL
);


-- aswt_txn_card_encr definition

-- Drop table

-- DROP TABLE aswt_txn_card_encr;

CREATE TABLE aswt_txn_card_encr (
	bank_id varchar(20) NULL,
	prog_id varchar(20) NULL,
	pan_enc varchar(64) NULL,
	int_ref_no varchar(32) NULL,
	mti varchar(20) NULL,
	txn_type varchar(20) NULL,
	txn_date_time timestamp NULL,
	f041 varchar(16) NULL,
	f011 varchar(11) NULL,
	txn_batch_no varchar(12) NULL,
	rsp_code varchar(3) NULL,
	txn_unique_id varchar(50) NULL,
	expiry_date varchar(64) NULL
);


-- audit_log definition

-- Drop table

-- DROP TABLE audit_log;

CREATE TABLE audit_log (
	userid varchar(50) NULL,
	access_page varchar(50) NULL,
	action_name varchar(50) NULL,
	date_time timestamp NULL,
	ip_address varchar(255) NULL,
	action_value varchar(50) NOT NULL,
	browser varchar(50) NULL
);


-- card_activity_process_log definition

-- Drop table

-- DROP TABLE card_activity_process_log;

CREATE TABLE card_activity_process_log (
	id numeric NOT NULL,
	card_ref_number varchar(20) NULL,
	hash_card_number varchar(100) NULL,
	cust_seq_id varchar(20) NULL,
	mobile_number varchar(10) NULL,
	"action" varchar(20) NULL,
	status varchar(20) NULL,
	"data" varchar(20) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	sub_action varchar(20) NULL,
	CONSTRAINT card_activity_process_log_pk PRIMARY KEY (id)
);


-- card_balance_eod definition

-- Drop table

-- DROP TABLE card_balance_eod;

CREATE TABLE card_balance_eod (
	hash_card_number varchar(100) NULL,
	product_id numeric NULL,
	issuer_id numeric NULL,
	host_bal numeric NULL,
	shadow_bal numeric NULL,
	total_bal numeric NULL,
	update_date timestamp NULL,
	eod_date timestamp NULL,
	remarks varchar(2000) NULL,
	chip_bal_9f10 numeric NULL
);


-- card_balance_eod_history definition

-- Drop table

-- DROP TABLE card_balance_eod_history;

CREATE TABLE card_balance_eod_history (
	hash_card_number varchar(100) NULL,
	product_id numeric NULL,
	issuer_id numeric NULL,
	host_bal numeric NULL,
	shadow_bal numeric NULL,
	total_bal numeric NULL,
	update_date timestamp NULL,
	eod_date timestamp NULL,
	card_ref_number varchar(100) NULL,
	status varchar(10) NULL,
	account_number varchar(30) NULL,
	cust_seq_id varchar(30) NULL,
	mask_no varchar(20) NULL,
	issue_date timestamp NULL,
	total_credit numeric NULL,
	total_debit numeric NULL,
	mo_id varchar(100) NULL
);
CREATE INDEX indx_hash_card_number ON card_balance_eod_history USING btree (hash_card_number);


-- card_detail definition

-- Drop table

-- DROP TABLE card_detail;

CREATE TABLE card_detail (
	bin numeric NULL,
	expiry_date varchar(20) NULL,
	card_number varchar(20) NULL,
	product_id numeric NULL,
	pin_offset varchar(4) NULL,
	service_code numeric NULL,
	status varchar(20) NULL,
	pan_seq_no varchar(20) NULL,
	cvv_1_flag varchar(20) NULL,
	cvv_2_flag varchar(20) NULL,
	i_cvv_flag varchar(20) NULL,
	on_boarded_by numeric NULL,
	on_boarded_date timestamp NULL,
	recard_flag varchar(1) NULL,
	old_card_no varchar(70) NULL,
	pin_gen_method varchar(20) NULL,
	form_factor varchar(20) NULL,
	txn_auth_profile_flag varchar(2) NULL,
	customer_profile_flag varchar(2) NULL,
	card_profile_flag varchar(2) NULL,
	txn_profile_flag varchar(2) NULL,
	fee_profile_flag varchar(2) NULL,
	merchant_profile_flag varchar(2) NULL,
	balance_profile_flag varchar(2) NULL,
	usage_profile_flag varchar(2) NULL,
	valid_thru varchar(20) NULL,
	valid_from varchar(20) NULL,
	online_bal numeric NULL,
	offline_bal_on_host numeric NULL,
	chip_offline_bal numeric NULL,
	daily_usage_amt numeric NULL,
	daily_usage_cnt numeric NULL,
	monthly_usage_amt numeric NULL,
	monthly_usage_cnt numeric NULL,
	yearly_usage_amt numeric NULL,
	yearly_usage_cnt numeric NULL,
	mobile_no numeric NULL,
	email_id varchar(100) NULL,
	issuer_id numeric NULL,
	branch_id numeric NULL,
	customer_name varchar(201) NULL,
	embossname varchar(201) NULL,
	column_3 varchar(50) NULL,
	column_4 varchar(50) NULL,
	column_5 varchar(50) NULL,
	column_6 varchar(50) NULL,
	column_7 varchar(50) NULL,
	column_8 varchar(50) NULL,
	column_9 varchar(50) NULL,
	column_10 varchar(50) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	cust_ref_no varchar(20) NULL,
	prep_account_number varchar(20) NULL,
	cust_seq_id varchar(20) NULL,
	reason_code varchar(255) NULL,
	pin_status varchar(20) NULL,
	card_activated_on timestamp NULL,
	last_updated_on_host varchar(20) NULL,
	card_offline_bal numeric(19) NULL,
	offline_bal numeric(19) NULL,
	shadow_bal numeric(19) NULL,
	hot_list_desc_code varchar(255) NULL,
	hot_list_type varchar(255) NULL,
	id numeric NOT NULL,
	batch_no varchar(20) NULL,
	instance_issuance_flag varchar(255) NULL,
	response numeric(19) NULL,
	renewal_flag varchar(20) NULL,
	replacement_flag varchar(20) NULL,
	hash_card_number varchar(70) NULL,
	card_ref_number varchar(20) NOT NULL,
	enrypted_card_no varchar(255) NULL,
	outlet_id varchar(20) NULL,
	mask_card_no varchar(255) NULL,
	is_instant varchar(20) NULL,
	fee_amount numeric(12, 2) NULL DEFAULT 0,
	initial_load_done varchar(5) NULL,
	afcs_hash_number varchar(70) NULL,
	old_offset numeric NULL,
	gst_rate numeric(7, 2) NULL,
	net_host_balance numeric(19, 2) NULL,
	max_balance_max_kyc varchar(20) NULL,
	max_balance_min_kyc varchar(20) NULL,
	kyc_type varchar(255) NULL,
	is_first_topup_done varchar(10) NULL DEFAULT 'N'::character varying,
	monthly_topup_limit_max_kyc numeric(19) NULL,
	monthly_topup_limit_min_kyc numeric(19) NULL,
	monthly_txn_count_max_kyc numeric(19) NULL,
	monthly_txn_count_min_kyc numeric(19) NULL,
	yearly_topup_limit_max_kyc numeric(19) NULL,
	yearly_topup_limit_min_kyc numeric(19) NULL,
	yearly_txn_count_max_kyc numeric(19) NULL,
	yearly_txn_count_min_kyc numeric(19) NULL,
	pin_try_count numeric NULL DEFAULT 0,
	last_pin_failed_time timestamp NULL,
	hotlisted_reason_code varchar(10) NULL,
	remarks varchar(35) NULL,
	card_closure_date timestamp NULL,
	pin_block_date timestamp NULL,
	dormancy_flag varchar(1) NULL,
	dormancy_date timestamp NULL,
	embossing_file_name varchar(50) NULL,
	pin_file_name varchar(50) NULL,
	date_time timestamp NULL,
	embossing_gen_date timestamp NULL,
	embossing_gen_by varchar(50) NULL,
	is_closure_hold varchar(1) NULL,
	is_closure_hold_date timestamp NULL,
	reactivation_date timestamp NULL,
	deactivation_date timestamp NULL,
	unique_cust_ref_no varchar(15) NULL,
	otp_auth varchar(1) NULL,
	sub_bin varchar(4) NULL,
	communication_number numeric NULL,
	branch_code varchar(20) NULL,
	card_type varchar(20) NULL,
	order_type varchar(2) NULL,
	bin_card_type varchar(40) NULL,
	CONSTRAINT card_detail_pk PRIMARY KEY (id),
	CONSTRAINT card_detail_uk1 UNIQUE (card_ref_number)
);
CREATE INDEX indx_card_detail_hash ON card_detail USING btree (hash_card_number);
CREATE INDEX indx_card_detail_mobile_no ON card_detail USING btree (mobile_no);

-- Table Triggers

create trigger trig_card_status_change after
update
    on
    card_detail for each row
    when (((old.status)::text is distinct
from
    (new.status)::text)) $trigger$
    begin	   
insert
    into
    card_status_change (id,
    card_ref_number,
    old_card_status,
    new_card_status,
    reason,
    created_date)
values (seq_status.NEXTVAL,
:old.card_ref_number,
:old.status,
:new.status,
:new.reason_code,
sysdate);

END$trigger$;


-- card_detail_history definition

-- Drop table

-- DROP TABLE card_detail_history;

CREATE TABLE card_detail_history (
	bin numeric NULL,
	expiry_date varchar(20) NULL,
	card_number varchar(20) NULL,
	product_id numeric NULL,
	pin_offset varchar(4) NULL,
	service_code numeric NULL,
	status varchar(20) NULL,
	pan_seq_no varchar(20) NULL,
	cvv_1_flag varchar(20) NULL,
	cvv_2_flag varchar(20) NULL,
	i_cvv_flag varchar(20) NULL,
	on_boarded_by numeric NULL,
	on_boarded_date timestamp NULL,
	recard_flag varchar(1) NULL,
	old_card_no varchar(70) NULL,
	pin_gen_method varchar(20) NULL,
	form_factor varchar(20) NULL,
	txn_auth_profile_flag varchar(2) NULL,
	customer_profile_flag varchar(2) NULL,
	card_profile_flag varchar(2) NULL,
	txn_profile_flag varchar(2) NULL,
	fee_profile_flag varchar(2) NULL,
	merchant_profile_flag varchar(2) NULL,
	balance_profile_flag varchar(2) NULL,
	usage_profile_flag varchar(2) NULL,
	valid_thru varchar(20) NULL,
	valid_from varchar(20) NULL,
	online_bal numeric NULL,
	offline_bal_on_host numeric NULL,
	chip_offline_bal numeric NULL,
	daily_usage_amt numeric NULL,
	daily_usage_cnt numeric NULL,
	monthly_usage_amt numeric NULL,
	monthly_usage_cnt numeric NULL,
	yearly_usage_amt numeric NULL,
	yearly_usage_cnt numeric NULL,
	mobile_no numeric NULL,
	email_id varchar(100) NULL,
	issuer_id numeric NULL,
	branch_id numeric NULL,
	customer_name varchar(201) NULL,
	embossname varchar(201) NULL,
	column_3 varchar(50) NULL,
	column_4 varchar(50) NULL,
	column_5 varchar(50) NULL,
	column_6 varchar(50) NULL,
	column_7 varchar(50) NULL,
	column_8 varchar(50) NULL,
	column_9 varchar(50) NULL,
	column_10 varchar(50) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	cust_ref_no varchar(20) NULL,
	prep_account_number varchar(20) NULL,
	cust_seq_id varchar(20) NULL,
	reason_code varchar(255) NULL,
	pin_status varchar(20) NULL,
	card_activated_on timestamp NULL,
	last_updated_on_host varchar(20) NULL,
	card_offline_bal numeric(19) NULL,
	offline_bal numeric(19) NULL,
	shadow_bal numeric(19) NULL,
	hot_list_desc_code varchar(255) NULL,
	hot_list_type varchar(255) NULL,
	id numeric NULL,
	batch_no varchar(20) NULL,
	instance_issuance_flag varchar(255) NULL,
	response numeric(19) NULL,
	renewal_flag varchar(20) NULL,
	replacement_flag varchar(20) NULL,
	hash_card_number varchar(70) NULL,
	card_ref_number varchar(20) NULL,
	enrypted_card_no varchar(255) NULL,
	outlet_id varchar(20) NULL,
	mask_card_no varchar(255) NULL,
	is_instant varchar(20) NULL,
	fee_amount numeric(12, 2) NULL,
	initial_load_done varchar(5) NULL,
	afcs_hash_number varchar(70) NULL,
	old_offset numeric NULL,
	gst_rate numeric(7, 2) NULL,
	net_host_balance numeric(19, 2) NULL,
	max_balance_max_kyc varchar(20) NULL,
	max_balance_min_kyc varchar(20) NULL,
	kyc_type varchar(255) NULL,
	is_first_topup_done varchar(10) NULL,
	monthly_topup_limit_max_kyc numeric(19) NULL,
	monthly_topup_limit_min_kyc numeric(19) NULL,
	monthly_txn_count_max_kyc numeric(19) NULL,
	monthly_txn_count_min_kyc numeric(19) NULL,
	yearly_topup_limit_max_kyc numeric(19) NULL,
	yearly_topup_limit_min_kyc numeric(19) NULL,
	yearly_txn_count_max_kyc numeric(19) NULL,
	yearly_txn_count_min_kyc numeric(19) NULL,
	pin_try_count numeric NULL,
	last_pin_failed_time timestamp NULL,
	his_id numeric NULL,
	insert_time timestamp NULL,
	pin_block_date timestamp NULL,
	remarks varchar(500) NULL,
	dormancy_flag varchar(10) NULL,
	dormancy_date timestamp NULL,
	date_time timestamp NULL
);


-- card_encryption_detail definition

-- Drop table

-- DROP TABLE card_encryption_detail;

CREATE TABLE card_encryption_detail (
	card_ref_number varchar(20) NULL,
	enrypted_card_no varchar(70) NULL
);


-- card_pin_history definition

-- Drop table

-- DROP TABLE card_pin_history;

CREATE TABLE card_pin_history (
	id numeric NULL,
	card_ref_no varchar(25) NULL,
	new_pin_offset varchar(6) NULL,
	old_pin_offset varchar(6) NULL,
	issuer_id numeric NULL,
	created_date timestamp NULL
);


-- card_procurement_master definition

-- Drop table

-- DROP TABLE card_procurement_master;

CREATE TABLE card_procurement_master (
	id numeric NOT NULL,
	card_type varchar(200) NULL,
	vendor_id varchar(200) NULL,
	quantity numeric NULL,
	order_date timestamp NULL,
	remarks varchar(200) NULL,
	issuer_id numeric NULL,
	created_by numeric NULL,
	created_date timestamp NULL,
	updated_by numeric NULL,
	received_date timestamp NULL,
	updated_date timestamp NULL,
	CONSTRAINT sys_c0079784 PRIMARY KEY (id)
);


-- cardstmt_req_configuration definition

-- Drop table

-- DROP TABLE cardstmt_req_configuration;

CREATE TABLE cardstmt_req_configuration (
	id numeric NULL,
	count numeric NULL,
	fromdate numeric NULL,
	todate numeric NULL
);


-- cbs_auth_token definition

-- Drop table

-- DROP TABLE cbs_auth_token;

CREATE TABLE cbs_auth_token (
	id numeric NULL,
	auth_token varchar(4000) NULL,
	status varchar(2) NULL,
	created_date timestamp NULL
);


-- channel_user_master definition

-- Drop table

-- DROP TABLE channel_user_master;

CREATE TABLE channel_user_master (
	id numeric NOT NULL,
	user_id varchar(50) NOT NULL,
	"password" varchar(64) NULL,
	first_name varchar(20) NULL,
	middle_name varchar(20) NULL,
	last_name varchar(20) NULL,
	email_id varchar(255) NULL,
	status varchar(1) NULL DEFAULT 'N'::character varying,
	address1 varchar(150) NULL,
	address2 varchar(150) NULL,
	phone_number varchar(15) NULL,
	mobile_number varchar(15) NULL,
	user_group_id numeric NOT NULL,
	role_id numeric NOT NULL,
	institution_id numeric NULL,
	issuer_id numeric NULL,
	zone_id numeric NULL,
	branch_id numeric NULL,
	status_change_by varchar(20) NULL,
	account_lock varchar(1) NULL DEFAULT 'N'::character varying,
	lock_date timestamp NULL,
	lock_counter numeric NULL,
	status_change_date timestamp NULL,
	unlock_by varchar(20) NULL,
	unlock_date timestamp NULL,
	is_first_login varchar(1) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	approved_status varchar(20) NULL,
	approved_description varchar(255) NULL,
	approved_status_change_by varchar(20) NULL,
	approved_status_change_date timestamp NULL,
	old_password varchar(255) NULL,
	login_time timestamp NULL,
	no_of_entries numeric(19) NULL,
	user_name_prefix varchar(255) NULL,
	created_by_name varchar(30) NULL,
	approved_by_name varchar(30) NULL,
	is_admin varchar(10) NULL,
	captcha varchar(20) NULL,
	customer_type varchar(5) NULL,
	previous_login_time timestamp NULL,
	channel_id varchar(20) NULL,
	user_name varchar(255) NULL
);


-- city_master definition

-- Drop table

-- DROP TABLE city_master;

CREATE TABLE city_master (
	id numeric(20) NOT NULL,
	"name" varchar(50) NULL,
	state_id numeric(20) NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	created_date timestamp(6) NULL,
	updated_date timestamp(6) NULL,
	code varchar(20) NULL,
	country_id numeric NULL
);


-- cms_audit_log definition

-- Drop table

-- DROP TABLE cms_audit_log;

CREATE TABLE cms_audit_log (
	userid numeric NULL,
	access_page varchar(255) NULL,
	action_name varchar(255) NULL,
	date_time timestamp NULL,
	ip_address varchar(255) NULL,
	action_value varchar(1000) NULL,
	browser varchar(255) NULL,
	id numeric(19) NOT NULL,
	outlet_userid numeric NULL
);


-- cms_batch_summary_details_11_may definition

-- Drop table

-- DROP TABLE cms_batch_summary_details_11_may;

CREATE TABLE cms_batch_summary_details_11_may (
	batch_no varchar(20) NULL,
	created_on timestamp NULL,
	created_by numeric NULL,
	entry_mode varchar(20) NULL,
	upload_file_name varchar(255) NULL,
	total_records numeric NULL,
	rejected_records numeric NULL,
	successful_records numeric NULL,
	checker_verified_on timestamp NULL,
	checker_verified_by varchar(20) NULL,
	status varchar(20) NULL,
	process_status varchar(20) NULL,
	issuer_id numeric NULL,
	card_dispatch_flag varchar(20) NULL,
	pin_dispatch_falg varchar(20) NULL,
	card_dispatch_updated_by numeric NULL,
	pin_dispatch_updated_by numeric NULL,
	card_dispatch_date timestamp NULL,
	pin_dispatch_date timestamp NULL,
	pin_awb_no varchar(20) NULL,
	dispatch_status varchar(20) NULL,
	card_awb_no varchar(20) NULL,
	agency_name varchar(50) NULL,
	card_dispatch_to varchar(20) NULL,
	pin_dispatch_to varchar(20) NULL,
	updated_by numeric NULL,
	branch_id numeric NULL,
	instance_issuance_flag varchar(255) NULL,
	outlet_id varchar(20) NULL,
	card_ack_date timestamp NULL,
	product_id numeric NULL,
	created_by_name varchar(50) NULL,
	file_processing_date timestamp NULL,
	"comments" varchar(500) NULL,
	dispatch_address varchar(500) NULL,
	approve_reject_status varchar(5) NULL,
	approve_reject_id numeric NULL,
	approve_reject_date timestamp NULL,
	is_virtual_to_physical_conv varchar(2) NULL,
	is_perso varchar(2) NULL,
	generated_by varchar(50) NULL
);


-- cms_batch_summary_details_11_may_1 definition

-- Drop table

-- DROP TABLE cms_batch_summary_details_11_may_1;

CREATE TABLE cms_batch_summary_details_11_may_1 (
	batch_no varchar(20) NULL,
	created_on timestamp NULL,
	created_by numeric NULL,
	entry_mode varchar(20) NULL,
	upload_file_name varchar(255) NULL,
	total_records numeric NULL,
	rejected_records numeric NULL,
	successful_records numeric NULL,
	checker_verified_on timestamp NULL,
	checker_verified_by varchar(20) NULL,
	status varchar(20) NULL,
	process_status varchar(20) NULL,
	issuer_id numeric NULL,
	card_dispatch_flag varchar(20) NULL,
	pin_dispatch_falg varchar(20) NULL,
	card_dispatch_updated_by numeric NULL,
	pin_dispatch_updated_by numeric NULL,
	card_dispatch_date timestamp NULL,
	pin_dispatch_date timestamp NULL,
	pin_awb_no varchar(20) NULL,
	dispatch_status varchar(20) NULL,
	card_awb_no varchar(20) NULL,
	agency_name varchar(50) NULL,
	card_dispatch_to varchar(20) NULL,
	pin_dispatch_to varchar(20) NULL,
	updated_by numeric NULL,
	branch_id numeric NULL,
	instance_issuance_flag varchar(255) NULL,
	outlet_id varchar(20) NULL,
	card_ack_date timestamp NULL,
	product_id numeric NULL,
	created_by_name varchar(50) NULL,
	file_processing_date timestamp NULL,
	"comments" varchar(500) NULL,
	dispatch_address varchar(500) NULL,
	approve_reject_status varchar(5) NULL,
	approve_reject_id numeric NULL,
	approve_reject_date timestamp NULL,
	is_virtual_to_physical_conv varchar(2) NULL,
	is_perso varchar(2) NULL,
	generated_by varchar(50) NULL
);


-- cms_batch_summary_details_12_may definition

-- Drop table

-- DROP TABLE cms_batch_summary_details_12_may;

CREATE TABLE cms_batch_summary_details_12_may (
	batch_no varchar(20) NULL,
	created_on timestamp NULL,
	created_by numeric NULL,
	entry_mode varchar(20) NULL,
	upload_file_name varchar(255) NULL,
	total_records numeric NULL,
	rejected_records numeric NULL,
	successful_records numeric NULL,
	checker_verified_on timestamp NULL,
	checker_verified_by varchar(20) NULL,
	status varchar(20) NULL,
	process_status varchar(20) NULL,
	issuer_id numeric NULL,
	card_dispatch_flag varchar(20) NULL,
	pin_dispatch_falg varchar(20) NULL,
	card_dispatch_updated_by numeric NULL,
	pin_dispatch_updated_by numeric NULL,
	card_dispatch_date timestamp NULL,
	pin_dispatch_date timestamp NULL,
	pin_awb_no varchar(20) NULL,
	dispatch_status varchar(20) NULL,
	card_awb_no varchar(20) NULL,
	agency_name varchar(50) NULL,
	card_dispatch_to varchar(20) NULL,
	pin_dispatch_to varchar(20) NULL,
	updated_by numeric NULL,
	branch_id numeric NULL,
	instance_issuance_flag varchar(255) NULL,
	outlet_id varchar(20) NULL,
	card_ack_date timestamp NULL,
	product_id numeric NULL,
	created_by_name varchar(50) NULL,
	file_processing_date timestamp NULL,
	"comments" varchar(500) NULL,
	dispatch_address varchar(500) NULL,
	approve_reject_status varchar(5) NULL,
	approve_reject_id numeric NULL,
	approve_reject_date timestamp NULL,
	is_virtual_to_physical_conv varchar(2) NULL,
	is_perso varchar(2) NULL,
	generated_by varchar(50) NULL
);


-- cms_bc_commission definition

-- Drop table

-- DROP TABLE cms_bc_commission;

CREATE TABLE cms_bc_commission (
	transaction_date timestamp NULL,
	commission_amount numeric NULL,
	transaction_type varchar(30) NULL,
	kyc_status varchar(5) NULL,
	kyc_updated_on timestamp NULL,
	reference_id varchar(100) NULL,
	outlet_id varchar(20) NULL,
	mid varchar(20) NULL,
	issuer_id numeric NULL,
	txn_amount numeric NULL,
	mask_card_number varchar(20) NULL,
	reference_number varchar(100) NULL,
	card_ref_number varchar(20) NULL,
	insert_date timestamp NULL
);


-- cms_bin_salt_config definition

-- Drop table

-- DROP TABLE cms_bin_salt_config;

CREATE TABLE cms_bin_salt_config (
	id numeric NULL,
	bin numeric NOT NULL,
	secure_salt_key varchar(100) NULL,
	created_by varchar(100) NULL,
	created_on timestamp NULL,
	remarks varchar(1000) NULL,
	afcs_salt_secure_key varchar(100) NULL,
	issuer_id numeric NOT NULL,
	institution_id numeric NULL,
	CONSTRAINT cons_unique_key UNIQUE (id)
);


-- cms_black_list_data definition

-- Drop table

-- DROP TABLE cms_black_list_data;

CREATE TABLE cms_black_list_data (
	bin numeric NULL,
	card_no varchar(70) NULL,
	expiry varchar(10) NULL,
	hotlist_flag varchar(10) NULL,
	serial_no numeric NOT NULL,
	insert_time timestamp NULL,
	email_time timestamp NULL,
	CONSTRAINT sys_c0079774 PRIMARY KEY (serial_no)
);
CREATE UNIQUE INDEX sys_c0011350 ON cms_black_list_data USING btree (serial_no);


-- cms_card_adjustment_history definition

-- Drop table

-- DROP TABLE cms_card_adjustment_history;

CREATE TABLE cms_card_adjustment_history (
	id varchar(500) NULL,
	card_ref_number varchar(500) NULL,
	simba_id varchar(500) NULL,
	drcr varchar(1) NULL,
	amount numeric NULL,
	hold_flag varchar(1) NULL,
	force_debit_flag varchar(1) NULL,
	status varchar(1) NULL,
	remarks varchar(1000) NULL,
	file_name varchar(500) NULL,
	batch_no varchar(500) NULL,
	raw_data varchar(5000) NULL,
	file_uploaded_by varchar(500) NULL,
	file_uploaded_date timestamp NULL,
	adjustment_remark varchar(500) NULL,
	record_no varchar(100) NULL
);


-- cms_card_adjustment_summary definition

-- Drop table

-- DROP TABLE cms_card_adjustment_summary;

CREATE TABLE cms_card_adjustment_summary (
	id varchar(30) NULL,
	file_name varchar(30) NULL,
	total_count numeric NULL,
	total_amount numeric NULL,
	success_count numeric NULL,
	rejected_count numeric NULL,
	batch_no varchar(30) NULL,
	file_uploaded_by varchar(30) NULL,
	file_uploaded_date timestamp NULL
);


-- cms_card_adjustment_temp definition

-- Drop table

-- DROP TABLE cms_card_adjustment_temp;

CREATE TABLE cms_card_adjustment_temp (
	id varchar(500) NULL,
	card_ref_number varchar(500) NULL,
	simba_id varchar(500) NULL,
	drcr varchar(1) NULL,
	amount numeric NULL,
	hold_flag varchar(1) NULL,
	force_debit_flag varchar(1) NULL,
	status varchar(1) NULL,
	remarks varchar(50) NULL,
	file_name varchar(500) NULL,
	batch_no varchar(500) NULL,
	raw_data varchar(5000) NULL,
	file_uploaded_by varchar(500) NULL,
	file_uploaded_date timestamp NULL,
	adjustment_remark varchar(500) NULL,
	record_no varchar(100) NULL
);


-- cms_card_black_list_req_res definition

-- Drop table

-- DROP TABLE cms_card_black_list_req_res;

CREATE TABLE cms_card_black_list_req_res (
	id numeric NULL,
	reqrrn varchar(20) NULL,
	card_number varchar(255) NULL,
	blocked_date varchar(10) NULL,
	blocked_time varchar(8) NULL,
	status varchar(1) NULL,
	description varchar(100) NULL,
	resp_system_date varchar(10) NULL,
	resp_system_time varchar(8) NULL,
	error_code varchar(20) NULL,
	error_description varchar(255) NULL,
	card_ref_no varchar(20) NULL,
	"source" varchar(20) NULL
);


-- cms_card_detail_extention definition

-- Drop table

-- DROP TABLE cms_card_detail_extention;

CREATE TABLE cms_card_detail_extention (
	id numeric NOT NULL,
	ho_indented_date timestamp NULL,
	mo_indented_date timestamp NULL,
	outlet_indented_date timestamp NULL,
	ho_indented_by numeric NULL DEFAULT 0,
	mo_indented_by numeric NULL DEFAULT 0,
	outlet_indented_by numeric NULL DEFAULT 0,
	chip_perso_date timestamp NULL,
	chip_perso_by numeric NULL DEFAULT 0,
	ho_dispatch_date timestamp NULL,
	outlet_dispatch_date timestamp NULL,
	ho_dispatch_by numeric NULL DEFAULT 0,
	outlet_dispatch_by numeric NULL DEFAULT 0,
	ho_acknowledge_date timestamp NULL,
	outlet_acknowledge_date timestamp NULL,
	ho_acknowledge_by numeric NULL DEFAULT 0,
	outlet_acknowledge_by numeric NULL DEFAULT 0,
	issued_date timestamp NULL,
	issued_by numeric NULL DEFAULT 0,
	ho_damaged_date timestamp NULL,
	outlet_damaged_date timestamp NULL,
	cust_damaged_date timestamp NULL,
	ho_damaged_by numeric NULL DEFAULT 0,
	outlet_damaged_by numeric NULL DEFAULT 0,
	cust_damaged_by numeric NULL DEFAULT 0,
	ho_id numeric NULL DEFAULT 0,
	mo_id varchar(20) NULL,
	outlet_id varchar(20) NULL,
	card_ref_no varchar(20) NOT NULL,
	mo_batch_id varchar(20) NULL,
	outlet_batch_id varchar(20) NULL,
	mask_card_number varchar(20) NULL,
	is_card_printed varchar(10) NULL,
	update_in_iss timestamp NULL,
	token_id varchar(100) NULL,
	ready_for_disp_date timestamp NULL,
	ready_for_disp_by numeric NULL,
	mo_disp_date timestamp NULL,
	mo_disp_by numeric NULL,
	fee_collected varchar(5) NULL,
	demog_updated_date timestamp NULL,
	token_gen_by numeric NULL,
	token_gen_date timestamp NULL,
	card_closure_status varchar(20) NULL,
	card_closure_maker_date timestamp NULL,
	card_closure_checker_date timestamp NULL,
	kyc_process_status varchar(50) NULL DEFAULT 'N'::character varying,
	kyc_process_date timestamp NULL,
	kyc_failed_count numeric NULL DEFAULT 0,
	CONSTRAINT cons_ext_card_ref_number PRIMARY KEY (card_ref_no)
);


-- cms_card_detail_history definition

-- Drop table

-- DROP TABLE cms_card_detail_history;

CREATE TABLE cms_card_detail_history (
	old_pan varchar(70) NULL,
	new_pan varchar(70) NULL,
	cust_name varchar(201) NULL,
	status_flag varchar(30) NULL,
	serial_no varchar(30) NULL,
	insert_time timestamp NULL,
	email_time timestamp NULL,
	remark varchar(50) NULL,
	channel_id varchar(20) NULL,
	pin_offset varchar(40) NULL,
	reason_code varchar(255) NULL,
	caf_flag varchar(20) NULL,
	caf_generated_by varchar(20) NULL,
	caf_generation_date varchar(20) NULL,
	caf_eligibility varchar(20) NULL,
	cust_seq varchar(20) NULL,
	old_mask_card_no varchar(50) NULL,
	new_mask_card_no varchar(50) NULL,
	new_card_ref_number varchar(50) NULL,
	old_card_ref_number varchar(50) NULL,
	card_ref_number varchar(255) NULL,
	source_type varchar(200) NULL,
	remarks varchar(35) NULL,
	status varchar(20) NULL
);


-- cms_card_fee_config definition

-- Drop table

-- DROP TABLE cms_card_fee_config;

CREATE TABLE cms_card_fee_config (
	card_ref_number varchar(12) NULL,
	simba_id varchar(20) NULL,
	fee_type varchar(1000) NULL,
	frequency varchar(1) NULL,
	amount varchar(12) NULL,
	transaction_description varchar(100) NULL,
	action_flag varchar(1) NULL,
	status varchar(1) NULL,
	remark varchar(500) NULL,
	file_uploaded_by varchar(30) NULL,
	file_uploaded_date timestamp NULL,
	mark_up_fee numeric NULL,
	txn_type varchar(10) NULL
);


-- cms_card_fee_config_history definition

-- Drop table

-- DROP TABLE cms_card_fee_config_history;

CREATE TABLE cms_card_fee_config_history (
	card_ref_number varchar(12) NULL,
	simba_id varchar(20) NULL,
	fee_type varchar(25) NULL,
	frequency varchar(1) NULL,
	amount varchar(12) NULL,
	transaction_description varchar(100) NULL,
	action_flag varchar(1) NULL,
	status varchar(1) NULL,
	remark varchar(500) NULL,
	file_uploaded_by varchar(30) NULL,
	file_uploaded_date timestamp NULL,
	inserted_date timestamp NULL,
	inserted_by varchar(30) NULL,
	txn_type varchar(10) NULL
);


-- cms_card_fee_history definition

-- Drop table

-- DROP TABLE cms_card_fee_history;

CREATE TABLE cms_card_fee_history (
	card_ref_number varchar(50) NULL,
	simba_id varchar(40) NULL,
	fee_type varchar(50) NULL,
	frequency varchar(2) NULL,
	amount varchar(24) NULL,
	transaction_description varchar(200) NULL,
	action_flag varchar(2) NULL,
	status varchar(2) NULL,
	remark varchar(1000) NULL,
	file_uploaded_by varchar(60) NULL,
	file_uploaded_date timestamp NULL,
	id varchar(1000) NULL,
	raw_data varchar(1000) NULL,
	file_name varchar(100) NULL,
	batch_no varchar(100) NULL,
	record_no varchar NULL
);


-- cms_card_fee_summary definition

-- Drop table

-- DROP TABLE cms_card_fee_summary;

CREATE TABLE cms_card_fee_summary (
	id varchar(30) NULL,
	file_name varchar(30) NULL,
	total_count numeric NULL,
	total_amount numeric NULL,
	success_count numeric NULL,
	rejected_count numeric NULL,
	batch_no varchar(30) NULL,
	file_uploaded_by varchar(30) NULL,
	file_uploaded_date timestamp NULL
);


-- cms_card_fee_temp definition

-- Drop table

-- DROP TABLE cms_card_fee_temp;

CREATE TABLE cms_card_fee_temp (
	card_ref_number varchar(12) NULL,
	simba_id varchar(20) NULL,
	fee_type varchar(25) NULL,
	frequency varchar(1) NULL,
	amount varchar(12) NULL,
	transaction_description varchar(100) NULL,
	action_flag varchar(1) NULL,
	status varchar(1) NULL,
	remark varchar(500) NULL,
	file_uploaded_by varchar(30) NULL,
	file_uploaded_date timestamp NULL,
	id numeric NULL,
	file_name varchar(50) NULL,
	batch_no varchar(50) NULL,
	record_no varchar NULL
);


-- cms_card_generation_master definition

-- Drop table

-- DROP TABLE cms_card_generation_master;

CREATE TABLE cms_card_generation_master (
	id numeric NULL,
	bin varchar(10) NULL,
	sub_bin varchar(10) NULL,
	card_number varchar(50) NULL,
	status varchar(2) NULL DEFAULT 'N'::character varying,
	seq numeric NULL
);
CREATE INDEX indx_bin_sub_bin_master ON cms_card_generation_master USING btree (bin, sub_bin, status);


-- cms_card_generation_sequence definition

-- Drop table

-- DROP TABLE cms_card_generation_sequence;

CREATE TABLE cms_card_generation_sequence (
	bin numeric NULL,
	product_id numeric NULL,
	card_seqno numeric NULL,
	issuer_id numeric NULL,
	text2 varchar(20) NULL,
	created_by numeric NULL,
	created_date timestamp(6) NULL,
	status varchar(20) NULL,
	id numeric NOT NULL,
	max_card_seqno numeric NULL,
	"locked" varchar(20) NULL DEFAULT 'N'::character varying,
	crn_type varchar(20) NULL,
	inst_id numeric NULL,
	CONSTRAINT cms_card_generation_sequen_pk PRIMARY KEY (id)
);


-- cms_card_generation_sequence_hist definition

-- Drop table

-- DROP TABLE cms_card_generation_sequence_hist;

CREATE TABLE cms_card_generation_sequence_hist (
	bin numeric NULL,
	product_id numeric NULL,
	card_seqno numeric NULL,
	issuer_id numeric NULL,
	text2 varchar(20) NULL,
	created_by numeric NULL,
	created_date timestamp(6) NULL,
	status varchar(20) NULL,
	id numeric NOT NULL,
	max_card_seqno numeric NULL,
	"locked" varchar(20) NULL DEFAULT 'N'::character varying,
	crn_type varchar(20) NULL,
	inst_id numeric NULL,
	CONSTRAINT cms_card_generation_sequence_hist_pkey PRIMARY KEY (id)
);


-- cms_card_issuance_rejection definition

-- Drop table

-- DROP TABLE cms_card_issuance_rejection;

CREATE TABLE cms_card_issuance_rejection (
	cardno numeric NULL,
	reason varchar(255) NULL,
	bin numeric NULL,
	product_id numeric NULL,
	issuer_id numeric NULL,
	entry_time timestamp NULL,
	batch_no varchar(20) NULL,
	entry_by numeric NULL,
	cust_seq_id varchar(20) NULL,
	id numeric NULL
);


-- cms_card_repin definition

-- Drop table

-- DROP TABLE cms_card_repin;

CREATE TABLE cms_card_repin (
	id serial4 NOT NULL,
	card_ref_number varchar(20) NULL,
	user_id varchar(10) NULL,
	created_date timestamp NULL,
	pin_gen_method varchar(50) NULL,
	product_id int8 NULL,
	issuer_id int8 NULL,
	cust_seq_id varchar(20) NULL,
	batch_id varchar(20) NULL,
	status varchar(20) NULL,
	dispatch_date timestamp NULL
);


-- cms_card_status definition

-- Drop table

-- DROP TABLE cms_card_status;

CREATE TABLE cms_card_status (
	id numeric NULL,
	status_name varchar(20) NULL,
	status_description varchar(20) NULL,
	status_type varchar(20) NULL
);


-- cms_card_status_history definition

-- Drop table

-- DROP TABLE cms_card_status_history;

CREATE TABLE cms_card_status_history (
	id varchar(500) NULL,
	card_ref_number varchar(500) NULL,
	card_status varchar(5) NULL,
	reason_code varchar(500) NULL,
	remark varchar(1000) NULL,
	simba_id varchar(500) NULL,
	file_name varchar(500) NULL,
	batch_no varchar(500) NULL,
	raw_data varchar(3000) NULL,
	status varchar(1) NULL,
	file_uploaded_by varchar(50) NULL,
	file_uploaded_date timestamp NULL,
	record_no varchar(100) NULL
);


-- cms_card_status_summary definition

-- Drop table

-- DROP TABLE cms_card_status_summary;

CREATE TABLE cms_card_status_summary (
	id numeric NULL,
	file_name varchar(50) NULL,
	total_count numeric NULL,
	success_count numeric NULL,
	reject_count numeric NULL,
	batch_no varchar(50) NULL,
	file_uploaded_by numeric NULL,
	file_uploaded_date timestamp NULL
);


-- cms_card_status_temp definition

-- Drop table

-- DROP TABLE cms_card_status_temp;

CREATE TABLE cms_card_status_temp (
	id numeric NULL,
	card_ref_number varchar(20) NULL,
	card_status varchar(5) NULL,
	reason_code varchar(50) NULL,
	remark varchar(200) NULL,
	simba_id varchar(20) NULL,
	file_name varchar(50) NULL,
	batch_no varchar(50) NULL,
	raw_data varchar(3000) NULL,
	status varchar(1) NULL,
	file_uploaded_by numeric NULL,
	file_uploaded_date timestamp NULL,
	record_no varchar(100) NULL
);


-- cms_card_txn_config definition

-- Drop table

-- DROP TABLE cms_card_txn_config;

CREATE TABLE cms_card_txn_config (
	id numeric NOT NULL,
	card_ref_number varchar(30) NULL,
	"name" varchar(30) NULL,
	total_lifetime_amt numeric NULL,
	total_lifetime_cnt numeric NULL,
	onus_dom_single_amt numeric NULL,
	onus_dom_single_cnt numeric NULL,
	onus_dom_daily_amt numeric NULL,
	onus_dom_daily_cnt numeric NULL,
	onus_dom_monthly_amt numeric NULL,
	onus_dom_monthly_cnt numeric NULL,
	onus_dom_annual_amt numeric NULL,
	onus_dom_annual_cnt numeric NULL,
	onus_dom_comm_rate numeric NULL,
	onus_dom_comm_amt numeric NULL,
	onus_dom_comm_flag varchar(15) NULL,
	onus_intl_single_amt numeric NULL,
	onus_intl_single_cnt numeric NULL,
	onus_intl_daily_amt numeric NULL,
	onus_intl_daily_cnt numeric NULL,
	onus_intl_monthly_amt numeric NULL,
	onus_intl_monthly_cnt numeric NULL,
	onus_intl_annual_amt numeric NULL,
	onus_intl_annual_cnt numeric NULL,
	onus_intl_comm_rate numeric NULL,
	onus_intl_comm_amt numeric NULL,
	onus_intl_comm_flag varchar(15) NULL,
	offus_dom_single_amt numeric NULL,
	offus_dom_single_cnt numeric NULL,
	offus_dom_daily_amt numeric NULL,
	offus_dom_daily_cnt numeric NULL,
	offus_dom_monthly_amt numeric NULL,
	offus_dom_monthly_cnt numeric NULL,
	offus_dom_annual_amt numeric NULL,
	offus_dom_annual_cnt numeric NULL,
	offus_dom_comm_rate numeric NULL,
	offus_dom_comm_amt numeric NULL,
	offus_dom_comm_flag varchar(15) NULL,
	offus_intl_single_amt numeric NULL,
	offus_intl_single_cnt numeric NULL,
	offus_intl_daily_amt numeric NULL,
	offus_intl_daily_cnt numeric NULL,
	offus_intl_monthly_amt numeric NULL,
	offus_intl_monthly_cnt numeric NULL,
	offus_intl_annual_amt numeric NULL,
	offus_intl_annual_cnt numeric NULL,
	offus_intl_comm_rate numeric NULL,
	offus_intl_comm_amt numeric NULL,
	offus_intl_comm_flag varchar(15) NULL,
	txn_type varchar(20) NULL,
	issuer_id numeric NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	soft_delete varchar(20) NULL,
	post_top_up_amt float8 NULL,
	instrument_id numeric NULL DEFAULT 0,
	instrument_profile_id numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	kyc_type varchar(20) NULL,
	txn_type_code numeric NULL,
	internal_txn_type varchar(6) NULL,
	otp_req varchar(3) NULL,
	pin_req varchar(3) NULL,
	signature_req varchar(3) NULL,
	iris_req varchar(3) NULL,
	face_recogn_req varchar(3) NULL,
	fingerprint_req varchar(3) NULL,
	pattern_req varchar(3) NULL,
	no_cvm varchar(3) NULL,
	mti varchar(4) NULL,
	proc_code varchar(2) NULL,
	min_first_top_amt numeric NULL,
	benef_single_amt numeric NULL,
	benef_daily_amt numeric NULL,
	benef_monthly_amt numeric NULL,
	benef_annual_amt numeric NULL,
	CONSTRAINT pk_prd_txn_profile_id1 PRIMARY KEY (id)
);


-- cms_card_verification definition

-- Drop table

-- DROP TABLE cms_card_verification;

CREATE TABLE cms_card_verification (
	id numeric NULL DEFAULT nextval('card_verification_seq'::regclass),
	transaction_id varchar(100) NULL,
	hash_card_no varchar(100) NULL,
	cavv varchar(50) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	status varchar(2) NULL
);


-- cms_cardwise_limit definition

-- Drop table

-- DROP TABLE cms_cardwise_limit;

CREATE TABLE cms_cardwise_limit (
	hash_card_no varchar(100) NULL,
	txn_type varchar(10) NULL,
	txn_type_mode varchar(12) NULL,
	created_date timestamp NULL,
	daily_dom_amt numeric NULL,
	daily_dom_cnt numeric NULL,
	daily_intl_amt numeric NULL,
	daily_intl_cnt numeric NULL
);


-- cms_cardwise_limit_history definition

-- Drop table

-- DROP TABLE cms_cardwise_limit_history;

CREATE TABLE cms_cardwise_limit_history (
	hash_card_no varchar(100) NULL,
	txn_type varchar(10) NULL,
	txn_type_mode varchar(12) NULL,
	created_date timestamp NULL,
	daily_dom_amt numeric NULL,
	daily_dom_cnt numeric NULL,
	daily_intl_amt numeric NULL,
	daily_intl_cnt numeric NULL,
	moved_date timestamp NULL
);


-- cms_channel_outlet_link definition

-- Drop table

-- DROP TABLE cms_channel_outlet_link;

CREATE TABLE cms_channel_outlet_link (
	channel_id numeric NULL,
	outlet_id varchar(20) NULL
);


-- cms_channels_master definition

-- Drop table

-- DROP TABLE cms_channels_master;

CREATE TABLE cms_channels_master (
	channel_name varchar(200) NULL,
	channel_id varchar(20) NULL,
	status varchar(20) NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	request_type varchar(200) NULL,
	channel_details varchar(200) NULL,
	channel_ip varchar(200) NULL,
	encryption varchar(200) NULL,
	created_date timestamp(6) NULL,
	updated_date timestamp(6) NULL,
	issuer_id numeric NULL,
	service_assigned varchar(20) NULL,
	soft_delete varchar(20) NULL,
	id numeric NOT NULL,
	session_expiry_time numeric NULL,
	org_id varchar(10) NULL,
	is_validate_browser numeric(1) NULL,
	is_validate_ip numeric(1) NULL,
	txn_id_prefix varchar(20) NULL,
	txn_seq_name varchar(30) NULL,
	pymt_mode varchar(100) NULL,
	CONSTRAINT cms_channels_master_pk PRIMARY KEY (id)
);


-- cms_clear_queue_summary definition

-- Drop table

-- DROP TABLE cms_clear_queue_summary;

CREATE TABLE cms_clear_queue_summary (
	id numeric NULL DEFAULT nextval('queue_summary_seq'::regclass),
	batch_id varchar(20) NULL,
	due_amount numeric NULL,
	created_by varchar(100) NULL,
	status varchar(2) NULL,
	remarks varchar(500) NULL,
	checker_by varchar(100) NULL,
	updated_date timestamp NULL,
	created_date timestamp NULL,
	issuer_id numeric NULL
);


-- cms_common_payment_config definition

-- Drop table

-- DROP TABLE cms_common_payment_config;

CREATE TABLE cms_common_payment_config (
	id numeric NULL,
	merchant_code varchar(50) NULL,
	secure_secret varchar(50) NULL,
	merchant_name varchar(100) NULL,
	merchant_user_name varchar(30) NULL,
	merchant_password varchar(30) NULL,
	pg_url varchar(200) NULL,
	pg_query_status_url varchar(200) NULL,
	refund_url varchar(200) NULL,
	api_querydr_url varchar(200) NULL,
	api_refund_url varchar(200) NULL,
	return_url varchar(200) NULL,
	jks_cert_path varchar(200) NULL,
	ks_cert_path varchar(200) NULL,
	key_store_password varchar(30) NULL,
	operating_mode varchar(3) NULL,
	merchant_country varchar(2) NULL,
	merchant_currency varchar(3) NULL,
	aggregator_id varchar(20) NULL,
	access_medium varchar(10) NULL,
	transaction_source varchar(10) NULL,
	issuer_id numeric NULL,
	institution_id numeric NULL,
	mo_id varchar(20) NULL,
	co_id varchar(20) NULL,
	ref001 varchar(32) NULL,
	ref002 varchar(32) NULL,
	ref003 varchar(20) NULL,
	ref004 varchar(20) NULL,
	ref005 varchar(20) NULL
);


-- cms_common_payments_details definition

-- Drop table

-- DROP TABLE cms_common_payments_details;

CREATE TABLE cms_common_payments_details (
	merchant_ref_no numeric NULL,
	pg_txn_id varchar(20) NULL,
	order_id varchar(20) NULL,
	merch_cust_id varchar(20) NULL,
	txn_type varchar(20) NULL,
	pay_mode varchar(10) NULL,
	amount numeric(7, 2) NULL,
	status varchar(20) NULL,
	reason varchar(255) NULL,
	fail_rc varchar(255) NULL,
	approval_code varchar(255) NULL,
	processor_response_code varchar(20) NULL,
	hash_card_no varchar(70) NULL,
	bank_code varchar(10) NULL,
	cin varchar(20) NULL,
	other_detail varchar(1000) NULL,
	gate_txn_ref_id varchar(40) NULL,
	gate_txn_date varchar(20) NULL,
	txn_created_date timestamp NULL,
	txn_processed_date timestamp NULL,
	cust_seq_id varchar(20) NULL,
	digital_txn_id numeric NULL,
	issuer_id numeric NULL,
	product_id numeric NULL,
	db_ts numeric NULL,
	ref001 varchar(100) NULL,
	ref002 varchar(20) NULL,
	ref003 varchar(20) NULL,
	ref004 varchar(20) NULL,
	ref005 varchar(20) NULL,
	bank_ref_no varchar(40) NULL
);


-- cms_contact_center_cust_data definition

-- Drop table

-- DROP TABLE cms_contact_center_cust_data;

CREATE TABLE cms_contact_center_cust_data (
	id numeric NULL DEFAULT nextval('cms_contact_cust_data_seq'::regclass),
	user_id varchar(20) NULL,
	created_date timestamp NULL,
	element_1 varchar(50) NULL,
	element_2 varchar(50) NULL,
	element_3 varchar(50) NULL,
	crn varchar(20) NULL,
	mobile_no numeric NULL
);


-- cms_contact_center_dtl definition

-- Drop table

-- DROP TABLE cms_contact_center_dtl;

CREATE TABLE cms_contact_center_dtl (
	id numeric NOT NULL DEFAULT nextval('contact_center_id_seq'::regclass),
	"name" varchar(50) NULL,
	service_name varchar(50) NULL,
	service_plan varchar(50) NULL,
	address_1 varchar(50) NULL,
	address_2 varchar(50) NULL,
	contact_person varchar(100) NULL,
	phone_no numeric NULL,
	mobile_no numeric NULL,
	email_id varchar(300) NULL,
	contact_center_no numeric NULL,
	created_by varchar(20) NULL,
	created_date timestamp NULL,
	CONSTRAINT cms_contact_center_dtl_pkey PRIMARY KEY (id)
);


-- cms_country_blacklist definition

-- Drop table

-- DROP TABLE cms_country_blacklist;

CREATE TABLE cms_country_blacklist (
	id numeric NULL,
	bin varchar(10) NULL,
	country_list varchar(500) NULL,
	instrument_id varchar(10) NULL,
	issuer_id varchar(5) NULL,
	product_id varchar(5) NULL,
	created_date timestamp NULL,
	created_by varchar(5) NULL,
	updated_date timestamp NULL,
	updated_by varchar(5) NULL
);


-- cms_country_whitelist definition

-- Drop table

-- DROP TABLE cms_country_whitelist;

CREATE TABLE cms_country_whitelist (
	card_ref_no varchar(20) NULL,
	country_list varchar(1000) NULL,
	nationality varchar(20) NULL,
	entry_date timestamp NULL,
	update_date timestamp NULL,
	updated_by varchar(20) NULL
);


-- cms_country_whitelist_history definition

-- Drop table

-- DROP TABLE cms_country_whitelist_history;

CREATE TABLE cms_country_whitelist_history (
	card_ref_number varchar(100) NULL,
	simba_id varchar(100) NULL,
	country_list varchar(500) NULL,
	raw_date varchar(1000) NULL,
	status varchar(1) NULL,
	remarks varchar(500) NULL,
	file_name varchar(500) NULL,
	batch_no varchar(500) NULL,
	file_uploaded_by varchar(500) NULL,
	file_uploaded_date timestamp NULL,
	id varchar(100) NULL,
	raw_data varchar(1000) NULL,
	nationality varchar(500) NULL,
	entry_date timestamp NULL,
	update_date timestamp NULL,
	updated_by varchar(100) NULL,
	record_no varchar(100) NULL
);


-- cms_country_whitelist_master definition

-- Drop table

-- DROP TABLE cms_country_whitelist_master;

CREATE TABLE cms_country_whitelist_master (
	card_ref_no varchar(20) NULL,
	country_list varchar(1000) NULL,
	nationality varchar(20) NULL,
	entry_date timestamp NULL,
	update_date timestamp NULL,
	updated_by varchar(20) NULL,
	insert_date timestamp NULL
);


-- cms_country_whitelist_summary definition

-- Drop table

-- DROP TABLE cms_country_whitelist_summary;

CREATE TABLE cms_country_whitelist_summary (
	id varchar(30) NULL,
	file_name varchar(30) NULL,
	total_count numeric NULL,
	total_amount numeric NULL,
	success_count numeric NULL,
	rejected_count numeric NULL,
	batch_no varchar(30) NULL,
	file_uploaded_by varchar(30) NULL,
	file_uploaded_date timestamp NULL
);


-- cms_country_whitelist_temp definition

-- Drop table

-- DROP TABLE cms_country_whitelist_temp;

CREATE TABLE cms_country_whitelist_temp (
	card_ref_number varchar(12) NULL,
	simba_id varchar(20) NULL,
	country_list varchar(500) NULL,
	raw_date varchar(1000) NULL,
	status varchar(1) NULL,
	remarks varchar(50) NULL,
	file_name varchar(30) NULL,
	batch_no varchar(30) NULL,
	file_uploaded_by varchar(30) NULL,
	file_uploaded_date timestamp NULL,
	id numeric NULL,
	entry_date timestamp NULL,
	update_date timestamp NULL,
	updated_by varchar(20) NULL,
	nationality varchar(20) NULL,
	record_no varchar(100) NULL
);


-- cms_cust_attempt_details definition

-- Drop table

-- DROP TABLE cms_cust_attempt_details;

CREATE TABLE cms_cust_attempt_details (
	cust_seq_id varchar(20) NULL,
	mobile_no numeric NOT NULL,
	reset_flag varchar(1) NULL,
	reset_date timestamp NULL,
	num_reset_attempt numeric NULL,
	forget_flag varchar(1) NULL,
	forget_date timestamp NULL,
	num_forget_attempt numeric NULL,
	entry_date timestamp NULL,
	num_wrong_num_attempt numeric NULL,
	wrong_num_flag varchar(1) NULL,
	wrong_num_date timestamp NULL,
	num_otp_attempt numeric NULL,
	otp_flag varchar(1) NULL,
	otp_date timestamp NULL,
	otp_link_flag varchar(5) NULL,
	action_name varchar(30) NULL
);
CREATE INDEX ind_cust_attempt_mob ON cms_cust_attempt_details USING btree (mobile_no);
CREATE INDEX ind_cust_id_otp ON cms_cust_attempt_details USING btree (cust_seq_id);


-- cms_cust_details definition

-- Drop table

-- DROP TABLE cms_cust_details;

CREATE TABLE cms_cust_details (
	salutation varchar(20) NULL,
	first_name varchar(100) NULL,
	middle_name varchar(100) NULL,
	last_name varchar(100) NULL,
	age numeric NULL,
	gender varchar(20) NULL,
	date_of_birth varchar(20) NULL,
	current_address_line1 varchar(255) NULL,
	current_address_line2 varchar(255) NULL,
	current_address_line3 varchar(255) NULL,
	current_pin_code numeric NULL,
	current_city varchar(20) NULL DEFAULT 0,
	current_state varchar(20) NULL DEFAULT 0,
	current_country varchar(20) NULL DEFAULT 0,
	permanent_address_line1 varchar(255) NULL,
	permanent_address_line2 varchar(255) NULL,
	permanent_address_line3 varchar(255) NULL,
	permanent_pin_code numeric NULL,
	permanent_city varchar(20) NULL,
	permanent_state varchar(20) NULL,
	permanent_country varchar(20) NULL,
	current_landline_number varchar(20) NULL,
	permanent_landline_number varchar(20) NULL,
	mobile_number numeric NULL,
	email_id varchar(255) NULL,
	fax_no varchar(20) NULL,
	marital_status varchar(20) NULL,
	minor_flag varchar(1) NULL,
	nre_o varchar(1) NULL,
	occupation varchar(20) NULL,
	pan_number varchar(64) NULL,
	aadhar_number varchar(64) NULL,
	passport_number varchar(64) NULL,
	image_details varchar(255) NULL,
	company_name varchar(20) NULL,
	company_address_line1 varchar(255) NULL,
	company_address_line2 varchar(255) NULL,
	company_address_line3 varchar(255) NULL,
	company_telephone_number1 varchar(20) NULL,
	company_fax_number1 varchar(20) NULL,
	company_url varchar(255) NULL,
	company_city varchar(20) NULL,
	company_state varchar(20) NULL,
	company_country varchar(20) NULL,
	company_code varchar(20) NULL,
	education varchar(20) NULL,
	license_number varchar(64) NULL,
	photo_nonphoto varchar(1) NULL,
	branch_id numeric NULL,
	staf_code varchar(20) NULL,
	embossing_line2 varchar(20) NULL,
	card_type varchar(20) NULL,
	product_id numeric NULL,
	bin numeric NULL,
	batch_no varchar(20) NULL,
	kyc_required varchar(20) NULL,
	cust_ref_number varchar(20) NULL,
	prepaid_account_number varchar(23) NULL,
	uploaded_by numeric NULL,
	uploaded_on timestamp NULL,
	card_gen_date timestamp NULL,
	card_gen_by numeric NULL,
	pin_gen_date timestamp NULL,
	pin_gen_by numeric NULL,
	cvv_gen_date timestamp NULL,
	cvv_gen_by numeric NULL,
	embossing_file_gen_date timestamp NULL,
	embossing_file_gen_by numeric NULL,
	embossing_file_name varchar(255) NULL,
	cust_seq_id varchar(20) NOT NULL,
	issuer_id numeric NULL,
	dispatch_status varchar(20) NULL,
	checker_status varchar(20) NULL,
	checker_verified_on timestamp NULL,
	checker_verified_by numeric NULL,
	tag_generated_by numeric NULL,
	tag_generated_date timestamp NULL,
	embossname varchar(300) NULL,
	cheker_description varchar(255) NULL,
	outlet_id varchar(20) NULL,
	application_ref_no varchar(20) NULL,
	photo_id varchar(50) NULL,
	pass_type varchar(100) NULL,
	pass_amount float8 NULL,
	delivery_dest varchar(255) NULL,
	old_to_newaccount_flag varchar(20) NULL,
	old_card_number varchar(20) NULL,
	n_rega_job_card varchar(64) NULL,
	voter_id varchar(64) NULL,
	cust_type varchar(100) NULL,
	status varchar(50) NULL,
	kyc_flag varchar(20) NULL,
	min_kyc_updated_date timestamp NULL,
	max_kyc_updated_date timestamp NULL,
	is_minor varchar(2) NULL,
	employee_mol_id varchar(35) NULL,
	emirates_id varchar(35) NULL,
	emirates_name varchar(50) NULL,
	nationality varchar(3) NULL,
	product_code varchar(3) NULL,
	embossa_name1 varchar(26) NULL,
	embossa_name2 varchar(26) NULL,
	embossa_name3 varchar(26) NULL,
	employee_id varchar(35) NULL,
	employer_id varchar(35) NULL,
	employee_name varchar(200) NULL,
	employee_account_number varchar(200) NULL,
	employee_active_status varchar(5) NULL,
	employee_active_status_date timestamp NULL,
	updated_by varchar(100) NULL,
	updated_date timestamp NULL,
	employee_deactive_status_date timestamp NULL,
	remarks varchar(900) NULL,
	mothers_name varchar(100) NULL,
	card_holder_code varchar(25) NULL,
	product_name varchar(50) NULL,
	preloaded_amount varchar(8) NULL,
	bank_cust_unique_id varchar(20) NULL,
	requested_kyc_type varchar(3) NULL,
	bin_card_type varchar(40) NULL,
	order_type varchar(2) NULL,
	CONSTRAINT cons_pk_cust_seq_id PRIMARY KEY (cust_seq_id),
	CONSTRAINT cons_uniq_emploee_id UNIQUE (employee_id)
);


-- cms_cust_details_extension definition

-- Drop table

-- DROP TABLE cms_cust_details_extension;

CREATE TABLE cms_cust_details_extension (
	name_on_card varchar(255) NULL,
	customer_id varchar(255) NULL,
	is_customer_updated varchar(20) NULL,
	is_card_generated varchar(20) NULL,
	is_pass_details_updated varchar(20) NULL,
	is_pin_set varchar(20) NULL,
	institution_type varchar(20) NULL,
	institution_id varchar(20) NULL,
	addressline1 varchar(80) NULL,
	customer_type varchar(20) NULL,
	is_payment_done varchar(20) NULL,
	national_id_type varchar(20) NULL,
	national_id varchar(64) NULL,
	address varchar(255) NULL,
	relationship varchar(20) NULL,
	delivery_address varchar(20) NULL,
	is_delivery_updated varchar(20) NULL,
	cust_seq_id varchar(20) NOT NULL,
	caste_obc_category varchar(20) NULL,
	is_beneficiary_updated varchar(20) NULL,
	payment_mode varchar(20) NULL,
	student_id_flag varchar(3) NULL,
	delivery_address_mode varchar(20) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	name_on_adhaar varchar(255) NULL,
	mother_title varchar(20) NULL,
	mother_first_name varchar(50) NULL,
	mother_middle_name varchar(50) NULL,
	mother_last_name varchar(50) NULL,
	father_title varchar(20) NULL,
	father_first_name varchar(50) NULL,
	father_middle_name varchar(50) NULL,
	father_last_name varchar(50) NULL,
	nominee_name varchar(200) NULL,
	nominee_account_number varchar(200) NULL,
	nominee_ifsc_code varchar(50) NULL,
	is_bank_customer varchar(5) NULL,
	bank_detail_type varchar(100) NULL,
	bank_detail varchar(500) NULL,
	mother_maiden_name varchar(100) NULL,
	axis_kyc_status varchar(20) NULL,
	uid_flag varchar(5) NULL,
	type_of_app varchar(100) NULL,
	source_of_funds varchar(100) NULL,
	physical_status varchar(100) NULL,
	otherthan_agri_inc varchar(20) NULL,
	maiden_prefix varchar(100) NULL,
	maiden_lastname varchar(100) NULL,
	maiden_firstname varchar(100) NULL,
	istaxresident_of_india varchar(100) NULL,
	date_of_app varchar(50) NULL,
	axis_bank_custid varchar(100) NULL,
	annual_income varchar(20) NULL,
	agriculture_income numeric NULL DEFAULT 0,
	ack_number varchar(100) NULL,
	aadhar_ref_no varchar(100) NULL,
	cif_id varchar(20) NULL,
	cif_uploaded_by varchar(5) NULL,
	cif_uploaded_on timestamp NULL,
	residential_status varchar(20) NULL,
	npr_number varchar(64) NULL,
	ppims_kyc_status varchar(1) NULL,
	kyc_updated_channel varchar(4) NULL,
	ppims_limit numeric NULL DEFAULT 0,
	ppims_unique_id varchar(20) NULL,
	kyc_updated_on timestamp NULL,
	ppims_updated_flag varchar(1) NULL,
	created_by varchar(20) NULL,
	ppims_old_unique_id varchar(20) NULL,
	allow_flag varchar(2) NULL,
	cumulative_balance varchar(20) NULL,
	kyc_flag varchar(20) NOT NULL DEFAULT 'N'::character varying,
	available_bal varchar(20) NULL,
	available_limit varchar(20) NULL,
	updated_by varchar(10) NULL,
	dnd_flag varchar(10) NULL,
	residential_type varchar(100) NULL,
	lang_of_communication varchar(100) NULL,
	origin varchar(50) NULL,
	destination varchar(50) NULL,
	monthly_pass_duration varchar(9) NULL,
	ovdtype varchar(100) NULL,
	ovdvalue varchar(50) NULL,
	passflag varchar(5) NULL,
	amount numeric NULL,
	guardianname varchar(50) NULL,
	form60 varchar(50) NULL,
	poi varchar(50) NULL,
	bebneficiary_account_name varchar(50) NULL,
	beneficiryaccountno varchar(15) NULL,
	beneficiaryifsccode varchar(12) NULL,
	eformbarcode varchar(50) NULL,
	lgcode varchar(50) NULL,
	lccode varchar(50) NULL,
	is_kyc_recevied varchar(2) NULL,
	CONSTRAINT exte_cif_id_benefi UNIQUE (cif_id, beneficiryaccountno)
);


-- cms_cust_details_history definition

-- Drop table

-- DROP TABLE cms_cust_details_history;

CREATE TABLE cms_cust_details_history (
	salutation varchar(20) NULL,
	first_name varchar(100) NULL,
	middle_name varchar(20) NULL,
	last_name varchar(100) NULL,
	age numeric NULL,
	gender varchar(20) NULL,
	date_of_birth varchar(20) NULL,
	current_address_line1 varchar(255) NULL,
	current_address_line2 varchar(255) NULL,
	current_address_line3 varchar(255) NULL,
	current_pin_code numeric NULL,
	current_city varchar(20) NULL,
	current_state varchar(20) NULL,
	current_country varchar(20) NULL,
	permanent_address_line1 varchar(255) NULL,
	permanent_address_line2 varchar(255) NULL,
	permanent_address_line3 varchar(255) NULL,
	permanent_pin_code numeric NULL,
	permanent_city varchar(20) NULL,
	permanent_state varchar(20) NULL,
	permanent_country varchar(20) NULL,
	current_landline_number varchar(20) NULL,
	permanent_landline_number varchar(20) NULL,
	mobile_number numeric NULL,
	email_id varchar(255) NULL,
	fax_no varchar(20) NULL,
	marital_status varchar(20) NULL,
	minor_flag varchar(1) NULL,
	nre_o varchar(1) NULL,
	occupation varchar(20) NULL,
	pan_number varchar(64) NULL,
	aadhar_number varchar(64) NULL,
	passport_number varchar(64) NULL,
	image_details varchar(255) NULL,
	company_name varchar(20) NULL,
	company_address_line1 varchar(255) NULL,
	company_address_line2 varchar(255) NULL,
	company_address_line3 varchar(255) NULL,
	company_telephone_number1 varchar(20) NULL,
	company_fax_number1 varchar(20) NULL,
	company_url varchar(255) NULL,
	company_city varchar(20) NULL,
	company_state varchar(20) NULL,
	company_country varchar(20) NULL,
	company_code varchar(20) NULL,
	education varchar(20) NULL,
	license_number varchar(64) NULL,
	photo_nonphoto varchar(1) NULL,
	branch_id numeric NULL,
	staf_code varchar(20) NULL,
	embossing_line2 varchar(20) NULL,
	card_type varchar(20) NULL,
	product_id numeric NULL,
	bin numeric NULL,
	batch_no varchar(20) NULL,
	kyc_required varchar(20) NULL,
	cust_ref_number varchar(20) NULL,
	prepaid_account_number varchar(23) NULL,
	uploaded_by numeric NULL,
	uploaded_on timestamp NULL,
	card_gen_date timestamp NULL,
	card_gen_by numeric NULL,
	pin_gen_date timestamp NULL,
	pin_gen_by numeric NULL,
	cvv_gen_date timestamp NULL,
	cvv_gen_by numeric NULL,
	embossing_file_gen_date timestamp NULL,
	embossing_file_gen_by numeric NULL,
	embossing_file_name varchar(255) NULL,
	cust_seq_id varchar(20) NULL,
	issuer_id numeric NULL,
	dispatch_status varchar(20) NULL,
	checker_status varchar(20) NULL,
	checker_verified_on timestamp NULL,
	checker_verified_by numeric NULL,
	tag_generated_by numeric NULL,
	tag_generated_date timestamp NULL,
	embossname varchar(300) NULL,
	cheker_description varchar(255) NULL,
	outlet_id varchar(20) NULL,
	application_ref_no varchar(20) NULL,
	photo_id varchar(50) NULL,
	pass_type varchar(100) NULL,
	pass_amount float8 NULL,
	delivery_dest varchar(255) NULL,
	old_to_newaccount_flag varchar(20) NULL,
	old_card_number varchar(20) NULL,
	n_rega_job_card varchar(64) NULL,
	voter_id varchar(64) NULL,
	cust_type varchar(100) NULL,
	status varchar(50) NULL,
	kyc_flag varchar(20) NULL,
	min_kyc_updated_date timestamp NULL,
	max_kyc_updated_date timestamp NULL,
	is_minor varchar(2) NULL,
	insert_date timestamp NULL,
	inserted_by varchar(2000) NULL,
	remarks varchar(4000) NULL,
	id numeric NULL,
	insert_time timestamp NULL,
	mothers_name varchar(100) NULL,
	emirates_id varchar(35) NULL,
	emirates_name varchar(50) NULL,
	employee_mol_id varchar(35) NULL,
	employer_id varchar(35) NULL,
	employee_id varchar(35) NULL,
	nationality varchar(3) NULL,
	product_code varchar(3) NULL,
	embossa_name1 varchar(26) NULL,
	embossa_name2 varchar(26) NULL,
	embossa_name3 varchar(26) NULL,
	employee_name varchar(200) NULL,
	employee_account_number varchar(200) NULL,
	employee_active_status varchar(5) NULL,
	employee_active_status_date timestamp NULL,
	updated_by varchar(100) NULL,
	updated_date timestamp NULL,
	employee_deactive_status_date timestamp NULL,
	card_holder_code varchar(25) NULL
);


-- cms_customer_authenticate definition

-- Drop table

-- DROP TABLE cms_customer_authenticate;

CREATE TABLE cms_customer_authenticate (
	mobile_no_flag varchar(2) NULL,
	dob_flag varchar(2) NULL,
	emirates_no_flag varchar(2) NULL,
	mothers_name_flag varchar(2) NULL,
	corporate_name_flag varchar(2) NULL,
	updated_date_time timestamp NULL,
	valid_count numeric(1) NULL,
	invalid_count numeric(1) NULL,
	selected_count numeric(1) NULL,
	mob_no numeric(15) NULL,
	dob varchar(10) NULL,
	hash_card_no varchar(70) NULL,
	employee_id varchar(35) NULL,
	authenticated_by varchar(20) NULL,
	authentication_status varchar(20) NULL,
	remark varchar(100) NULL,
	id varchar(100) NOT NULL,
	CONSTRAINT cms_customer_authenticate_pkey PRIMARY KEY (id)
);


-- cms_emb_gen_history definition

-- Drop table

-- DROP TABLE cms_emb_gen_history;

CREATE TABLE cms_emb_gen_history (
	id numeric NULL,
	file_name varchar(100) NULL,
	file_gen_date timestamp NULL,
	batch_no varchar(20) NULL,
	total_records numeric NULL,
	card_type varchar(20) NULL,
	sftp_timestamp timestamp NULL,
	created_by numeric NULL
);


-- cms_embossing_format definition

-- Drop table

-- DROP TABLE cms_embossing_format;

CREATE TABLE cms_embossing_format (
	bin varchar(8) NULL,
	product_id varchar(20) NULL,
	id numeric NOT NULL,
	pan_no varchar(100) NULL,
	pan_no_length varchar(3) NULL,
	pass_type varchar(100) NULL,
	pass_type_length varchar(3) NULL,
	application_ref_no varchar(100) NULL,
	application_ref_no_length varchar(3) NULL,
	filler_1 varchar(100) NULL,
	filler_1_length varchar(3) NULL,
	validity varchar(100) NULL,
	validity_length varchar(3) NULL,
	card_ref_no varchar(100) NULL,
	card_ref_no_length varchar(3) NULL,
	photo_id varchar(100) NULL,
	photo_id_length varchar(3) NULL,
	filler_2 varchar(100) NULL,
	filler_2_length varchar(3) NULL,
	name_address varchar(100) NULL,
	name_address_length varchar(3) NULL,
	filler_3_3_1 varchar(100) NULL,
	filler_3_3_1_length varchar(3) NULL,
	cvd_2 varchar(100) NULL,
	cvd_2_length varchar(3) NULL,
	filler_4 varchar(100) NULL,
	filler_4_length varchar(3) NULL,
	track1 varchar(150) NULL,
	track1_length varchar(3) NULL,
	filler_5 varchar(100) NULL,
	filler_5_length varchar(3) NULL,
	track2 varchar(150) NULL,
	track2_length varchar(3) NULL,
	outlet_details varchar(150) NULL,
	outlet_details_length varchar(3) NULL,
	i_cvd varchar(100) NULL,
	i_cvd_length varchar(3) NULL,
	line1_start varchar(2) NULL,
	line2_start varchar(2) NULL,
	line3_start varchar(3) NULL,
	line4_start varchar(3) NULL,
	intenddata_start varchar(3) NULL,
	track1_start varchar(3) NULL,
	track2_start varchar(3) NULL,
	sp1_char varchar(2) NULL,
	sp2_char varchar(3) NULL,
	sp3_char varchar(3) NULL,
	sp4_char varchar(3) NULL,
	sp5_char varchar(3) NULL,
	format_code varchar(2) NULL,
	track3_start varchar(3) NULL,
	address1 varchar(20) NULL,
	address2 varchar(20) NULL,
	city varchar(20) NULL,
	pincode varchar(20) NULL,
	state varchar(20) NULL,
	address1_length varchar(3) NULL,
	address2_length varchar(3) NULL,
	city_length varchar(3) NULL,
	pincode_length varchar(3) NULL,
	state_length varchar(3) NULL,
	outlet_address varchar(20) NULL,
	outlet_address_length varchar(3) NULL,
	delivery_dest varchar(2) NULL,
	delivery_dest_length numeric NULL,
	mobile_number varchar(15) NULL,
	mobile_number_length numeric NULL,
	embossa_name1 varchar(15) NULL,
	embossa_name1_length numeric NULL,
	embossa_name2 varchar(15) NULL,
	embossa_name2_length numeric NULL,
	embossa_name3 varchar(15) NULL,
	embossa_name3_length numeric NULL,
	employer_name varchar(15) NULL,
	employer_name_length numeric NULL,
	employer_id varchar(15) NULL,
	employer_id_length numeric NULL,
	employee_id varchar(15) NULL,
	employee_id_length numeric NULL,
	product_id_length numeric NULL,
	card_design_code varchar(4) NULL,
	card_design_code_length numeric NULL,
	"name" varchar(100) NULL,
	CONSTRAINT pk_emcossa_format_id PRIMARY KEY (id)
);


-- cms_embossing_master definition

-- Drop table

-- DROP TABLE cms_embossing_master;

CREATE TABLE cms_embossing_master (
	"DEVICE_CTL_LINE" varchar(20) NULL,
	"CARD_SIZE" varchar(20) NULL,
	"LEFT_MARGIN_SIZE" varchar(20) NULL,
	"SP1" varchar(20) NULL,
	"FONT1" varchar(20) NULL,
	"BOTTOM_HEIGHT1" varchar(20) NULL,
	"SP2" varchar(20) NULL,
	"FONT2" varchar(20) NULL,
	"BOTTOM_HEIGHT2" varchar(20) NULL,
	"SP3" varchar(20) NULL,
	"FONT3" varchar(20) NULL,
	"BOTTOM_HEIGHT3" varchar(20) NULL,
	"END_DCL" varchar(20) NULL,
	"HEADER_LENGTH" varchar(20) NULL,
	"ID" numeric NULL
);


-- cms_emd_enquiry definition

-- Drop table

-- DROP TABLE cms_emd_enquiry;

CREATE TABLE cms_emd_enquiry (
	account_number varchar(30) NULL,
	book_bal numeric NULL,
	net_bal numeric NULL,
	insert_time timestamp NULL,
	user_name varchar(30) NULL,
	id numeric NOT NULL,
	CONSTRAINT cms_emd_enquiry_pkey PRIMARY KEY (id)
);


-- cms_employee_onboard_history definition

-- Drop table

-- DROP TABLE cms_employee_onboard_history;

CREATE TABLE cms_employee_onboard_history (
	id varchar(100) NOT NULL,
	employee_id varchar(1000) NULL,
	employer_id varchar(1000) NULL,
	employee_dob varchar(1000) NULL,
	employee_mobile_number varchar(1000) NULL,
	employee_address varchar(1000) NULL,
	employee_account_number varchar(1000) NULL,
	kyc_flag varchar(1000) NULL,
	cust_seq_id varchar(1000) NULL,
	action_flag varchar(1000) NULL,
	status varchar(2) NULL,
	remarks varchar(100) NULL,
	remarks_description varchar(600) NULL,
	batch_no varchar(1000) NULL,
	file_name varchar(1000) NULL,
	file_uploaded_by varchar(50) NULL,
	file_uploaded_date timestamp NULL,
	product_id varchar(10) NULL,
	bin varchar(10) NULL,
	raw_data varchar(5000) NULL,
	employee_mol_id varchar(1000) NULL,
	emirates_id varchar(1000) NULL,
	emirates_name varchar(1000) NULL,
	nationality varchar(1000) NULL,
	product_code varchar(1000) NULL,
	embossa_name1 varchar(1000) NULL,
	embossa_name2 varchar(1000) NULL,
	embossa_name3 varchar(1000) NULL,
	employee_last_name varchar(1000) NULL,
	employee_first_name varchar(1000) NULL,
	gender varchar(201) NULL,
	mother_name varchar(100) NULL,
	card_holder_code varchar(100) NULL,
	record_no varchar(100) NULL
);


-- cms_employee_onboard_summary definition

-- Drop table

-- DROP TABLE cms_employee_onboard_summary;

CREATE TABLE cms_employee_onboard_summary (
	id numeric NULL,
	file_name varchar(30) NULL,
	total_count numeric NULL,
	add_count numeric NULL,
	update_count numeric NULL,
	disable_count numeric NULL,
	success_count numeric NULL,
	reject_count numeric NULL,
	exception_count numeric NULL,
	batch_no varchar(20) NULL,
	file_uploaded_by numeric NULL,
	file_uploaded_date timestamp NULL
);


-- cms_employee_onboard_temp definition

-- Drop table

-- DROP TABLE cms_employee_onboard_temp;

CREATE TABLE cms_employee_onboard_temp (
	id numeric NULL,
	employee_id varchar(35) NOT NULL,
	employer_id varchar(35) NULL,
	employee_dob varchar(10) NULL,
	employee_mobile_number varchar(15) NULL,
	employee_address varchar(100) NULL,
	employee_account_number varchar(23) NULL,
	kyc_flag varchar(1) NULL,
	cust_seq_id varchar(20) NULL,
	action_flag varchar(1) NULL,
	status varchar(1) NULL,
	remarks varchar(50) NULL,
	remarks_description varchar(300) NULL,
	batch_no varchar(20) NULL,
	file_name varchar(30) NULL,
	file_uploaded_by numeric NULL,
	file_uploaded_date timestamp NULL,
	product_id numeric NULL,
	bin numeric NULL,
	employee_mol_id varchar(35) NULL,
	emirates_id varchar(35) NULL,
	emirates_name varchar(50) NULL,
	nationality varchar(3) NULL,
	product_code varchar(3) NULL,
	embossa_name1 varchar(26) NULL,
	embossa_name2 varchar(26) NULL,
	embossa_name3 varchar(26) NULL,
	employee_first_name varchar(100) NULL,
	employee_last_name varchar(100) NULL,
	gender varchar(1) NULL,
	mother_name varchar(50) NULL,
	card_holder_code varchar(25) NULL,
	record_no varchar(100) NULL
);


-- cms_employee_salary_history definition

-- Drop table

-- DROP TABLE cms_employee_salary_history;

CREATE TABLE cms_employee_salary_history (
	id varchar(500) NULL,
	card_ref_number varchar(500) NULL,
	amount varchar(500) NULL,
	file_name varchar(500) NULL,
	batch_no varchar(500) NULL,
	status varchar(1) NULL,
	remarks varchar(1000) NULL,
	raw_data varchar(5000) NULL,
	file_uploaded_by varchar(500) NULL,
	file_uploaded_date timestamp NULL,
	"comment" varchar(500) NULL,
	unique_file_id varchar(500) NULL,
	record_no varchar(100) NULL
);


-- cms_employee_salary_summary definition

-- Drop table

-- DROP TABLE cms_employee_salary_summary;

CREATE TABLE cms_employee_salary_summary (
	id varchar(30) NULL,
	file_name varchar(30) NULL,
	total_count numeric NULL,
	total_amount numeric NULL,
	success_count numeric NULL,
	rejected_count numeric NULL,
	batch_no varchar(30) NULL,
	file_uploaded_by varchar(30) NULL,
	file_uploaded_date timestamp NULL
);


-- cms_employee_salary_temp definition

-- Drop table

-- DROP TABLE cms_employee_salary_temp;

CREATE TABLE cms_employee_salary_temp (
	id varchar(30) NULL,
	card_ref_number varchar(20) NULL,
	amount numeric NULL,
	file_name varchar(30) NULL,
	batch_no varchar(30) NULL,
	status varchar(1) NULL,
	remarks varchar(50) NULL,
	file_uploaded_by varchar(30) NULL,
	file_uploaded_date timestamp NULL,
	"comment" varchar(100) NULL,
	unique_file_id varchar(20) NULL,
	record_no varchar(100) NULL
);


-- cms_employee_status definition

-- Drop table

-- DROP TABLE cms_employee_status;

CREATE TABLE cms_employee_status (
	id numeric NULL,
	status varchar(20) NULL,
	description varchar(20) NULL
);


-- cms_employee_update_history definition

-- Drop table

-- DROP TABLE cms_employee_update_history;

CREATE TABLE cms_employee_update_history (
	id varchar(100) NULL,
	employee_id varchar(500) NULL,
	employer_id varchar(500) NULL,
	employee_dob varchar(500) NULL,
	employee_mobile_number varchar(500) NULL,
	employee_address varchar(500) NULL,
	employee_account_number varchar(500) NULL,
	kyc_flag varchar(500) NULL,
	cust_seq_id varchar(500) NULL,
	action_flag varchar(500) NULL,
	status varchar(1) NULL,
	remarks varchar(500) NULL,
	remarks_description varchar(500) NULL,
	batch_no varchar(500) NULL,
	file_name varchar(500) NULL,
	file_uploaded_by varchar(100) NULL,
	file_uploaded_date timestamp NULL,
	product_id varchar(100) NULL,
	bin varchar(100) NULL,
	raw_data varchar(5000) NULL,
	employee_mol_id varchar(500) NULL,
	emirates_id varchar(500) NULL,
	emirates_name varchar(500) NULL,
	nationality varchar(500) NULL,
	product_code varchar(500) NULL,
	embossa_name1 varchar(500) NULL,
	embossa_name2 varchar(500) NULL,
	embossa_name3 varchar(500) NULL,
	employee_first_name varchar(500) NULL,
	employee_last_name varchar(500) NULL,
	gender varchar(20) NULL,
	mothers_name varchar(500) NULL,
	card_holder_code varchar(500) NULL,
	record_no varchar(100) NULL
);


-- cms_employee_update_summary definition

-- Drop table

-- DROP TABLE cms_employee_update_summary;

CREATE TABLE cms_employee_update_summary (
	id numeric NULL,
	file_name varchar(30) NULL,
	total_count numeric NULL,
	add_count numeric NULL,
	update_count numeric NULL,
	disable_count numeric NULL,
	success_count numeric NULL,
	reject_count numeric NULL,
	exception_count numeric NULL,
	batch_no varchar(20) NULL,
	file_uploaded_by numeric NULL,
	file_uploaded_date timestamp NULL
);


-- cms_employee_update_temp definition

-- Drop table

-- DROP TABLE cms_employee_update_temp;

CREATE TABLE cms_employee_update_temp (
	id numeric NULL,
	employee_id varchar(35) NULL,
	employer_id varchar(35) NULL,
	employee_dob varchar(10) NULL,
	employee_mobile_number varchar(15) NULL,
	employee_address varchar(100) NULL,
	employee_account_number varchar(23) NULL,
	kyc_flag varchar(1) NULL,
	cust_seq_id varchar(20) NULL,
	action_flag varchar(1) NULL,
	status varchar(1) NULL,
	remarks varchar(50) NULL,
	remarks_description varchar(300) NULL,
	batch_no varchar(20) NULL,
	file_name varchar(30) NULL,
	file_uploaded_by numeric NULL,
	file_uploaded_date timestamp NULL,
	product_id numeric NULL,
	bin numeric NULL,
	employee_mol_id varchar(35) NULL,
	emirates_id varchar(35) NULL,
	emirates_name varchar(50) NULL,
	nationality varchar(3) NULL,
	product_code varchar(3) NULL,
	embossa_name1 varchar(26) NULL,
	embossa_name2 varchar(26) NULL,
	embossa_name3 varchar(26) NULL,
	employee_first_name varchar(100) NULL,
	employee_last_name varchar(100) NULL,
	gender varchar(20) NULL,
	mothers_name varchar(100) NULL,
	card_holder_code varchar(25) NULL,
	record_no varchar(100) NULL
);


-- cms_event_actions definition

-- Drop table

-- DROP TABLE cms_event_actions;

CREATE TABLE cms_event_actions (
	id numeric NOT NULL,
	event_id numeric NOT NULL,
	action_id numeric NOT NULL,
	product_id numeric NULL,
	issuer_id numeric NULL,
	post_process varchar(2) NULL DEFAULT 'Y'::character varying,
	status varchar(2) NULL DEFAULT 'A'::character varying,
	created_date timestamp NULL DEFAULT sysdate,
	created_by varchar(100) NULL,
	description varchar(2000) NULL,
	CONSTRAINT sys_c0079808 PRIMARY KEY (id)
);


-- cms_events_master definition

-- Drop table

-- DROP TABLE cms_events_master;

CREATE TABLE cms_events_master (
	event_id numeric NOT NULL,
	event_name varchar(100) NULL,
	status varchar(2) NULL DEFAULT 'A'::character varying,
	created_date timestamp NULL DEFAULT sysdate,
	created_by varchar(100) NULL,
	description varchar(2000) NULL,
	CONSTRAINT cms_events_master_pkey PRIMARY KEY (event_id)
);


-- cms_hotlist_reason_code definition

-- Drop table

-- DROP TABLE cms_hotlist_reason_code;

CREATE TABLE cms_hotlist_reason_code (
	id numeric NULL,
	reason_message varchar(100) NULL,
	reason_code varchar(100) NULL,
	card_type varchar(100) NULL,
	flag_hotlist_portal varchar(2) NULL,
	card_flag varchar(5) NULL,
	status varchar(2) NULL DEFAULT 'Y'::character varying
);


-- cms_hotlisted_reason_code definition

-- Drop table

-- DROP TABLE cms_hotlisted_reason_code;

CREATE TABLE cms_hotlisted_reason_code (
	id numeric NULL,
	reason_code varchar(4) NULL,
	reason_message varchar(50) NULL
);


-- cms_hsm_config definition

-- Drop table

-- DROP TABLE cms_hsm_config;

CREATE TABLE cms_hsm_config (
	hsm_ip varchar(50) NULL,
	hsm_port varchar(50) NULL,
	printer_ip varchar(50) NULL,
	printer_port varchar(50) NULL,
	created_by varchar(50) NULL,
	created_date varchar(50) NULL,
	switch_ip varchar(50) NULL,
	switch_port varchar(50) NULL,
	id numeric NOT NULL
);


-- cms_hsm_pin_key_config definition

-- Drop table

-- DROP TABLE cms_hsm_pin_key_config;

CREATE TABLE cms_hsm_pin_key_config (
	id numeric NOT NULL,
	institution_id numeric NULL,
	issuer_id numeric NULL,
	rsa_key_spec varchar(20) NULL,
	ppk_spec varchar(20) NULL,
	pvk_spec varchar(20) NULL,
	pin_block_format varchar(20) NULL,
	hash_algorithm varchar(20) NULL,
	modulus varchar(1000) NULL,
	exponent varchar(1000) NULL,
	CONSTRAINT cms_hsm_pin_key_config_pk PRIMARY KEY (id)
);


-- cms_hsmkey_configuration definition

-- Drop table

-- DROP TABLE cms_hsmkey_configuration;

CREATE TABLE cms_hsmkey_configuration (
	issuer_id numeric NULL,
	bin numeric NULL,
	cvv_key varchar(50) NULL,
	pin_key varchar(50) NULL,
	created_by varchar(20) NULL,
	created_date timestamp NULL,
	modified_by varchar(20) NULL,
	modified_date timestamp NULL,
	id numeric(19) NOT NULL,
	ppk_pos varchar(6) NULL,
	ppk_atm varchar(6) NULL,
	pvk varchar(6) NULL,
	imkac varchar(6) NULL,
	imksmi varchar(6) NULL,
	imksmc varchar(6) NULL,
	CONSTRAINT uk_hsm_bin UNIQUE (bin)
);


-- cms_invalid_otp_details definition

-- Drop table

-- DROP TABLE cms_invalid_otp_details;

CREATE TABLE cms_invalid_otp_details (
	id numeric NULL,
	mobile_number numeric NULL,
	service_name varchar(30) NULL,
	invalid_otp varchar(20) NULL,
	sys_txn_date timestamp NULL
);


-- cms_inventory_summary definition

-- Drop table

-- DROP TABLE cms_inventory_summary;

CREATE TABLE cms_inventory_summary (
	card_id varchar(50) NULL,
	blank_card varchar(50) NULL,
	persuade_card varchar(50) NULL,
	dispatched_card varchar(50) NULL,
	ack_card varchar(50) NULL,
	issued_card varchar(50) NULL,
	final_availble_card varchar(50) NULL,
	inventory_date timestamp(6) NULL,
	created_by varchar(50) NULL,
	created_on timestamp(6) NULL,
	damage_card varchar(50) NULL,
	test_card varchar(50) NULL,
	card_type varchar(50) NULL,
	branch_name varchar(50) NULL
);


-- cms_issuer_config definition

-- Drop table

-- DROP TABLE cms_issuer_config;

CREATE TABLE cms_issuer_config (
	id numeric NOT NULL,
	no_of_outlet_users numeric NULL,
	issuer_id numeric NULL,
	card_req_multiplier numeric NULL,
	embossing_supress varchar(20) NULL,
	sftp_hostname varchar(50) NULL,
	sftp_password varchar(255) NULL,
	sftp_path varchar(1000) NULL,
	sftp_username varchar(50) NULL,
	retention_period_for_emb numeric NULL,
	card_gen_multiplier numeric NULL,
	sftp_demog_file_path varchar(1000) NULL,
	sftp_amlock_file_path varchar(1000) NULL,
	hsm_type varchar(20) NULL,
	place_sftp_flag varchar(20) NULL,
	max_bal_transfer_amount numeric NULL,
	threshold_co_limit numeric NULL,
	otp_attempts numeric NULL,
	max_cust_mob_cnt numeric NULL,
	salt_secure_key varchar(64) NULL,
	afcs_salt_secure_key varchar(32) NULL,
	dispatch_type varchar(20) NULL,
	card_movement_type varchar(20) NULL,
	topup_amt_multiplier numeric NULL,
	otp_exp_min varchar(5) NULL,
	card_blacklist_salt_key varchar(16) NULL,
	card_blacklist_password varchar(20) NULL,
	txn_bal_deploy_date timestamp NULL,
	first_topup_done_flag varchar(1) NULL,
	welcome_msg varchar(200) NULL,
	otp_card_exp numeric NULL,
	allow_negative_balance varchar(10) NULL,
	deduct_annual_fee varchar(10) NULL,
	annual_fee_deducted_on varchar(10) NULL,
	txn_for_replacement numeric NULL DEFAULT 0,
	embossa_enc_userid varchar(50) NULL,
	lcm_flag varchar(10) NULL,
	CONSTRAINT cms_issuer_config_pk PRIMARY KEY (id),
	CONSTRAINT cons_unikey UNIQUE (issuer_id)
);


-- cms_limit_transaction_type definition

-- Drop table

-- DROP TABLE cms_limit_transaction_type;

CREATE TABLE cms_limit_transaction_type (
	id numeric NULL,
	txn_type_name varchar(40) NULL,
	txn_type varchar(6) NULL,
	txn_type_status varchar(1) NULL,
	txn_type_mode varchar(10) NULL,
	enable_flag varchar(1) NULL,
	card_usage varchar(5) NULL,
	max_chip_amt numeric NULL
);


-- cms_mail_config_detail definition

-- Drop table

-- DROP TABLE cms_mail_config_detail;

CREATE TABLE cms_mail_config_detail (
	id varchar(20) NULL,
	mail_from varchar(50) NULL,
	user_name varchar(50) NULL,
	"password" varchar(20) NULL,
	host varchar(100) NOT NULL,
	port varchar(20) NULL,
	connection_type varchar(20) NULL,
	institution_id numeric NULL,
	app_id varchar(20) NULL,
	sub_app_id varchar(20) NULL,
	alert_from varchar(20) NULL,
	self_id varchar(20) NULL,
	alert varchar(20) NULL,
	dlrreq varchar(20) NULL,
	content_type varchar(20) NULL,
	dcode varchar(10) NULL,
	pwd varchar(20) NULL,
	c_type varchar(10) NULL,
	msg_type varchar(50) NULL,
	priority varchar(10) NULL,
	sender varchar(50) NULL,
	config_id numeric(4) NULL,
	vendor varchar(10) NULL
);


-- cms_mo_card_request definition

-- Drop table

-- DROP TABLE cms_mo_card_request;

CREATE TABLE cms_mo_card_request (
	id numeric NOT NULL,
	mo_id varchar(20) NULL,
	product_id numeric NULL,
	total_cards_requested numeric NULL,
	status varchar(30) NULL,
	request_date timestamp NULL,
	created_by_mo_id numeric NULL,
	created_date timestamp NULL,
	updated_by numeric NULL,
	updated_date timestamp NULL,
	approved_date timestamp NULL,
	remarks varchar(255) NULL,
	rejected_date timestamp NULL,
	total_cards_approved numeric NULL,
	issuer_id numeric NULL,
	mo_batch_id varchar(20) NULL,
	approved_by_ho numeric(19) NULL,
	mo_name varchar(255) NULL,
	start_range varchar(20) NULL,
	end_range varchar(20) NULL,
	mo_dispatch_date timestamp NULL,
	dispatch_by_ho numeric NULL DEFAULT 0,
	ack_by_mo numeric NULL DEFAULT 0,
	mo_ack_date timestamp NULL,
	branch_id numeric NULL,
	ready_for_disp_date timestamp NULL,
	ready_for_disp_by numeric NULL DEFAULT 0,
	mo_sub_batch_id varchar(50) NULL,
	sub_batch_cards_requested numeric NULL DEFAULT 0,
	sub_batch_cards_approved numeric NULL DEFAULT 0,
	dispatch_file_name varchar(50) NULL,
	dispatch_file_created_date timestamp NULL,
	CONSTRAINT cms_mo_card_request_pk PRIMARY KEY (id)
);


-- cms_mo_card_request_11_may definition

-- Drop table

-- DROP TABLE cms_mo_card_request_11_may;

CREATE TABLE cms_mo_card_request_11_may (
	id numeric NULL,
	mo_id varchar(20) NULL,
	product_id numeric NULL,
	total_cards_requested numeric NULL,
	status varchar(30) NULL,
	request_date timestamp NULL,
	created_by_mo_id numeric NULL,
	created_date timestamp NULL,
	updated_by numeric NULL,
	updated_date timestamp NULL,
	approved_date timestamp NULL,
	remarks varchar(255) NULL,
	rejected_date timestamp NULL,
	total_cards_approved numeric NULL,
	issuer_id numeric NULL,
	mo_batch_id varchar(20) NULL,
	approved_by_ho numeric(19) NULL,
	mo_name varchar(255) NULL,
	start_range varchar(20) NULL,
	end_range varchar(20) NULL,
	mo_dispatch_date timestamp NULL,
	dispatch_by_ho numeric NULL,
	ack_by_mo numeric NULL,
	mo_ack_date timestamp NULL,
	branch_id numeric NULL,
	ready_for_disp_date timestamp NULL,
	ready_for_disp_by numeric NULL,
	mo_sub_batch_id varchar(50) NULL,
	sub_batch_cards_requested numeric NULL,
	sub_batch_cards_approved numeric NULL,
	dispatch_file_name varchar(50) NULL,
	dispatch_file_created_date timestamp NULL
);


-- cms_mo_card_request_11_may_1 definition

-- Drop table

-- DROP TABLE cms_mo_card_request_11_may_1;

CREATE TABLE cms_mo_card_request_11_may_1 (
	id numeric NULL,
	mo_id varchar(20) NULL,
	product_id numeric NULL,
	total_cards_requested numeric NULL,
	status varchar(30) NULL,
	request_date timestamp NULL,
	created_by_mo_id numeric NULL,
	created_date timestamp NULL,
	updated_by numeric NULL,
	updated_date timestamp NULL,
	approved_date timestamp NULL,
	remarks varchar(255) NULL,
	rejected_date timestamp NULL,
	total_cards_approved numeric NULL,
	issuer_id numeric NULL,
	mo_batch_id varchar(20) NULL,
	approved_by_ho numeric(19) NULL,
	mo_name varchar(255) NULL,
	start_range varchar(20) NULL,
	end_range varchar(20) NULL,
	mo_dispatch_date timestamp NULL,
	dispatch_by_ho numeric NULL,
	ack_by_mo numeric NULL,
	mo_ack_date timestamp NULL,
	branch_id numeric NULL,
	ready_for_disp_date timestamp NULL,
	ready_for_disp_by numeric NULL,
	mo_sub_batch_id varchar(50) NULL,
	sub_batch_cards_requested numeric NULL,
	sub_batch_cards_approved numeric NULL,
	dispatch_file_name varchar(50) NULL,
	dispatch_file_created_date timestamp NULL
);


-- cms_mo_card_request_12_may definition

-- Drop table

-- DROP TABLE cms_mo_card_request_12_may;

CREATE TABLE cms_mo_card_request_12_may (
	id numeric NULL,
	mo_id varchar(20) NULL,
	product_id numeric NULL,
	total_cards_requested numeric NULL,
	status varchar(30) NULL,
	request_date timestamp NULL,
	created_by_mo_id numeric NULL,
	created_date timestamp NULL,
	updated_by numeric NULL,
	updated_date timestamp NULL,
	approved_date timestamp NULL,
	remarks varchar(255) NULL,
	rejected_date timestamp NULL,
	total_cards_approved numeric NULL,
	issuer_id numeric NULL,
	mo_batch_id varchar(20) NULL,
	approved_by_ho numeric(19) NULL,
	mo_name varchar(255) NULL,
	start_range varchar(20) NULL,
	end_range varchar(20) NULL,
	mo_dispatch_date timestamp NULL,
	dispatch_by_ho numeric NULL,
	ack_by_mo numeric NULL,
	mo_ack_date timestamp NULL,
	branch_id numeric NULL,
	ready_for_disp_date timestamp NULL,
	ready_for_disp_by numeric NULL,
	mo_sub_batch_id varchar(50) NULL,
	sub_batch_cards_requested numeric NULL,
	sub_batch_cards_approved numeric NULL,
	dispatch_file_name varchar(50) NULL,
	dispatch_file_created_date timestamp NULL
);


-- cms_mo_dispatch_details definition

-- Drop table

-- DROP TABLE cms_mo_dispatch_details;

CREATE TABLE cms_mo_dispatch_details (
	id numeric NULL,
	mo_id varchar(20) NULL,
	start_range varchar(20) NULL,
	end_range varchar(20) NULL,
	issuer_id numeric NULL,
	file_uploaded_on timestamp NULL,
	file_uploaded_by numeric NULL,
	reason varchar(1000) NULL,
	batch_id varchar(200) NULL,
	awb_number varchar(50) NULL,
	dispatch_date varchar(25) NULL,
	raw_data sys."clob" NULL,
	record_no numeric NULL,
	file_name varchar(50) NULL,
	process_status varchar(25) NULL,
	mo_batch_id varchar(200) NULL,
	mo_name varchar(200) NULL,
	mo_address varchar(200) NULL,
	"comment" varchar(200) NULL,
	courier_vendor_name varchar(50) NULL
);


-- cms_mo_limit_details definition

-- Drop table

-- DROP TABLE cms_mo_limit_details;

CREATE TABLE cms_mo_limit_details (
	id numeric NOT NULL,
	mo_id varchar(20) NULL,
	amount numeric NULL,
	tran_id varchar(20) NULL,
	txn_date timestamp NULL,
	status varchar(20) NULL,
	file_name varchar(25) NULL,
	reason varchar(255) NULL,
	record_no numeric NULL,
	CONSTRAINT cms_mo_limit_details_pk PRIMARY KEY (id)
);


-- cms_mo_limit_file_details definition

-- Drop table

-- DROP TABLE cms_mo_limit_file_details;

CREATE TABLE cms_mo_limit_file_details (
	id numeric NOT NULL,
	file_name varchar(25) NULL,
	no_of_records numeric NULL,
	status varchar(20) NULL,
	created_by varchar(20) NULL,
	created_date timestamp NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp NULL
);


-- cms_mo_limit_mngt definition

-- Drop table

-- DROP TABLE cms_mo_limit_mngt;

CREATE TABLE cms_mo_limit_mngt (
	id numeric NULL,
	txnrefno varchar(30) NULL,
	txn_amount numeric NULL,
	created_date timestamp NULL,
	updated_time timestamp NULL,
	updated_by varchar(20) NULL,
	status varchar(2) NULL,
	virtual_id varchar(50) NULL,
	remarks varchar(500) NULL
);


-- cms_otp_details definition

-- Drop table

-- DROP TABLE cms_otp_details;

CREATE TABLE cms_otp_details (
	id numeric NOT NULL,
	mobile_number numeric NOT NULL,
	otp varchar(20) NOT NULL,
	status varchar(50) NULL,
	otp_generated_time timestamp NULL,
	otp_expiry_time timestamp NULL,
	hash_card_number varchar(100) NULL,
	action_name varchar(255) NULL,
	validate_date timestamp NULL,
	ref_txn_id varchar(20) NULL,
	service_name varchar(30) NULL,
	CONSTRAINT sys_c0079757 PRIMARY KEY (id)
);
CREATE UNIQUE INDEX sys_c0011358 ON cms_otp_details USING btree (id);


-- cms_outlet_card_request definition

-- Drop table

-- DROP TABLE cms_outlet_card_request;

CREATE TABLE cms_outlet_card_request (
	id numeric NOT NULL,
	mo_id varchar(20) NULL,
	outlet_id varchar(20) NULL,
	total_cards_assigned numeric NULL,
	status varchar(20) NULL,
	request_date timestamp NULL,
	created_by_mo_id numeric NULL,
	created_date timestamp NULL,
	updated_by numeric NULL,
	updated_date timestamp NULL,
	dispatched_date timestamp NULL,
	dispatched_by_ho_id numeric NULL,
	ack_date timestamp NULL,
	ack_by_outlet_id numeric NULL,
	product_id numeric NULL,
	issuer_id numeric NULL,
	outlet_batch_id varchar(20) NULL,
	outlet_name varchar(255) NULL,
	start_range varchar(20) NULL,
	end_range varchar(20) NULL,
	is_instant varchar(10) NULL,
	outlet_sub_batch_id varchar(50) NULL,
	sub_batch_cards_assigned numeric NULL DEFAULT 0,
	total_cards_requested numeric NULL DEFAULT 0,
	remarks varchar(255) NULL,
	approved_date timestamp NULL,
	card_req_status varchar(20) NULL,
	outlet_transfer_ref_id varchar(16) NULL,
	rejected_date timestamp NULL,
	sub_batch_cards_requested numeric NULL DEFAULT 0,
	CONSTRAINT cms_outlet_card_request_pk PRIMARY KEY (id)
);


-- cms_outlet_service_link definition

-- Drop table

-- DROP TABLE cms_outlet_service_link;

CREATE TABLE cms_outlet_service_link (
	outlet_id varchar(20) NULL,
	service_id numeric NULL
);


-- cms_payment_config definition

-- Drop table

-- DROP TABLE cms_payment_config;

CREATE TABLE cms_payment_config (
	merchant_code varchar(50) NULL,
	secure_secret varchar(50) NULL,
	issuer_id numeric NULL,
	id numeric NULL,
	pg_url varchar(200) NULL,
	pg_query_status_url varchar(200) NULL,
	return_url varchar(200) NULL,
	merchant_name varchar(100) NULL,
	refund_url varchar(200) NULL,
	jks_cert_path varchar(200) NULL,
	ks_cert_path varchar(200) NULL,
	key_store_password varchar(30) NULL,
	merchant_user_name varchar(30) NULL,
	merchant_password varchar(30) NULL
);


-- cms_payment_details definition

-- Drop table

-- DROP TABLE cms_payment_details;

CREATE TABLE cms_payment_details (
	merchant_ref_no numeric(19) NOT NULL,
	"oid" varchar(255) NULL,
	amount numeric(7, 2) NULL,
	approval_code varchar(255) NULL,
	created_date timestamp NULL,
	cust_seq_id varchar(255) NULL,
	fail_rc varchar(255) NULL,
	pg_txn_id varchar(255) NULL,
	reason varchar(255) NULL,
	status varchar(255) NULL,
	txn_processed_date timestamp NULL,
	txn_type varchar(255) NULL,
	processor_response_code varchar(20) NULL,
	hash_card_no varchar(70) NULL,
	digital_txn_id numeric NULL,
	issuer_id numeric NULL,
	db_ts numeric NULL
);


-- cms_perso_card_replacement definition

-- Drop table

-- DROP TABLE cms_perso_card_replacement;

CREATE TABLE cms_perso_card_replacement (
	id numeric NOT NULL,
	batch_no varchar(20) NULL,
	cust_seq_id varchar(20) NULL,
	old_hash_card_no varchar(70) NULL,
	new_hash_card_no varchar(70) NULL,
	old_card_ref_no varchar(20) NULL,
	new_card_ref_no varchar(20) NULL,
	card_generated_by numeric NULL,
	card_generated_date timestamp NULL,
	embossing_generated_by numeric NULL,
	embossing_generated_date timestamp NULL,
	uploaded_by numeric NULL,
	uploaded_date timestamp NULL,
	old_card_status varchar(20) NULL,
	new_card_status varchar(20) NULL,
	old_product_id numeric NULL,
	new_product_id numeric NULL,
	old_bin numeric NULL,
	new_bin numeric NULL,
	pan_seq_no varchar(20) NULL,
	fee_amount numeric NULL,
	fee_type varchar(255) NULL,
	old_application_ref_no varchar(50) NULL,
	new_application_ref_no varchar(50) NULL,
	old_photo_id varchar(50) NULL,
	new_photo_id varchar(50) NULL,
	new_outlet_id varchar(100) NULL,
	old_outlet_id varchar(100) NULL,
	old_reason_code varchar(20) NULL,
	reason_code varchar(255) NULL,
	old_prepaid_account_number varchar(20) NULL
);


-- cms_rejected_cust_details definition

-- Drop table

-- DROP TABLE cms_rejected_cust_details;

CREATE TABLE cms_rejected_cust_details (
	salutation varchar(20) NULL,
	first_name varchar(100) NULL,
	middle_name varchar(100) NULL,
	last_name varchar(100) NULL,
	age numeric NULL,
	gender varchar(10) NULL,
	date_of_birth varchar(20) NULL,
	current_address_line_1 varchar(255) NULL,
	current_address_line_2 varchar(255) NULL,
	current_address_line_3 varchar(255) NULL,
	current_pin_code numeric NULL,
	current_city varchar(40) NULL,
	current_state varchar(20) NULL,
	current_country varchar(20) NULL,
	permanent_address_line_1 varchar(255) NULL,
	permanent_address_line_2 varchar(255) NULL,
	permanent_address_line_3 varchar(255) NULL,
	permanent_pin_code numeric NULL,
	permanent_city varchar(40) NULL,
	permanent_state varchar(50) NULL,
	permanent_country varchar(50) NULL,
	current_land_line varchar(20) NULL,
	permanent_land_line varchar(20) NULL,
	mobile_number varchar NULL,
	email_id varchar(50) NULL,
	fax_no varchar(20) NULL,
	marital_status varchar(20) NULL,
	minor_flag varchar(50) NULL,
	nre_o varchar(20) NULL,
	occupation varchar(50) NULL,
	pan_number varchar(64) NULL,
	aadhar_number varchar(64) NULL,
	passport_number varchar(64) NULL,
	image_details varchar(250) NULL,
	company_name varchar(50) NULL,
	company_address_line_1 varchar(255) NULL,
	company_address_line_2 varchar(255) NULL,
	company_address_line_3 varchar(255) NULL,
	company_telephone_number1 varchar(20) NULL,
	company_fax_number_1 varchar(20) NULL,
	company_url varchar(50) NULL,
	company_city varchar(50) NULL,
	company_state varchar(50) NULL,
	company_country varchar(50) NULL,
	company_code varchar(50) NULL,
	education varchar(50) NULL,
	license_number varchar(64) NULL,
	photo_non_photo varchar(255) NULL,
	branch_id numeric NULL,
	staff_code varchar(255) NULL,
	card_type varchar(50) NULL,
	product_id numeric NULL,
	bin numeric NULL,
	batch_no varchar(20) NULL,
	rejected_reason varchar(3000) NULL,
	cust_seq_id varchar(20) NULL,
	issuer_id numeric NULL,
	prepaid_account_number varchar(255) NULL,
	cust_ref_number varchar(255) NULL,
	embossing_line2 varchar(255) NULL,
	kyc_required varchar(255) NULL,
	photo_id varchar(50) NULL,
	pass_type varchar(100) NULL,
	pass_amount numeric NULL,
	application_ref_no varchar(255) NULL,
	delivery_dest varchar(255) NULL,
	n_rega_job_card varchar(64) NULL,
	voter_id varchar(64) NULL,
	dnd_flag varchar(2) NULL,
	product_name varchar(50) NULL,
	embossname varchar(100) NULL,
	preloaded_amount varchar NULL,
	outlet_id varchar(20) NULL,
	id numeric NULL,
	order_type varchar(5) NULL,
	cif_id varchar(20) NULL,
	beneficiryaccountno varchar(15) NULL,
	bin_card_type varchar(40) NULL
);


-- cms_replaced_card definition

-- Drop table

-- DROP TABLE cms_replaced_card;

CREATE TABLE cms_replaced_card (
	id numeric NULL,
	old_card_ref_number varchar(20) NULL,
	old_card_no varchar(70) NULL,
	old_product_code varchar(10) NULL,
	new_card_ref_no varchar(20) NULL,
	new_card_no varchar(70) NULL,
	new_product_code varchar(10) NULL,
	issuer_id numeric NULL,
	product_id numeric NULL,
	batch_no varchar(20) NULL,
	fee_collected_flag varchar(1) NULL,
	fee_amount numeric NULL,
	status varchar(1) NULL,
	created_by numeric NULL,
	created_date timestamp NULL DEFAULT sysdate,
	updated_by numeric NULL,
	updated_date timestamp NULL,
	bin varchar(6) NULL
);


-- cms_sftp_config definition

-- Drop table

-- DROP TABLE cms_sftp_config;

CREATE TABLE cms_sftp_config (
	id numeric NULL,
	product_id numeric NULL,
	issuer_id numeric NULL,
	process varchar(200) NULL,
	functionality varchar(200) NULL,
	enable_flag varchar(200) NULL,
	sftp_host varchar(200) NULL,
	port varchar(200) NULL,
	user_name varchar(200) NULL,
	"password" varchar(200) NULL,
	source_dir varchar(200) NULL,
	target_dir varchar(200) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL
);


-- cms_sftp_config_backup definition

-- Drop table

-- DROP TABLE cms_sftp_config_backup;

CREATE TABLE cms_sftp_config_backup (
	id numeric NULL,
	product_id numeric NULL,
	issuer_id numeric NULL,
	process varchar(200) NULL,
	functionality varchar(200) NULL,
	enable_flag varchar(200) NULL,
	sftp_host varchar(200) NULL,
	port varchar(200) NULL,
	user_name varchar(200) NULL,
	"password" varchar(200) NULL,
	source_dir varchar(200) NULL,
	target_dir varchar(200) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL
);


-- cms_stolen_rpt definition

-- Drop table

-- DROP TABLE cms_stolen_rpt;

CREATE TABLE cms_stolen_rpt (
	f002 varchar(100) NULL,
	f037 varchar(20) NULL,
	txn_date timestamp NULL,
	cnt numeric NULL,
	org_f037 varchar(20) NULL,
	org_time timestamp NULL
);


-- cms_tax_master definition

-- Drop table

-- DROP TABLE cms_tax_master;

CREATE TABLE cms_tax_master (
	id numeric NOT NULL DEFAULT nextval('tax_master_id_seq'::regclass),
	tax_type varchar(50) NULL,
	tax_name varchar(50) NULL,
	CONSTRAINT cms_tax_master_pkey PRIMARY KEY (id)
);


-- cms_temp_hotlist_log definition

-- Drop table

-- DROP TABLE cms_temp_hotlist_log;

CREATE TABLE cms_temp_hotlist_log (
	id numeric NULL,
	card_ref_number varchar(20) NULL,
	insert_time timestamp NULL,
	last_transaction_date timestamp NULL,
	previous_card_status varchar(4) NULL,
	current_card_status varchar(4) NULL,
	temp_reason_code varchar(4) NULL,
	temp_reason_desc varchar(50) NULL,
	remarks varchar(100) NULL,
	last_txn_type varchar(7) NULL
);


-- cms_virtual_to_physical_card definition

-- Drop table

-- DROP TABLE cms_virtual_to_physical_card;

CREATE TABLE cms_virtual_to_physical_card (
	id numeric NOT NULL,
	batch_no varchar(20) NULL,
	cust_seq_id varchar(20) NULL,
	old_hash_card_no varchar(70) NULL,
	new_hash_card_no varchar(70) NULL,
	old_card_ref_no varchar(20) NULL,
	new_card_ref_no varchar(20) NULL,
	card_generated_by numeric NULL,
	card_generated_date timestamp NULL,
	embossing_generated_by numeric NULL,
	embossing_generated_date timestamp NULL,
	uploaded_by numeric NULL,
	uploaded_date timestamp NULL,
	old_card_status varchar(20) NULL,
	new_card_status varchar(20) NULL,
	old_product_id numeric NULL,
	new_product_id numeric NULL,
	old_bin numeric NULL,
	new_bin numeric NULL,
	pan_seq_no varchar(20) NULL,
	fee_amount numeric NULL,
	fee_type varchar(255) NULL,
	old_application_ref_no varchar(50) NULL,
	new_application_ref_no varchar(50) NULL,
	old_photo_id varchar(50) NULL,
	new_photo_id varchar(50) NULL,
	new_outlet_id varchar(100) NULL,
	old_outlet_id varchar(100) NULL,
	kyc_type varchar(3) NULL
);


-- cms_wallet_channel_mapping definition

-- Drop table

-- DROP TABLE cms_wallet_channel_mapping;

CREATE TABLE cms_wallet_channel_mapping (
	wallet_type varchar(20) NOT NULL,
	atm varchar(2) NULL,
	ecom varchar(2) NULL,
	pos varchar(2) NULL,
	ctls varchar(2) NULL DEFAULT 'Y'::character varying,
	CONSTRAINT cms_wallet_channel_mapping_pkey PRIMARY KEY (wallet_type)
);


-- cms_wallet_type_master definition

-- Drop table

-- DROP TABLE cms_wallet_type_master;

CREATE TABLE cms_wallet_type_master (
	id numeric NULL,
	wallet_name varchar(50) NOT NULL,
	wallet_type varchar(50) NOT NULL,
	status varchar(2) NULL DEFAULT 'A'::character varying,
	CONSTRAINT cms_wallet_type_master_pkey PRIMARY KEY (wallet_type)
);


-- cms_web_service_master definition

-- Drop table

-- DROP TABLE cms_web_service_master;

CREATE TABLE cms_web_service_master (
	services_name varchar(200) NULL,
	issuer_id varchar(20) NULL,
	service_type varchar(200) NULL,
	service_id numeric NOT NULL,
	service_status varchar(20) NULL,
	tgtappid varchar(20) NULL,
	"timestamp" timestamp(6) NULL,
	srcreqid varchar(20) NULL,
	channel_id varchar(255) NULL,
	otp_invalid_time numeric NULL,
	CONSTRAINT cms_web_service_master_pk PRIMARY KEY (service_id)
);


-- config_cs_fee_narration definition

-- Drop table

-- DROP TABLE config_cs_fee_narration;

CREATE TABLE config_cs_fee_narration (
	narration varchar(100) NULL,
	txn_type varchar(10) NULL,
	product_id numeric NULL,
	issuer_id numeric NULL,
	report_type varchar(10) NULL
);


-- config_cs_gst_rate definition

-- Drop table

-- DROP TABLE config_cs_gst_rate;

CREATE TABLE config_cs_gst_rate (
	state_name varchar(50) NULL,
	state_code varchar(10) NULL,
	cgst numeric NULL,
	c_cess numeric NULL,
	sgst numeric NULL,
	s_cess numeric NULL,
	utgst numeric NULL,
	u_cess numeric NULL,
	igst numeric NULL,
	i_cess numeric NULL
);


-- config_cs_org_master definition

-- Drop table

-- DROP TABLE config_cs_org_master;

CREATE TABLE config_cs_org_master (
	institution_id varchar(5) NULL,
	institution_name varchar(25) NULL,
	issuer_id varchar(15) NULL,
	issuer_name varchar(255) NULL,
	product_id varchar(15) NULL,
	product_name varchar(255) NULL,
	bin numeric(6) NULL,
	super_mid varchar(15) NULL,
	super_mid_name varchar(255) NULL,
	mid varchar(15) NULL,
	mid_name varchar(255) NULL,
	pid varchar(11) NULL,
	pid_desc varchar(255) NULL,
	program_id varchar(100) NULL,
	program_name varchar(255) NULL,
	channel_id varchar(20) NULL,
	channel_name varchar(200) NULL
);


-- configuration_ui definition

-- Drop table

-- DROP TABLE configuration_ui;

CREATE TABLE configuration_ui (
	id numeric NOT NULL,
	product_name varchar(100) NULL,
	issuer_id numeric NULL,
	logo_path1 varchar(500) NULL,
	logo_path2 varchar(500) NULL,
	logo_path3 varchar(500) NULL,
	page_name varchar(100) NULL,
	action_name varchar(500) NULL,
	header_page varchar(20) NULL,
	footer_page varchar(20) NULL,
	page_name_validate_flag varchar(20) NULL,
	product_id numeric NULL,
	log_out_url varchar(255) NULL,
	mo_id varchar(20) NULL,
	outlet_id varchar(20) NULL,
	logo_path6 varchar(500) NULL,
	logo_path5 varchar(500) NULL,
	logo_path4 varchar(500) NULL,
	role_id numeric NULL DEFAULT 0,
	reg_validation varchar(3) NULL,
	eform_url varchar(500) NULL,
	eform_url_flag varchar(1) NULL,
	CONSTRAINT sys_c0079768 PRIMARY KEY (id)
);


-- corporate definition

-- Drop table

-- DROP TABLE corporate;

CREATE TABLE corporate (
	id numeric NOT NULL,
	"name" varchar(200) NOT NULL,
	issuer_id numeric NOT NULL,
	address1 varchar(200) NULL,
	phone_number varchar(15) NULL,
	mobile_number varchar(25) NULL,
	contact_person varchar(200) NULL,
	email_id varchar(100) NULL,
	status varchar(500) NULL,
	soft_delete varchar(3) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	created_by_name varchar(30) NULL,
	corporate_file_name varchar(50) NULL,
	employer_id varchar(35) NULL,
	group_id varchar(10) NULL,
	CONSTRAINT cons_pk_corp_id PRIMARY KEY (id)
);


-- country_code_map definition

-- Drop table

-- DROP TABLE country_code_map;

CREATE TABLE country_code_map (
	country varchar(50) NULL,
	country_code_alpha varchar(10) NULL,
	country_code_num varchar(3) NULL
);


-- country_master definition

-- Drop table

-- DROP TABLE country_master;

CREATE TABLE country_master (
	id numeric(20) NOT NULL,
	"name" varchar(50) NULL,
	code varchar(200) NULL,
	currency_code varchar(20) NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	created_date timestamp(6) NULL,
	updated_date timestamp(6) NULL,
	CONSTRAINT country_master_pk PRIMARY KEY (id)
);


-- cs_config_account_details definition

-- Drop table

-- DROP TABLE cs_config_account_details;

CREATE TABLE cs_config_account_details (
	id numeric NULL,
	program_id numeric NOT NULL,
	account_type varchar(30) NULL,
	account_name varchar(30) NULL,
	account_code varchar(17) NOT NULL,
	status varchar(10) NULL,
	created_by varchar(10) NULL,
	created_date timestamp NULL,
	updated_by varchar(10) NULL,
	updated_date timestamp NULL,
	approved_by varchar(10) NULL,
	approved_date timestamp NULL,
	rejected_by varchar(10) NULL,
	rejected_date timestamp NULL,
	file_id varchar(40) NULL,
	rejected_reason varchar(50) NULL,
	remark varchar(100) NULL,
	program_name varchar(50) NULL,
	CONSTRAINT comp_acc_detail PRIMARY KEY (program_id, account_code)
);


-- cs_config_account_entry definition

-- Drop table

-- DROP TABLE cs_config_account_entry;

CREATE TABLE cs_config_account_entry (
	id numeric NOT NULL,
	scenario_id numeric NOT NULL,
	program_id numeric NOT NULL,
	src_account_id_1 numeric NULL,
	src_drcr_ind_id_1 numeric NULL,
	dest_account_id_1 numeric NULL,
	dest_drcr_ind_id_1 numeric NULL,
	src_account_id_2 numeric NULL,
	src_drcr_ind_id_2 numeric NULL,
	dest_account_id_2 numeric NULL,
	dest_drcr_ind_id_2 numeric NULL,
	src_narration_1 varchar(50) NULL,
	dest_narration_1 varchar(50) NULL,
	src_narration_2 varchar(50) NULL,
	dest_narration_2 varchar(50) NULL,
	status varchar(10) NULL,
	created_by varchar(10) NULL,
	created_date timestamp NULL,
	updated_by varchar(10) NULL,
	updated_date timestamp NULL,
	approved_by varchar(10) NULL,
	approved_date timestamp NULL,
	rejected_by varchar(10) NULL,
	rejected_date timestamp NULL,
	rejected_reason varchar(50) NULL,
	file_name varchar(50) NULL,
	acc_entry_flag varchar(2) NULL,
	CONSTRAINT comp_acc_entry PRIMARY KEY (program_id, scenario_id)
);


-- cs_config_alert_msg definition

-- Drop table

-- DROP TABLE cs_config_alert_msg;

CREATE TABLE cs_config_alert_msg (
	alert_code varchar(5) NULL,
	alert_msg varchar(100) NULL,
	display_source varchar(50) NULL
);


-- cs_config_app_ctl definition

-- Drop table

-- DROP TABLE cs_config_app_ctl;

CREATE TABLE cs_config_app_ctl (
	xml_tag varchar(20) NULL,
	element_data varchar(25) NULL
);


-- cs_config_declined_resp_code definition

-- Drop table

-- DROP TABLE cs_config_declined_resp_code;

CREATE TABLE cs_config_declined_resp_code (
	response_code varchar(2) NULL,
	response_msg varchar(50) NULL
);


-- cs_config_dr_cr_code_entry definition

-- Drop table

-- DROP TABLE cs_config_dr_cr_code_entry;

CREATE TABLE cs_config_dr_cr_code_entry (
	id numeric NOT NULL,
	program_id numeric NOT NULL,
	account_code varchar(17) NOT NULL,
	dr_cr_ind varchar(10) NOT NULL,
	dr_cr_code varchar(4) NULL,
	status varchar(10) NULL,
	created_by varchar(10) NULL,
	created_date timestamp NULL,
	updated_by varchar(10) NULL,
	updated_date timestamp NULL,
	approved_by varchar(10) NULL,
	approved_date timestamp NULL,
	rejected_by varchar(10) NULL,
	rejected_date timestamp NULL,
	remarks varchar(500) NULL,
	rejected_reason varchar(50) NULL,
	file_name varchar(50) NULL,
	CONSTRAINT cons_pk_acdrcr PRIMARY KEY (program_id, account_code, dr_cr_ind)
);


-- cs_config_dr_cr_indicator definition

-- Drop table

-- DROP TABLE cs_config_dr_cr_indicator;

CREATE TABLE cs_config_dr_cr_indicator (
	id numeric NOT NULL,
	dr_cr_indicator varchar(10) NULL,
	CONSTRAINT cs_config_dr_cr_indicator_pkey PRIMARY KEY (id)
);


-- cs_config_feemaster definition

-- Drop table

-- DROP TABLE cs_config_feemaster;

CREATE TABLE cs_config_feemaster (
	fee_block varchar(1) NULL,
	fee_code_description varchar(100) NULL,
	fee_code varchar(1000) NULL,
	lofo varchar(25) NULL,
	id numeric NULL
);


-- cs_config_file_name_convention definition

-- Drop table

-- DROP TABLE cs_config_file_name_convention;

CREATE TABLE cs_config_file_name_convention (
	id numeric NOT NULL,
	file_name varchar(100) NULL,
	scenario_id numeric NULL,
	CONSTRAINT cs_config_file_name_convention_pkey PRIMARY KEY (id)
);


-- cs_config_filenamemaster definition

-- Drop table

-- DROP TABLE cs_config_filenamemaster;

CREATE TABLE cs_config_filenamemaster (
	file_code varchar(4) NULL,
	file_name_description varchar(100) NULL,
	file_type varchar(25) NULL,
	file_type_description varchar(100) NULL,
	network varchar(20) NULL,
	file_seq numeric(2) NULL,
	seq_flag varchar(4) NULL
);


-- cs_config_narration_details definition

-- Drop table

-- DROP TABLE cs_config_narration_details;

CREATE TABLE cs_config_narration_details (
	id numeric NOT NULL,
	scenario_id numeric NOT NULL,
	program_id numeric NOT NULL,
	narration varchar(50) NULL,
	status varchar(10) NULL,
	created_by varchar(10) NULL,
	created_date timestamp NULL,
	updated_by varchar(10) NULL,
	updated_date timestamp NULL,
	approved_by varchar(10) NULL,
	approved_date timestamp NULL,
	rejected_by varchar(10) NULL,
	rejected_date timestamp NULL,
	file_id varchar(50) NULL,
	rejected_reason varchar(50) NULL,
	program_name varchar(50) NULL,
	scenario_name varchar(50) NULL,
	CONSTRAINT comp_narration1 PRIMARY KEY (scenario_id, program_id)
);


-- cs_config_org_master definition

-- Drop table

-- DROP TABLE cs_config_org_master;

CREATE TABLE cs_config_org_master (
	institution_id varchar(5) NULL,
	institution_name varchar(25) NULL,
	issuer_id varchar(15) NULL,
	issuer_name varchar(255) NULL,
	product_id varchar(15) NULL,
	product_name varchar(255) NULL,
	bin numeric(6) NULL,
	super_mid varchar(15) NULL,
	super_mid_name varchar(255) NULL,
	mid varchar(15) NULL,
	mid_name varchar(255) NULL,
	pid varchar(11) NULL,
	pid_desc varchar(255) NULL,
	program_id varchar(100) NULL,
	program_name varchar(255) NULL,
	channel_id varchar(20) NULL,
	channel_name varchar(200) NULL,
	partner_id varchar(5) NULL,
	partner_name varchar(100) NULL
);


-- cs_config_payment_mode definition

-- Drop table

-- DROP TABLE cs_config_payment_mode;

CREATE TABLE cs_config_payment_mode (
	id numeric NOT NULL,
	payment_mode_name varchar(25) NULL,
	CONSTRAINT cs_config_payment_mode_pkey PRIMARY KEY (id)
);


-- cs_config_rupay_networkinfo definition

-- Drop table

-- DROP TABLE cs_config_rupay_networkinfo;

CREATE TABLE cs_config_rupay_networkinfo (
	scheme_code varchar(20) NULL,
	scheme_description varchar(50) NULL
);


-- cs_config_rupay_txncode definition

-- Drop table

-- DROP TABLE cs_config_rupay_txncode;

CREATE TABLE cs_config_rupay_txncode (
	bank_name varchar(200) NULL,
	txn_desc varchar(250) NULL,
	txn_code varchar(100) NULL,
	txn_code_id varchar(20) NULL,
	txn_desc_1 varchar(100) NULL,
	acq_id varchar(11) NULL,
	pid varchar(11) NULL,
	version_number varchar(5) NULL,
	product_code varchar(5) NULL,
	set_bin varchar(10) NULL,
	og_gen varchar(100) NULL,
	iss_bin varchar(6) NULL,
	main_pid varchar(11) NULL,
	file_category varchar(1) NULL,
	iss_acq_flag varchar(1) NULL,
	network_code varchar(11) NULL,
	network_name varchar(20) NULL,
	iss_bin_type varchar(20) NULL,
	lofo_ind varchar(10) NULL,
	org_id numeric NULL,
	iss_acq_flag_desc varchar(3) NULL
);


-- cs_config_rupay_xmltag definition

-- Drop table

-- DROP TABLE cs_config_rupay_xmltag;

CREATE TABLE cs_config_rupay_xmltag (
	org_id numeric(10) NULL,
	txn_desc varchar(150) NULL,
	txn_code varchar(150) NULL,
	txn_code_id numeric(10) NULL,
	req_tag varchar(1000) NULL,
	mti varchar(20) NULL,
	function_code numeric(4) NULL,
	sub_tag varchar(1000) NULL,
	xmltag_block numeric(5) NULL,
	xmltag_block_desc varchar(200) NULL
);


-- cs_config_subxmltag definition

-- Drop table

-- DROP TABLE cs_config_subxmltag;

CREATE TABLE cs_config_subxmltag (
	req_sub_tags varchar(1000) NULL,
	sub_tag varchar(1000) NULL
);


-- cs_config_txn_source definition

-- Drop table

-- DROP TABLE cs_config_txn_source;

CREATE TABLE cs_config_txn_source (
	id numeric NOT NULL,
	txn_source varchar(25) NULL,
	CONSTRAINT cs_config_txn_source_pkey PRIMARY KEY (id)
);


-- cs_config_txn_typ_src_link definition

-- Drop table

-- DROP TABLE cs_config_txn_typ_src_link;

CREATE TABLE cs_config_txn_typ_src_link (
	txn_type_id numeric NULL,
	source_id numeric NULL,
	payment_mode numeric NULL
);


-- cs_config_txn_type definition

-- Drop table

-- DROP TABLE cs_config_txn_type;

CREATE TABLE cs_config_txn_type (
	id numeric NOT NULL,
	txn_type_name varchar(50) NULL,
	CONSTRAINT cs_config_txn_type_pkey PRIMARY KEY (id)
);


-- cs_fee definition

-- Drop table

-- DROP TABLE cs_fee;

CREATE TABLE cs_fee (
	transaction_id varchar(25) NOT NULL,
	transaction_date varchar(20) NULL,
	transaction_time varchar(20) NULL,
	card_number varchar(64) NULL,
	card_holder_state varchar(50) NULL,
	institution_state varchar(50) NULL,
	fee_description varchar(100) NULL,
	txc_inc_flag varchar(1) NULL,
	fee_amount numeric(7, 2) NULL,
	total_amount numeric(7, 2) NULL,
	igst_tax_amount numeric(7, 2) NULL,
	cgst_tax_amount numeric(7, 2) NULL,
	sgst_tax_amount numeric(7, 2) NULL,
	utgst_tax_amount numeric(7, 2) NULL,
	net_fee_amount numeric(7, 2) NULL,
	tax_rate numeric(7, 2) NULL,
	igst_tax_rate numeric(7, 2) NULL,
	cgst_tax_rate numeric(7, 2) NULL,
	sgst_tax_rate numeric(7, 2) NULL,
	utgst_tax_rate numeric(7, 2) NULL,
	gst_number varchar(50) NULL,
	sac_code varchar(50) NULL,
	rev_amount numeric(7, 2) NULL,
	rev_tax_amount numeric(7, 2) NULL,
	total_tax_amt numeric(7, 2) NULL,
	settle_date timestamp NULL,
	fee_ind varchar(10) NULL,
	acc_flag varchar(1) NULL,
	acc_date timestamp NULL,
	insert_datetime timestamp NULL,
	drcr varchar(2) NULL,
	rev_org_seq_id varchar(100) NULL,
	tid varchar(50) NULL,
	stan varchar(50) NULL,
	batch_number varchar(50) NULL,
	ticket_id varchar(50) NULL,
	entry_date_time timestamp NULL,
	bal_update_settl_flag varchar(1) NULL,
	bal_update_settl_date timestamp NULL,
	unique_txn_id varchar(16) NULL,
	pay_mode varchar(255) NULL,
	wallet_id int4 NOT NULL DEFAULT 0,
	rrn varchar(200) NULL,
	txn_unique_id varchar(50) NULL,
	available_balance numeric NULL DEFAULT 0,
	hold_balance numeric NULL DEFAULT 0,
	current_balance numeric NULL DEFAULT 0,
	settle_flag varchar(1) NULL,
	prepaid_account_number varchar(23) NULL,
	mark_up_fee numeric NULL DEFAULT 0,
	vat_fee numeric NULL DEFAULT 0,
	previous_balance numeric NULL DEFAULT 0,
	file_name varchar(500) NULL,
	remarks varchar(500) NULL,
	CONSTRAINT sys_c0079749 PRIMARY KEY (transaction_id),
	CONSTRAINT sys_c0079755 UNIQUE (unique_txn_id)
);
CREATE INDEX indx_cs_fee_card ON cs_fee USING btree (card_number);


-- cs_fee_issuer definition

-- Drop table

-- DROP TABLE cs_fee_issuer;

CREATE TABLE cs_fee_issuer (
	transaction_id varchar(25) NOT NULL,
	transaction_date varchar(20) NULL,
	transaction_time varchar(20) NULL,
	card_number varchar(64) NULL,
	card_holder_state varchar(50) NULL,
	institution_state varchar(50) NULL,
	fee_description varchar(100) NULL,
	txc_inc_flag varchar(1) NULL,
	fee_amount numeric(7, 2) NULL,
	total_amount numeric(7, 2) NULL,
	igst_tax_amount numeric(7, 2) NULL,
	cgst_tax_amount numeric(7, 2) NULL,
	sgst_tax_amount numeric(7, 2) NULL,
	utgst_tax_amount numeric(7, 2) NULL,
	net_fee_amount numeric(7, 2) NULL,
	tax_rate numeric(7, 2) NULL,
	igst_tax_rate numeric(7, 2) NULL,
	cgst_tax_rate numeric(7, 2) NULL,
	sgst_tax_rate numeric(7, 2) NULL,
	utgst_tax_rate numeric(7, 2) NULL,
	gst_number varchar(50) NULL,
	sac_code varchar(50) NULL,
	rev_amount numeric(7, 2) NULL,
	rev_tax_amount numeric(7, 2) NULL,
	total_tax_amt numeric(7, 2) NULL,
	settle_date timestamp NULL,
	fee_ind varchar(10) NULL,
	acc_flag varchar(1) NULL,
	acc_date timestamp NULL,
	insert_datetime timestamp NULL,
	drcr varchar(2) NULL,
	rev_org_seq_id varchar(100) NULL,
	tid varchar(50) NULL,
	stan varchar(50) NULL,
	batch_number varchar(50) NULL,
	ticket_id varchar(50) NULL,
	entry_date_time timestamp NULL,
	bal_update_settl_flag varchar(1) NULL,
	bal_update_settl_date timestamp NULL,
	unique_txn_id varchar(16) NULL,
	pay_mode varchar(255) NULL,
	txn_unique_id varchar(50) NULL,
	available_balance numeric NULL DEFAULT 0,
	hold_balance numeric NULL DEFAULT 0,
	current_balance numeric NULL DEFAULT 0,
	settle_flag varchar(1) NULL,
	prepaid_account_number varchar(23) NULL,
	mark_up_fee numeric NULL DEFAULT 0,
	vat_fee numeric NULL DEFAULT 0,
	previous_balance numeric NULL DEFAULT 0,
	file_name varchar(500) NULL,
	remarks varchar(500) NULL,
	wallet_id numeric NULL,
	rrn varchar(200) NULL,
	is_generated varchar(2) NULL DEFAULT 'N'::character varying,
	generated_date timestamp NULL,
	issuer_id numeric NULL,
	CONSTRAINT cs_fee_issuer_pkey PRIMARY KEY (transaction_id),
	CONSTRAINT cs_fee_issuer_unique_txn_id_key UNIQUE (unique_txn_id)
);
CREATE INDEX indx_cs_fee_issuer_card ON cs_fee_issuer USING btree (card_number);


-- cs_fee_issuer_temp definition

-- Drop table

-- DROP TABLE cs_fee_issuer_temp;

CREATE TABLE cs_fee_issuer_temp (
	date_time timestamp NULL,
	fee_description varchar(100) NULL,
	card_number varchar(64) NULL,
	fee_amt numeric(7, 2) NULL,
	rrn varchar(100) NULL,
	reversal_flag varchar(2) NULL,
	settle_date timestamp NULL,
	acc_flag varchar(1) NULL,
	fee_ind varchar(10) NULL,
	acc_date timestamp NULL,
	seq_id varchar(50) NULL,
	balance_update_flag varchar(1) NULL DEFAULT 'N'::character varying,
	balance_update_date timestamp NULL,
	bal_update_flag_ruk varchar(3) NULL DEFAULT 'N'::character varying,
	bal_update_date_ruk timestamp NULL,
	rev_org_seq_id varchar(100) NULL,
	tid varchar(50) NULL,
	stan varchar(50) NULL,
	batch_number varchar(50) NULL,
	ticket_id varchar(50) NULL,
	entry_date_time timestamp NULL,
	drcr varchar(2) NULL,
	bal_update_settl_flag varchar(1) NULL,
	bal_update_settl_date timestamp NULL,
	unique_txn_id varchar(50) NULL,
	total_bal numeric NULL DEFAULT 0,
	host_bal numeric NULL DEFAULT 0,
	shadow_bal numeric NULL DEFAULT 0,
	pay_mode varchar(255) NULL,
	txn_unique_id varchar(50) NULL,
	available_balance numeric NULL DEFAULT 0,
	hold_balance numeric NULL DEFAULT 0,
	current_balance numeric NULL DEFAULT 0,
	settle_flag varchar(1) NULL,
	prepaid_account_number varchar(23) NULL,
	mark_up_fee numeric NULL DEFAULT 0,
	vat_fee numeric NULL DEFAULT 0,
	previous_balance numeric NULL DEFAULT 0,
	file_name varchar(500) NULL,
	remarks varchar(500) NULL,
	wallet_id numeric NULL,
	is_send varchar(2) NULL DEFAULT 'N'::character varying,
	surcharge_fee numeric NULL,
	issuer_id numeric NULL
);
CREATE INDEX indx_cs_fee_issuer_temp_card ON cs_fee_issuer_temp USING btree (card_number);


-- cs_fee_queue definition

-- Drop table

-- DROP TABLE cs_fee_queue;

CREATE TABLE cs_fee_queue (
	id numeric NULL DEFAULT nextval('cs_fee_queue_id_seq'::regclass),
	date_time timestamp NULL,
	fee_description varchar(100) NULL,
	card_number varchar(100) NULL,
	fee_amt numeric NULL,
	rrn varchar(20) NULL,
	fee_ind varchar(20) NULL,
	seq_id varchar(100) NULL,
	tid varchar(20) NULL,
	entry_date_time timestamp NULL,
	drcr varchar(10) NULL,
	attempts numeric NULL,
	settled_host_balance numeric NULL,
	settled_shadow_balance numeric NULL,
	settled_total_balance numeric NULL,
	queue_released_flag varchar(1) NULL DEFAULT 'N'::character varying,
	queue_released_date timestamp NULL,
	cs_process_id varchar(50) NULL,
	settlement_date timestamp NULL,
	reference_number varchar(50) NULL,
	mcc varchar(20) NULL,
	old_card_number varchar(100) NULL,
	"source" varchar(50) NULL,
	f038 varchar(20) NULL,
	adjustment_related_to varchar(50) NULL,
	remarks varchar(500) NULL,
	user_name varchar(50) NULL,
	maker_id numeric NULL,
	checker_id numeric NULL,
	wallet_id numeric NULL,
	queue_type varchar(2) NULL,
	batch_id varchar(20) NULL
);
CREATE INDEX indx_cs_fee_queue_card ON cs_fee_queue USING btree (card_number);

-- Table Triggers

create trigger cs_fee_queue_seq before
insert
    on
    cs_fee_queue for each row $trigger$begin
	   
  if :new.SEQ_ID is null then
  :new.SEQ_ID := TO_CHAR(SYSDATE,
    'DDMONYY') || '.' || LPAD(cs_fee_queue_seq.NEXTVAL,
    8,
    '0') ;
end if;

end$trigger$;


-- cs_fee_queue_reject definition

-- Drop table

-- DROP TABLE cs_fee_queue_reject;

CREATE TABLE cs_fee_queue_reject (
	id numeric NULL,
	date_time timestamp NULL,
	fee_description varchar(100) NULL,
	card_number varchar(100) NULL,
	fee_amt numeric NULL,
	rrn varchar(20) NULL,
	fee_ind varchar(20) NULL,
	seq_id varchar(100) NULL,
	tid varchar(20) NULL,
	entry_date_time timestamp NULL,
	drcr varchar(10) NULL,
	attempts numeric NULL,
	settled_host_balance numeric NULL,
	settled_shadow_balance numeric NULL,
	settled_total_balance numeric NULL,
	queue_released_flag varchar(1) NULL,
	queue_released_date timestamp NULL,
	cs_process_id varchar(50) NULL,
	settlement_date timestamp NULL,
	reference_number varchar(50) NULL,
	mcc varchar(20) NULL,
	old_card_number varchar(100) NULL,
	"source" varchar(50) NULL,
	f038 varchar(20) NULL,
	adjustment_related_to varchar(50) NULL,
	remarks varchar(500) NULL,
	user_name varchar(50) NULL,
	maker_id numeric NULL,
	checker_id numeric NULL,
	wallet_id numeric NULL,
	queue_type varchar(2) NULL,
	batch_id varchar(20) NULL
);


-- cs_fee_temp definition

-- Drop table

-- DROP TABLE cs_fee_temp;

CREATE TABLE cs_fee_temp (
	date_time timestamp NULL,
	fee_description varchar(100) NULL,
	card_number varchar(64) NULL,
	fee_amt numeric(7, 2) NULL,
	rrn varchar(100) NULL,
	reversal_flag varchar(2) NULL,
	settle_date timestamp NULL,
	acc_flag varchar(1) NULL,
	fee_ind varchar(10) NULL,
	acc_date timestamp NULL,
	seq_id varchar(50) NULL,
	balance_update_flag varchar(1) NULL DEFAULT 'N'::character varying,
	balance_update_date timestamp NULL,
	bal_update_flag_ruk varchar(3) NULL DEFAULT 'N'::character varying,
	bal_update_date_ruk timestamp NULL,
	rev_org_seq_id varchar(100) NULL,
	tid varchar(50) NULL,
	stan varchar(50) NULL,
	batch_number varchar(50) NULL,
	ticket_id varchar(50) NULL,
	entry_date_time timestamp NULL,
	drcr varchar(2) NULL,
	bal_update_settl_flag varchar(1) NULL,
	bal_update_settl_date timestamp NULL,
	unique_txn_id varchar(50) NULL,
	total_bal numeric NULL DEFAULT 0,
	host_bal numeric NULL DEFAULT 0,
	shadow_bal numeric NULL DEFAULT 0,
	pay_mode varchar(255) NULL,
	txn_unique_id varchar(50) NULL,
	available_balance numeric NULL DEFAULT 0,
	hold_balance numeric NULL DEFAULT 0,
	current_balance numeric NULL DEFAULT 0,
	settle_flag varchar(1) NULL,
	prepaid_account_number varchar(23) NULL,
	mark_up_fee numeric NULL DEFAULT 0,
	vat_fee numeric NULL DEFAULT 0,
	previous_balance numeric NULL DEFAULT 0,
	file_name varchar(500) NULL,
	remarks varchar(500) NULL,
	wallet_id numeric NOT NULL DEFAULT 0,
	is_send varchar(2) NULL DEFAULT 'N'::character varying,
	surcharge_fee numeric NULL
);
CREATE INDEX indx_cs_fee_temp_card ON cs_fee_temp USING btree (card_number);

-- Table Triggers

create trigger cs_fee_temp_seq before
insert
    on
    cs_fee_temp for each row $trigger$begin
	   
  if :new.SEQ_ID is null then
  :new.SEQ_ID := TO_CHAR(SYSDATE,
    'DDMONYY') || '.' || LPAD(cs_fee_temp_seq.NEXTVAL,
    8,
    '0') ;
end if;

end$trigger$;


-- cs_filemaster definition

-- Drop table

-- DROP TABLE cs_filemaster;

CREATE TABLE cs_filemaster (
	file_name varchar(100) NULL,
	file_description varchar(100) NULL,
	process_date varchar(25) NULL,
	process_time varchar(25) NULL,
	transaction_count varchar(25) NULL,
	transaction_amount varchar(25) NULL,
	user_id varchar(100) NULL,
	file_date varchar(25) NULL,
	network varchar(25) NULL,
	process_id varchar(100) NULL,
	file_priority varchar(2) NULL,
	settlement_file_date varchar(8) NULL
);


-- cs_filerollback definition

-- Drop table

-- DROP TABLE cs_filerollback;

CREATE TABLE cs_filerollback (
	process_id varchar(100) NULL,
	file_name varchar(100) NULL,
	process_complete varchar(3) NULL,
	process_reverse varchar(3) NULL,
	rollback_complete varchar(3) NULL,
	start_date_time varchar(25) NULL,
	end_date_time varchar(25) NULL,
	user_id varchar(100) NULL,
	main_activity_id varchar(5) NULL,
	entry_date timestamp NULL
);


-- cs_hdrtrl definition

-- Drop table

-- DROP TABLE cs_hdrtrl;

CREATE TABLE cs_hdrtrl (
	batch_number varchar(4) NULL,
	bin_msg_type varchar(20) NULL,
	checker_date_time timestamp NULL,
	checker_flag varchar(10) NULL,
	checker_id varchar(100) NULL,
	cpd timestamp NULL,
	de002 varchar(64) NULL,
	de003 numeric(6) NULL,
	de004 numeric(12) NULL,
	de004_fp numeric(12) NULL,
	de005 numeric(12) NULL,
	de005_fp numeric(12) NULL,
	de006 numeric(12) NULL,
	de009 varchar(8) NULL,
	de010 numeric(8) NULL,
	de012 varchar(12) NULL,
	de022 varchar(999) NULL,
	de024 varchar(3) NULL,
	de025 numeric(4) NULL,
	de026 numeric(4) NULL,
	de031 varchar(23) NULL,
	de032 varchar(11) NULL,
	de037 varchar(12) NULL,
	de038 varchar(6) NULL,
	de040 varchar(3) NULL,
	de041 varchar(16) NULL,
	de041_fp varchar(8) NULL,
	de042 varchar(19) NULL,
	de042_fp varchar(19) NULL,
	de043_merch_addr varchar(40) NULL,
	de043_merch_addr_fp varchar(40) NULL,
	de043_merch_city varchar(13) NULL,
	de043_merch_city_fp varchar(13) NULL,
	de043_merch_country varchar(10) NULL,
	de043_merch_country_fp varchar(2) NULL,
	de043_merch_name varchar(23) NULL,
	de043_merch_name_fp varchar(23) NULL,
	de043_merch_state varchar(3) NULL,
	de043_merch_state_fp varchar(2) NULL,
	de043_merch_zipcode varchar(9) NULL,
	de043_merch_zipcode_fp varchar(9) NULL,
	de049 numeric(3) NULL,
	de049_fp varchar(3) NULL,
	de050 numeric(3) NULL,
	de050_fp numeric(3) NULL,
	de051 numeric(3) NULL,
	de054 numeric(12) NULL,
	de055 varchar(255) NULL,
	de071 varchar(8) NULL,
	de072 varchar(100) NULL,
	de093 varchar(11) NULL,
	de094 varchar(11) NULL,
	de095 varchar(14) NULL,
	de125 varchar(256) NULL,
	exception_date timestamp NULL,
	file_name varchar(100) NULL,
	id varchar(20) NULL,
	ide001 varchar(12) NULL,
	ide002 varchar(11) NULL,
	ide003 varchar(50) NULL,
	ide004 varchar(6) NULL,
	ide005 varchar(5) NULL,
	ide006 timestamp NULL,
	ide007 numeric(3) NULL,
	ide008 numeric(2) NULL,
	ide009 varchar(2) NULL,
	ide010 varchar(1) NULL,
	ide011 numeric(30) NULL,
	lofo_indicator varchar(20) NULL,
	match_id varchar(10) NULL,
	mti varchar(4) NULL,
	og_file_name varchar(100) NULL,
	og_gen varchar(100) NULL,
	parsed_date timestamp NULL,
	pds0005_2 varchar(1) NULL,
	pds0005_rej_rsncode_hdr numeric(4) NULL,
	pds0005_rej_rsncode_txn numeric(4) NULL,
	pds0122 varchar(1) NULL,
	pds0137 numeric(15) NULL,
	pds0146_curr_code_1 numeric(3) NULL,
	pds0146_curr_code_2 numeric(3) NULL,
	pds0146_curr_code_3 numeric(3) NULL,
	pds0146_curr_code_4 numeric(3) NULL,
	pds0146_curr_code_5 numeric(3) NULL,
	pds0146_drcr_1 varchar(1) NULL,
	pds0146_drcr_2 varchar(1) NULL,
	pds0146_drcr_3 varchar(1) NULL,
	pds0146_drcr_4 varchar(1) NULL,
	pds0146_drcr_5 varchar(1) NULL,
	pds0146_fee_amt_1 numeric(10) NULL,
	pds0146_fee_amt_2 numeric(10) NULL,
	pds0146_fee_amt_3 numeric(10) NULL,
	pds0146_fee_amt_4 numeric(10) NULL,
	pds0146_fee_amt_5 numeric(10) NULL,
	pds0146_fee_type_1 varchar(20) NULL,
	pds0146_fee_type_2 varchar(20) NULL,
	pds0146_fee_type_3 varchar(20) NULL,
	pds0146_fee_type_4 varchar(20) NULL,
	pds0146_fee_type_5 varchar(20) NULL,
	pds0146_intchg_cat numeric(4) NULL,
	pds0146_intchg_cat_1 numeric(4) NULL,
	pds0146_intchg_cat_2 numeric(4) NULL,
	pds0146_intchg_cat_3 numeric(4) NULL,
	pds0146_intchg_cat_4 numeric(4) NULL,
	pds0146_intchg_cat_5 numeric(4) NULL,
	pds0159_rgcs varchar(20) NULL,
	pds0159_org_sett_date varchar(10) NULL,
	pds0159_sett_date varchar(6) NULL,
	pds0159_sett_date_fp timestamp NULL,
	pds0170_phoneno varchar(11) NULL,
	pds0262 varchar(1) NULL,
	pds0268 varchar(1) NULL,
	pds0301 numeric(15) NULL,
	pds0306 varchar(10) NULL,
	pds0384 varchar(42) NULL,
	pds0390 varchar(1) NULL,
	pds0508 varchar(12) NULL,
	pds0515 varchar(20) NULL,
	pds0641 varchar(5) NULL,
	pds0677 varchar(10) NULL,
	pds0736 varchar(20) NULL,
	processing_flag varchar(10) NULL,
	process_date timestamp NULL,
	process_id varchar(200) NULL,
	recon_date timestamp NULL,
	recon_flag varchar(100) NULL,
	recon_id varchar(100) NULL,
	settlement_date timestamp NULL,
	ttum_file_id varchar(100) NULL,
	ttum_file_name varchar(100) NULL,
	ttum_gen_date varchar(100) NULL,
	ttum_gen_flag varchar(100) NULL,
	txn_code varchar(20) NULL,
	txn_code_desc varchar(100) NULL,
	txn_code_id varchar(100) NULL,
	pds0206 varchar(1) NULL,
	txn_stage_ind varchar(2) NULL,
	txn_id varchar(20) NULL,
	terminal_capability_indicator varchar(1) NULL,
	merch_invoice_num varchar(20) NULL,
	auth_actual_amount varchar(20) NULL,
	ecs_indicator varchar(20) NULL,
	motoint_reason varchar(20) NULL,
	switch_id varchar(20) NULL,
	exception_flag varchar(20) NULL,
	curr_exp varchar(20) NULL,
	exception_desc varchar(4000) NULL,
	txn_type varchar(50) NULL,
	gateway_type varchar(50) NULL,
	tech_type varchar(50) NULL,
	fetched_for_og varchar(31) NULL,
	trace_id varchar(15) NULL,
	txn_cat varchar(10) NULL,
	surcharge_amt varchar(20) NULL,
	tip_amt varchar(20) NULL,
	srv_sur_amt varchar(20) NULL,
	tran_identifier varchar(15) NULL,
	pos_data_code varchar(12) NULL,
	og_send_flag varchar(20) NULL,
	host_settle_flag varchar(20) NULL,
	host_settle_date varchar(20) NULL,
	rep_flag varchar(1) NULL,
	rep_fullind varchar(1) NULL,
	rep_adj_amt numeric NULL,
	rep_process_id varchar(200) NULL,
	cs_host_recon_flag varchar(2) NULL,
	cs_host_recon_date timestamp NULL,
	cs_host_recon_diff numeric NULL,
	cs_host_mcc varchar(4) NULL,
	cs_host_recon_rrn varchar(50) NULL,
	rfu_1 varchar(200) NULL,
	rfu_2 timestamp NULL,
	rfu_3 varchar(200) NULL,
	rfu_4 varchar(200) NULL,
	rfu_5 varchar(200) NULL,
	rfu_6 varchar(200) NULL,
	rfu_7 varchar(200) NULL,
	rfu_8 varchar(200) NULL,
	rfu_9 varchar(200) NULL,
	rfu_10 varchar(200) NULL,
	manual_settle_flag varchar(10) NULL,
	manual_settle_date timestamp NULL,
	de018 numeric(4) NULL,
	emvtag_9f02 varchar(100) NULL,
	emvtag_9f26 varchar(100) NULL,
	emvtag_82 varchar(100) NULL,
	emvtag_9f36 varchar(100) NULL,
	emvtag_9f27 varchar(100) NULL,
	emvtag_9f10 varchar(100) NULL,
	emvtag_9f33 varchar(100) NULL,
	emvtag_9f1a varchar(100) NULL,
	emvtag_95 varchar(100) NULL,
	emvtag_5f2a varchar(100) NULL,
	emvtag_9c varchar(100) NULL,
	emvtag_9f37 varchar(100) NULL,
	emvtag_9a varchar(100) NULL,
	bin numeric(6) NULL,
	institution_id varchar(6) NULL,
	program_id varchar(6) NULL,
	txn_unique_id varchar(50) NULL,
	de061 varchar(12) NULL,
	addn_tran_data varchar(16) NULL,
	reprocess_flag varchar(100) NULL,
	reprocess_date timestamp NULL,
	reprocess_user_id varchar(100) NULL,
	org_rep_file varchar(100) NULL,
	emvtag_9f03 varchar(100) NULL,
	emvtag_9f06 varchar(100) NULL,
	emvtag_5a varchar(100) NULL,
	emvtag_5f34 varchar(100) NULL,
	emvtag_9f07 varchar(100) NULL,
	emvtag_9f34 varchar(100) NULL,
	emvtag_84 varchar(100) NULL,
	emvtag_9f1e varchar(100) NULL,
	emvtag_91 varchar(100) NULL,
	emvtag_9f5b varchar(100) NULL,
	emvtag_71 varchar(100) NULL,
	emvtag_72 varchar(100) NULL,
	emvtag_9f09 varchar(100) NULL,
	emvtag_9f35 varchar(100) NULL,
	emvtag_9f41 varchar(100) NULL,
	emvtag_9f21 varchar(100) NULL,
	de039 varchar(200) NULL,
	pds0165 varchar(30) NULL,
	already_settle_flag varchar(2) NULL
);


-- cs_manual_adjustment definition

-- Drop table

-- DROP TABLE cs_manual_adjustment;

CREATE TABLE cs_manual_adjustment (
	transaction_date timestamp NULL,
	transaction_time varchar(9) NULL,
	card_number varchar(64) NULL,
	reference_number varchar(25) NULL,
	description varchar(100) NULL,
	amount numeric NULL,
	dr_cr_ind varchar(10) NULL,
	"source" varchar(25) NULL,
	entry_date timestamp NULL,
	action_flag varchar(100) NULL,
	reason_code varchar(100) NULL,
	user_id varchar(100) NULL,
	action_date timestamp NULL,
	adjustment_related_to varchar(20) NULL,
	org_txn_date varchar(20) NULL,
	rrn varchar(20) NULL,
	tid varchar(20) NULL,
	seq_id varchar(50) NOT NULL,
	fee_ind varchar(5) NULL,
	old_card_number varchar(64) NULL,
	bal_update_settl_flag varchar(1) NULL,
	bal_update_settl_date timestamp NULL,
	balance_update_flag varchar(1) NULL,
	balance_update_date timestamp NULL,
	initiation_point varchar(50) NULL,
	created_by varchar(20) NULL,
	modified_by varchar(20) NULL,
	remarks varchar(500) NULL,
	txn_unique_id varchar(50) NULL,
	is_rollback varchar(50) NULL,
	cs_process_id varchar(50) NULL,
	total_bal numeric NULL DEFAULT 0,
	host_bal numeric NULL DEFAULT 0,
	shadow_bal numeric NULL DEFAULT 0,
	txn_type varchar(10) NULL,
	approval_code varchar(6) NULL,
	settlement_date timestamp NULL,
	int_amount numeric NULL,
	arn varchar(23) NULL,
	is_accountable varchar(2) NULL DEFAULT 'Y'::character varying,
	available_balance numeric NULL DEFAULT 0,
	hold_balance numeric NULL DEFAULT 0,
	current_balance numeric NULL DEFAULT 0,
	settle_flag varchar(1) NULL,
	settle_date timestamp(0) NULL,
	prepaid_account_number varchar(23) NULL,
	previous_balance numeric NULL DEFAULT 0,
	file_name varchar(500) NULL,
	batch_no varchar(500) NULL,
	wallet_id numeric NOT NULL DEFAULT 0,
	maker_id numeric NULL,
	checker_id numeric NULL,
	is_send varchar(2) NULL DEFAULT 'N'::character varying,
	CONSTRAINT pcs_adj_pk PRIMARY KEY (seq_id)
);


-- cs_mercury_batch_hdrtrl definition

-- Drop table

-- DROP TABLE cs_mercury_batch_hdrtrl;

CREATE TABLE cs_mercury_batch_hdrtrl (
	process_id varchar(200) NULL,
	file_name varchar(100) NULL,
	id varchar(100) NULL,
	ide012 varchar(4) NULL,
	ide013 varchar(2) NULL,
	de093 varchar(2) NULL,
	ide005 varchar(3) NULL,
	de094 varchar(2) NULL,
	ide014 varchar(3) NULL,
	ide001 varchar(6) NULL,
	pds0306_cr varchar(7) NULL,
	pds0301_cr varchar(16) NULL,
	pds0306_dr varchar(7) NULL,
	pds0301_dr varchar(16) NULL
);


-- cs_mercury_in definition

-- Drop table

-- DROP TABLE cs_mercury_in;

CREATE TABLE cs_mercury_in (
	ide012 varchar(4) NULL,
	ide013 varchar(2) NULL,
	ide003 varchar(50) NULL,
	de093 varchar(2) NULL,
	ide005 varchar(3) NULL,
	de094 varchar(2) NULL,
	ide014 varchar(3) NULL,
	de071 varchar(3) NULL,
	de002 varchar(50) NULL,
	de004 varchar(16) NULL,
	de012 varchar(6) NULL,
	ide034 varchar(2) NULL,
	de024 varchar(3) NULL,
	de043_merch_name varchar(36) NULL,
	de043_merch_city varchar(26) NULL,
	de043_geographic_code varchar(3) NULL,
	ide009 varchar(3) NULL,
	pds0390 varchar(2) NULL,
	de095 varchar(8) NULL,
	de038 varchar(6) NULL,
	de042 varchar(15) NULL,
	de051 varchar(3) NULL,
	de006 varchar(16) NULL,
	ide015 varchar(4) NULL,
	de043_merch_addr varchar(35) NULL,
	de043_merch_state varchar(20) NULL,
	de043_merch_zipcode varchar(11) NULL,
	pds0170_phoneno varchar(20) NULL,
	ide016 varchar(4) NULL,
	de018 varchar(4) NULL,
	ide017 varchar(15) NULL,
	ide018 varchar(15) NULL,
	pds0736 varchar(15) NULL,
	de037 varchar(12) NULL,
	de041 varchar(8) NULL,
	ide020 varchar(60) NULL,
	ide021 varchar(30) NULL,
	ide022 varchar(30) NULL,
	ide008 varchar(1) NULL,
	ide023 varchar(1) NULL,
	ide007 varchar(1) NULL,
	de126 varchar(30) NULL,
	de031 varchar(15) NULL,
	de022 varchar(1) NULL,
	pds0146_fee_amt_3 varchar(10) NULL,
	de043_geographic_code_acq varchar(3) NULL,
	vcrdd varchar(1) NULL,
	ide024 varchar(19) NULL,
	ide025 varchar(11) NULL,
	ide026 varchar(2) NULL,
	curky varchar(3) NULL,
	ide001 varchar(6) NULL,
	pds0306_cr varchar(7) NULL,
	pds0301_cr varchar(16) NULL,
	pds0306_dr varchar(7) NULL,
	pds0301_dr varchar(16) NULL,
	pds0146_fee_type_1 varchar(6) NULL,
	pds0301 varchar(16) NULL,
	ide027 varchar(3) NULL,
	ide028 varchar(16) NULL,
	ide029 varchar(16) NULL,
	ide030 varchar(3) NULL,
	pds0159_sett_date varchar(12) NULL,
	ide031 varchar(30) NULL,
	file_name varchar(100) NULL,
	process_date timestamp NULL,
	process_id varchar(200) NULL,
	id varchar(100) NOT NULL,
	recon_date timestamp NULL,
	recon_flag varchar(100) NULL,
	recon_id varchar(100) NULL,
	settlement_date timestamp NULL,
	txn_unique_id varchar(50) NULL,
	cusrf4 varchar(30) NULL,
	cusrf1 varchar(30) NULL,
	cusrf2 varchar(30) NULL,
	trmtyp varchar(1) NULL,
	cavv varchar(4) NULL,
	pds0302_dr varchar(16) NULL,
	pds0302_cr_cnt varchar(7) NULL,
	pds0302_cr varchar(16) NULL,
	pds0302_dr_cnt varchar(7) NULL,
	CONSTRAINT cons_pk_mer_in_id PRIMARY KEY (id)
);


-- cs_mercury_intemp definition

-- Drop table

-- DROP TABLE cs_mercury_intemp;

CREATE TABLE cs_mercury_intemp (
	ide012 varchar(4) NULL,
	ide013 varchar(2) NULL,
	ide003 varchar(50) NULL,
	de093 varchar(2) NULL,
	ide005 varchar(3) NULL,
	de094 varchar(2) NULL,
	ide014 varchar(3) NULL,
	de071 varchar(3) NULL,
	de002 varchar(50) NULL,
	de004 varchar(16) NULL,
	de012 varchar(6) NULL,
	ide034 varchar(2) NULL,
	de024 varchar(3) NULL,
	de043_merch_name varchar(36) NULL,
	de043_merch_city varchar(26) NULL,
	de043_geographic_code varchar(3) NULL,
	ide009 varchar(3) NULL,
	pds0390 varchar(2) NULL,
	de095 varchar(8) NULL,
	de038 varchar(6) NULL,
	de042 varchar(15) NULL,
	de051 varchar(3) NULL,
	de006 varchar(16) NULL,
	ide015 varchar(4) NULL,
	de043_merch_addr varchar(35) NULL,
	de043_merch_state varchar(20) NULL,
	de043_merch_zipcode varchar(11) NULL,
	pds0170_phoneno varchar(20) NULL,
	ide016 varchar(4) NULL,
	de018 varchar(4) NULL,
	ide017 varchar(15) NULL,
	ide018 varchar(15) NULL,
	pds0736 varchar(15) NULL,
	de037 varchar(12) NULL,
	de041 varchar(8) NULL,
	ide020 varchar(60) NULL,
	ide021 varchar(30) NULL,
	ide022 varchar(30) NULL,
	ide008 varchar(1) NULL,
	ide023 varchar(1) NULL,
	ide007 varchar(1) NULL,
	de126 varchar(30) NULL,
	de031 varchar(15) NULL,
	de022 varchar(1) NULL,
	pds0146_fee_amt_3 varchar(10) NULL,
	de043_geographic_code_acq varchar(3) NULL,
	vcrdd varchar(1) NULL,
	ide024 varchar(19) NULL,
	ide025 varchar(11) NULL,
	ide026 varchar(2) NULL,
	curky varchar(3) NULL,
	ide001 varchar(6) NULL,
	pds0306_cr varchar(7) NULL,
	pds0301_cr varchar(16) NULL,
	pds0306_dr varchar(7) NULL,
	pds0301_dr varchar(16) NULL,
	pds0146_fee_type_1 varchar(6) NULL,
	pds0301 varchar(16) NULL,
	ide027 varchar(3) NULL,
	ide028 varchar(16) NULL,
	ide029 varchar(16) NULL,
	ide030 varchar(3) NULL,
	pds0159_sett_date varchar(12) NULL,
	ide031 varchar(30) NULL,
	file_name varchar(100) NULL,
	process_date timestamp NULL,
	process_id varchar(200) NULL,
	id varchar(100) NOT NULL,
	recon_date timestamp NULL,
	recon_flag varchar(100) NULL,
	recon_id varchar(100) NULL,
	settlement_date timestamp NULL,
	txn_unique_id varchar(50) NULL,
	cusrf4 varchar(30) NULL,
	cusrf1 varchar(30) NULL,
	cusrf2 varchar(30) NULL,
	trmtyp varchar(1) NULL,
	cavv varchar(4) NULL,
	pds0302_cr_cnt varchar(7) NULL,
	pds0302_cr varchar(16) NULL,
	pds0302_dr_cnt varchar(7) NULL,
	pds0302_dr varchar(16) NULL,
	CONSTRAINT cons_pk_mer_intemp_id PRIMARY KEY (id)
);


-- cs_mercury_recap_hdrtrl definition

-- Drop table

-- DROP TABLE cs_mercury_recap_hdrtrl;

CREATE TABLE cs_mercury_recap_hdrtrl (
	process_id varchar(200) NULL,
	file_name varchar(100) NULL,
	id varchar(100) NULL,
	ide012 varchar(4) NULL,
	ide013 varchar(2) NULL,
	de093 varchar(2) NULL,
	ide005 varchar(3) NULL,
	de094 varchar(2) NULL,
	pds0306_cr varchar(7) NULL,
	pds0301_cr varchar(16) NULL,
	pds0306_dr varchar(7) NULL,
	pds0301_dr varchar(16) NULL,
	pds0146_fee_type_1 varchar(6) NULL,
	pds0301 varchar(16) NULL,
	ide027 varchar(3) NULL,
	ide028 varchar(16) NULL,
	ide029 varchar(16) NULL,
	ide030 varchar(3) NULL,
	pds0159_sett_date varchar(12) NULL,
	ide031 varchar(30) NULL
);


-- cs_processlogmaster definition

-- Drop table

-- DROP TABLE cs_processlogmaster;

CREATE TABLE cs_processlogmaster (
	process_id varchar(100) NULL,
	main_activity_name varchar(100) NULL,
	activity_log varchar(500) NULL,
	start_date_time varchar(25) NULL,
	end_date_time varchar(25) NULL,
	complete_status varchar(3) NULL,
	user_id varchar(100) NULL,
	main_activity_id varchar(8) NULL,
	file_name varchar(100) NULL
);


-- cs_rupay_ack definition

-- Drop table

-- DROP TABLE cs_rupay_ack;

CREATE TABLE cs_rupay_ack (
	batch_number varchar(4) NULL,
	bin_msg_type varchar(20) NULL,
	checker_date_time timestamp NULL,
	checker_flag varchar(10) NULL,
	checker_id varchar(100) NULL,
	cpd timestamp NULL,
	de002 varchar(64) NULL,
	de003 numeric(6) NULL,
	de004 numeric(12) NULL,
	de004_fp numeric(12) NULL,
	de005 numeric(12) NULL,
	de005_fp numeric(12) NULL,
	de006 numeric(12) NULL,
	de009 varchar(8) NULL,
	de010 numeric(8) NULL,
	de012 varchar(12) NULL,
	de022 varchar(999) NULL,
	de024 varchar(3) NULL,
	de025 numeric(4) NULL,
	de026 numeric(4) NULL,
	de031 varchar(23) NULL,
	de032 varchar(11) NULL,
	de037 varchar(12) NULL,
	de038 varchar(6) NULL,
	de040 varchar(3) NULL,
	de041 varchar(16) NULL,
	de041_fp varchar(8) NULL,
	de042 varchar(19) NULL,
	de042_fp varchar(19) NULL,
	de043_merch_addr varchar(40) NULL,
	de043_merch_addr_fp varchar(40) NULL,
	de043_merch_city varchar(13) NULL,
	de043_merch_city_fp varchar(13) NULL,
	de043_merch_country varchar(10) NULL,
	de043_merch_country_fp varchar(2) NULL,
	de043_merch_name varchar(23) NULL,
	de043_merch_name_fp varchar(23) NULL,
	de043_merch_state varchar(3) NULL,
	de043_merch_state_fp varchar(2) NULL,
	de043_merch_zipcode varchar(9) NULL,
	de043_merch_zipcode_fp varchar(9) NULL,
	de049 numeric(3) NULL,
	de049_fp varchar(3) NULL,
	de050 numeric(3) NULL,
	de050_fp numeric(3) NULL,
	de051 numeric(3) NULL,
	de054 numeric(12) NULL,
	de055 varchar(500) NULL,
	de071 varchar(8) NULL,
	de072 varchar(100) NULL,
	de093 varchar(11) NULL,
	de094 varchar(11) NULL,
	de095 varchar(14) NULL,
	de125 varchar(256) NULL,
	exception_date timestamp NULL,
	file_name varchar(100) NULL,
	id varchar(20) NULL,
	ide001 varchar(10) NULL,
	ide002 varchar(11) NULL,
	ide003 varchar(21) NULL,
	ide004 varchar(6) NULL,
	ide005 varchar(5) NULL,
	ide006 timestamp NULL,
	ide007 numeric(3) NULL,
	ide008 numeric(2) NULL,
	ide009 varchar(2) NULL,
	ide010 varchar(1) NULL,
	ide011 numeric(30) NULL,
	lofo_indicator varchar(20) NULL,
	match_id varchar(10) NULL,
	mti varchar(4) NULL,
	og_file_name varchar(100) NULL,
	og_gen varchar(100) NULL,
	parsed_date timestamp NULL,
	pds0005_2 varchar(1) NULL,
	pds0005_rej_rsncode_hdr numeric(4) NULL,
	pds0005_rej_rsncode_txn numeric(4) NULL,
	pds0122 varchar(1) NULL,
	pds0137 numeric(15) NULL,
	pds0146_curr_code_1 numeric(3) NULL,
	pds0146_curr_code_2 numeric(3) NULL,
	pds0146_curr_code_3 numeric(3) NULL,
	pds0146_curr_code_4 numeric(3) NULL,
	pds0146_curr_code_5 numeric(3) NULL,
	pds0146_drcr_1 varchar(1) NULL,
	pds0146_drcr_2 varchar(1) NULL,
	pds0146_drcr_3 varchar(1) NULL,
	pds0146_drcr_4 varchar(1) NULL,
	pds0146_drcr_5 varchar(1) NULL,
	pds0146_fee_amt_1 numeric(10) NULL,
	pds0146_fee_amt_2 numeric(10) NULL,
	pds0146_fee_amt_3 numeric(10) NULL,
	pds0146_fee_amt_4 numeric(10) NULL,
	pds0146_fee_amt_5 numeric(10) NULL,
	pds0146_fee_type_1 varchar(20) NULL,
	pds0146_fee_type_2 varchar(20) NULL,
	pds0146_fee_type_3 varchar(20) NULL,
	pds0146_fee_type_4 varchar(20) NULL,
	pds0146_fee_type_5 varchar(20) NULL,
	pds0146_intchg_cat numeric(4) NULL,
	pds0146_intchg_cat_1 numeric(4) NULL,
	pds0146_intchg_cat_2 numeric(4) NULL,
	pds0146_intchg_cat_3 numeric(4) NULL,
	pds0146_intchg_cat_4 numeric(4) NULL,
	pds0146_intchg_cat_5 numeric(4) NULL,
	pds0159_rgcs varchar(20) NULL,
	pds0159_org_sett_date varchar(10) NULL,
	pds0159_sett_date varchar(6) NULL,
	pds0159_sett_date_fp timestamp NULL,
	pds0170_phoneno varchar(11) NULL,
	pds0262 varchar(1) NULL,
	pds0268 varchar(1) NULL,
	pds0301 numeric(15) NULL,
	pds0306 varchar(10) NULL,
	pds0384 varchar(42) NULL,
	pds0390 varchar(1) NULL,
	pds0508 varchar(12) NULL,
	pds0515 varchar(20) NULL,
	pds0641 varchar(5) NULL,
	pds0677 varchar(10) NULL,
	pds0736 varchar(20) NULL,
	processing_flag varchar(10) NULL,
	process_date timestamp NULL,
	process_id varchar(200) NULL,
	recon_date timestamp NULL,
	recon_flag varchar(100) NULL,
	recon_id varchar(100) NULL,
	settlement_date timestamp NULL,
	ttum_file_id varchar(100) NULL,
	ttum_file_name varchar(100) NULL,
	ttum_gen_date varchar(100) NULL,
	ttum_gen_flag varchar(100) NULL,
	txn_code varchar(20) NULL,
	txn_code_desc varchar(100) NULL,
	txn_code_id varchar(100) NULL,
	pds0206 varchar(1) NULL,
	txn_stage_ind varchar(2) NULL,
	txn_id varchar(20) NULL,
	terminal_capability_indicator varchar(1) NULL,
	merch_invoice_num varchar(20) NULL,
	auth_actual_amount varchar(20) NULL,
	ecs_indicator varchar(20) NULL,
	motoint_reason varchar(20) NULL,
	switch_id varchar(20) NULL,
	exception_flag varchar(20) NULL,
	curr_exp varchar(20) NULL,
	exception_desc varchar(4000) NULL,
	txn_type varchar(50) NULL,
	gateway_type varchar(50) NULL,
	tech_type varchar(50) NULL,
	fetched_for_og varchar(31) NULL,
	trace_id varchar(15) NULL,
	txn_cat varchar(10) NULL,
	surcharge_amt varchar(20) NULL,
	tip_amt varchar(20) NULL,
	srv_sur_amt varchar(20) NULL,
	tran_identifier varchar(15) NULL,
	pos_data_code varchar(12) NULL,
	og_send_flag varchar(20) NULL,
	host_settle_flag varchar(20) NULL,
	host_settle_date varchar(20) NULL,
	rep_flag varchar(1) NULL,
	rep_fullind varchar(1) NULL,
	rep_adj_amt numeric NULL,
	rep_process_id varchar(200) NULL,
	cs_host_recon_flag varchar(2) NULL,
	cs_host_recon_date timestamp NULL,
	cs_host_recon_diff numeric NULL,
	cs_host_mcc varchar(4) NULL,
	cs_host_recon_rrn varchar(50) NULL,
	rfu_1 varchar(200) NULL,
	rfu_2 timestamp NULL,
	rfu_3 varchar(200) NULL,
	rfu_4 varchar(200) NULL,
	rfu_5 varchar(200) NULL,
	rfu_6 varchar(200) NULL,
	rfu_7 varchar(200) NULL,
	rfu_8 varchar(200) NULL,
	rfu_9 varchar(200) NULL,
	rfu_10 varchar(200) NULL,
	manual_settle_flag varchar(10) NULL,
	manual_settle_date timestamp NULL,
	de018 numeric(4) NULL,
	emvtag_9f02 varchar(100) NULL,
	emvtag_9f26 varchar(100) NULL,
	emvtag_82 varchar(100) NULL,
	emvtag_9f36 varchar(100) NULL,
	emvtag_9f27 varchar(100) NULL,
	emvtag_9f10 varchar(100) NULL,
	emvtag_9f33 varchar(100) NULL,
	emvtag_9f1a varchar(100) NULL,
	emvtag_95 varchar(100) NULL,
	emvtag_5f2a varchar(100) NULL,
	emvtag_9c varchar(100) NULL,
	emvtag_9f37 varchar(100) NULL,
	emvtag_9a varchar(100) NULL,
	bin numeric(6) NULL,
	institution_id varchar(6) NULL,
	program_id varchar(6) NULL,
	txn_unique_id varchar(50) NULL,
	de061 varchar(12) NULL,
	addn_tran_data varchar(16) NULL,
	reprocess_flag varchar(100) NULL,
	reprocess_date timestamp NULL,
	reprocess_user_id varchar(100) NULL,
	org_rep_file varchar(100) NULL,
	emvtag_9f03 varchar(100) NULL,
	emvtag_9f06 varchar(100) NULL,
	emvtag_5a varchar(100) NULL,
	emvtag_5f34 varchar(100) NULL,
	emvtag_9f07 varchar(100) NULL,
	emvtag_9f34 varchar(100) NULL,
	emvtag_84 varchar(100) NULL,
	emvtag_9f1e varchar(100) NULL,
	emvtag_91 varchar(100) NULL,
	emvtag_9f5b varchar(100) NULL,
	emvtag_71 varchar(100) NULL,
	emvtag_72 varchar(100) NULL,
	emvtag_9f09 varchar(100) NULL,
	emvtag_9f35 varchar(100) NULL,
	emvtag_9f41 varchar(100) NULL,
	emvtag_9f21 varchar(100) NULL,
	de039 varchar(200) NULL,
	pds0165 varchar(30) NULL,
	already_settle_flag varchar(2) NULL
);


-- cs_rupay_acqid definition

-- Drop table

-- DROP TABLE cs_rupay_acqid;

CREATE TABLE cs_rupay_acqid (
	identifier varchar(3) NULL,
	file_gen_date varchar(6) NULL,
	version_number varchar(5) NULL,
	participant_id varchar(11) NULL,
	acq_id varchar(6) NULL,
	product_code varchar(5) NULL,
	process_date timestamp NULL,
	process_id varchar(20) NULL,
	record_count varchar(6) NULL,
	id varchar(21) NULL,
	file_name varchar(25) NULL
);


-- cs_rupay_acqid_history definition

-- Drop table

-- DROP TABLE cs_rupay_acqid_history;

CREATE TABLE cs_rupay_acqid_history (
	identifier varchar(3) NULL,
	file_gen_date varchar(6) NULL,
	version_number varchar(5) NULL,
	participant_id varchar(11) NULL,
	acq_id varchar(6) NULL,
	product_code varchar(5) NULL,
	process_date timestamp NULL,
	process_id varchar(20) NULL,
	record_count varchar(6) NULL,
	id varchar(21) NULL,
	file_name varchar(25) NULL
);


-- cs_rupay_bin definition

-- Drop table

-- DROP TABLE cs_rupay_bin;

CREATE TABLE cs_rupay_bin (
	identifier varchar(3) NULL,
	file_gen_date varchar(6) NULL,
	version_number varchar(5) NULL,
	participant_id varchar(11) NULL,
	bin_low varchar(9) NULL,
	bin_high varchar(9) NULL,
	card_length varchar(2) NULL,
	bin_msg_type varchar(1) NULL,
	card_type varchar(2) NULL,
	card_product varchar(2) NULL,
	card_variant varchar(2) NULL,
	card_technology varchar(3) NULL,
	scheme_code varchar(20) NULL,
	"usage" varchar(1) NULL,
	currency_code varchar(3) NULL,
	country_code varchar(2) NULL,
	bin_activation_date varchar(12) NULL,
	status_flag varchar(1) NULL,
	process_date timestamp NULL,
	process_id varchar(25) NULL,
	record_count varchar(6) NULL,
	id varchar(20) NULL,
	file_name varchar(25) NULL
);


-- cs_rupay_bin_history definition

-- Drop table

-- DROP TABLE cs_rupay_bin_history;

CREATE TABLE cs_rupay_bin_history (
	identifier varchar(3) NULL,
	file_gen_date varchar(6) NULL,
	version_number varchar(5) NULL,
	participant_id varchar(11) NULL,
	bin_low varchar(9) NULL,
	bin_high varchar(9) NULL,
	card_length varchar(2) NULL,
	bin_msg_type varchar(1) NULL,
	card_type varchar(2) NULL,
	card_product varchar(2) NULL,
	card_variant varchar(2) NULL,
	card_technology varchar(3) NULL,
	scheme_code varchar(2) NULL,
	"usage" varchar(1) NULL,
	currency_code varchar(3) NULL,
	country_code varchar(2) NULL,
	bin_activation_date varchar(12) NULL,
	status_flag varchar(1) NULL,
	process_date timestamp NULL,
	process_id varchar(25) NULL,
	record_count varchar(6) NULL,
	id varchar(20) NULL,
	file_name varchar(25) NULL
);


-- cs_rupay_in definition

-- Drop table

-- DROP TABLE cs_rupay_in;

CREATE TABLE cs_rupay_in (
	batch_number varchar(4) NULL,
	bin_msg_type varchar(20) NULL,
	checker_date_time timestamp NULL,
	checker_flag varchar(10) NULL,
	checker_id varchar(100) NULL,
	cpd timestamp NULL,
	de002 varchar(64) NULL,
	de003 numeric(6) NULL,
	de004 numeric(12) NULL,
	de004_fp numeric(12) NULL,
	de005 numeric(12) NULL,
	de005_fp numeric(12) NULL,
	de006 numeric(12) NULL,
	de009 varchar(8) NULL,
	de010 numeric(8) NULL,
	de012 varchar(12) NULL,
	de022 varchar(999) NULL,
	de024 varchar(3) NULL,
	de025 numeric(4) NULL,
	de026 numeric(4) NULL,
	de031 varchar(23) NULL,
	de032 varchar(11) NULL,
	de037 varchar(12) NULL,
	de038 varchar(6) NULL,
	de040 varchar(3) NULL,
	de041 varchar(16) NULL,
	de041_fp varchar(8) NULL,
	de042 varchar(19) NULL,
	de042_fp varchar(19) NULL,
	de043_merch_addr varchar(40) NULL,
	de043_merch_addr_fp varchar(40) NULL,
	de043_merch_city varchar(13) NULL,
	de043_merch_city_fp varchar(13) NULL,
	de043_merch_country varchar(10) NULL,
	de043_merch_country_fp varchar(2) NULL,
	de043_merch_name varchar(23) NULL,
	de043_merch_name_fp varchar(23) NULL,
	de043_merch_state varchar(3) NULL,
	de043_merch_state_fp varchar(2) NULL,
	de043_merch_zipcode varchar(9) NULL,
	de043_merch_zipcode_fp varchar(9) NULL,
	de049 numeric(3) NULL,
	de049_fp varchar(3) NULL,
	de050 numeric(3) NULL,
	de050_fp numeric(3) NULL,
	de051 numeric(3) NULL,
	de054 numeric(12) NULL,
	de055 varchar(255) NULL,
	de071 varchar(8) NULL,
	de072 varchar(100) NULL,
	de093 varchar(11) NULL,
	de094 varchar(11) NULL,
	de095 varchar(14) NULL,
	de125 varchar(256) NULL,
	exception_date timestamp NULL,
	file_name varchar(100) NULL,
	id varchar(20) NULL,
	ide001 varchar(10) NULL,
	ide002 varchar(11) NULL,
	ide003 varchar(21) NULL,
	ide004 varchar(6) NULL,
	ide005 varchar(5) NULL,
	ide006 timestamp NULL,
	ide007 numeric(3) NULL,
	ide008 numeric(2) NULL,
	ide009 varchar(2) NULL,
	ide010 varchar(1) NULL,
	ide011 numeric(30) NULL,
	lofo_indicator varchar(20) NULL,
	match_id varchar(10) NULL,
	mti varchar(4) NULL,
	og_file_name varchar(100) NULL,
	og_gen varchar(100) NULL,
	parsed_date timestamp NULL,
	pds0005_2 varchar(1) NULL,
	pds0005_rej_rsncode_hdr numeric(4) NULL,
	pds0005_rej_rsncode_txn numeric(4) NULL,
	pds0122 varchar(1) NULL,
	pds0137 numeric(15) NULL,
	pds0146_curr_code_1 numeric(3) NULL,
	pds0146_curr_code_2 numeric(3) NULL,
	pds0146_curr_code_3 numeric(3) NULL,
	pds0146_curr_code_4 numeric(3) NULL,
	pds0146_curr_code_5 numeric(3) NULL,
	pds0146_drcr_1 varchar(1) NULL,
	pds0146_drcr_2 varchar(1) NULL,
	pds0146_drcr_3 varchar(1) NULL,
	pds0146_drcr_4 varchar(1) NULL,
	pds0146_drcr_5 varchar(1) NULL,
	pds0146_fee_amt_1 numeric(10) NULL,
	pds0146_fee_amt_2 numeric(10) NULL,
	pds0146_fee_amt_3 numeric(10) NULL,
	pds0146_fee_amt_4 numeric(10) NULL,
	pds0146_fee_amt_5 numeric(10) NULL,
	pds0146_fee_type_1 varchar(20) NULL,
	pds0146_fee_type_2 varchar(20) NULL,
	pds0146_fee_type_3 varchar(20) NULL,
	pds0146_fee_type_4 varchar(20) NULL,
	pds0146_fee_type_5 varchar(20) NULL,
	pds0146_intchg_cat numeric(4) NULL,
	pds0146_intchg_cat_1 numeric(4) NULL,
	pds0146_intchg_cat_2 numeric(4) NULL,
	pds0146_intchg_cat_3 numeric(4) NULL,
	pds0146_intchg_cat_4 numeric(4) NULL,
	pds0146_intchg_cat_5 numeric(4) NULL,
	pds0159_rgcs varchar(20) NULL,
	pds0159_org_sett_date varchar(10) NULL,
	pds0159_sett_date varchar(6) NULL,
	pds0159_sett_date_fp timestamp NULL,
	pds0170_phoneno varchar(11) NULL,
	pds0262 varchar(1) NULL,
	pds0268 varchar(1) NULL,
	pds0301 numeric(15) NULL,
	pds0306 varchar(10) NULL,
	pds0384 varchar(42) NULL,
	pds0390 varchar(1) NULL,
	pds0508 varchar(12) NULL,
	pds0515 varchar(20) NULL,
	pds0641 varchar(5) NULL,
	pds0677 varchar(10) NULL,
	pds0736 varchar(20) NULL,
	processing_flag varchar(10) NULL,
	process_date timestamp NULL,
	process_id varchar(200) NULL,
	recon_date timestamp NULL,
	recon_flag varchar(100) NULL,
	recon_id varchar(100) NULL,
	settlement_date timestamp NULL,
	ttum_file_id varchar(100) NULL,
	ttum_file_name varchar(100) NULL,
	ttum_gen_date varchar(100) NULL,
	ttum_gen_flag varchar(100) NULL,
	txn_code varchar(20) NULL,
	txn_code_desc varchar(100) NULL,
	txn_code_id varchar(100) NULL,
	pds0206 varchar(1) NULL,
	txn_stage_ind varchar(2) NULL,
	txn_id varchar(20) NULL,
	terminal_capability_indicator varchar(1) NULL,
	merch_invoice_num varchar(20) NULL,
	auth_actual_amount varchar(20) NULL,
	ecs_indicator varchar(20) NULL,
	motoint_reason varchar(20) NULL,
	switch_id varchar(20) NULL,
	exception_flag varchar(20) NULL,
	curr_exp varchar(20) NULL,
	exception_desc varchar(4000) NULL,
	txn_type varchar(50) NULL,
	gateway_type varchar(50) NULL,
	tech_type varchar(50) NULL,
	fetched_for_og varchar(31) NULL,
	trace_id varchar(15) NULL,
	txn_cat varchar(10) NULL,
	surcharge_amt varchar(20) NULL,
	tip_amt varchar(20) NULL,
	srv_sur_amt varchar(20) NULL,
	tran_identifier varchar(15) NULL,
	pos_data_code varchar(12) NULL,
	og_send_flag varchar(20) NULL,
	host_settle_flag varchar(20) NULL,
	host_settle_date varchar(20) NULL,
	rep_flag varchar(1) NULL,
	rep_fullind varchar(1) NULL,
	rep_adj_amt numeric NULL,
	rep_process_id varchar(200) NULL,
	cs_host_recon_flag varchar(2) NULL,
	cs_host_recon_date timestamp NULL,
	cs_host_recon_diff numeric NULL,
	cs_host_mcc varchar(4) NULL,
	cs_host_recon_rrn varchar(50) NULL,
	rfu_1 varchar(200) NULL,
	rfu_2 timestamp NULL,
	rfu_3 varchar(200) NULL,
	rfu_4 varchar(200) NULL,
	rfu_5 varchar(200) NULL,
	rfu_6 varchar(200) NULL,
	rfu_7 varchar(200) NULL,
	rfu_8 varchar(200) NULL,
	rfu_9 varchar(200) NULL,
	rfu_10 varchar(200) NULL,
	manual_settle_flag varchar(10) NULL,
	manual_settle_date timestamp NULL,
	de018 numeric(4) NULL,
	emvtag_9f02 varchar(100) NULL,
	emvtag_9f26 varchar(100) NULL,
	emvtag_82 varchar(100) NULL,
	emvtag_9f36 varchar(100) NULL,
	emvtag_9f27 varchar(100) NULL,
	emvtag_9f10 varchar(100) NULL,
	emvtag_9f33 varchar(100) NULL,
	emvtag_9f1a varchar(100) NULL,
	emvtag_95 varchar(100) NULL,
	emvtag_5f2a varchar(100) NULL,
	emvtag_9c varchar(100) NULL,
	emvtag_9f37 varchar(100) NULL,
	emvtag_9a varchar(100) NULL,
	bin numeric(6) NULL,
	institution_id varchar(6) NULL,
	program_id varchar(6) NULL,
	txn_unique_id varchar(50) NULL,
	de061 varchar(12) NULL,
	addn_tran_data varchar(16) NULL,
	reprocess_flag varchar(100) NULL,
	reprocess_date timestamp NULL,
	reprocess_user_id varchar(100) NULL,
	org_rep_file varchar(100) NULL,
	emvtag_9f03 varchar(100) NULL,
	emvtag_9f06 varchar(100) NULL,
	emvtag_5a varchar(100) NULL,
	emvtag_5f34 varchar(100) NULL,
	emvtag_9f07 varchar(100) NULL,
	emvtag_9f34 varchar(100) NULL,
	emvtag_84 varchar(100) NULL,
	emvtag_9f1e varchar(100) NULL,
	emvtag_91 varchar(100) NULL,
	emvtag_9f5b varchar(100) NULL,
	emvtag_71 varchar(100) NULL,
	emvtag_72 varchar(100) NULL,
	emvtag_9f09 varchar(100) NULL,
	emvtag_9f35 varchar(100) NULL,
	emvtag_9f41 varchar(100) NULL,
	emvtag_9f21 varchar(100) NULL,
	de039 varchar(200) NULL,
	pds0165 varchar(30) NULL,
	already_settle_flag varchar(2) NULL
);


-- cs_rupay_intemp definition

-- Drop table

-- DROP TABLE cs_rupay_intemp;

CREATE TABLE cs_rupay_intemp (
	batch_number varchar(4) NULL,
	bin_msg_type varchar(20) NULL,
	checker_date_time timestamp NULL,
	checker_flag varchar(10) NULL,
	checker_id varchar(100) NULL,
	cpd timestamp NULL,
	de002 varchar(64) NULL,
	de003 numeric(6) NULL,
	de004 numeric(12) NULL,
	de004_fp numeric(12) NULL,
	de005 numeric(12) NULL,
	de005_fp numeric(12) NULL,
	de006 numeric(12) NULL,
	de009 varchar(8) NULL,
	de010 numeric(8) NULL,
	de012 varchar(12) NULL,
	de022 varchar(999) NULL,
	de024 varchar(3) NULL,
	de025 numeric(4) NULL,
	de026 numeric(4) NULL,
	de031 varchar(23) NULL,
	de032 varchar(11) NULL,
	de037 varchar(12) NULL,
	de038 varchar(6) NULL,
	de040 varchar(3) NULL,
	de041 varchar(16) NULL,
	de041_fp varchar(8) NULL,
	de042 varchar(19) NULL,
	de042_fp varchar(19) NULL,
	de043_merch_addr varchar(40) NULL,
	de043_merch_addr_fp varchar(40) NULL,
	de043_merch_city varchar(13) NULL,
	de043_merch_city_fp varchar(13) NULL,
	de043_merch_country varchar(10) NULL,
	de043_merch_country_fp varchar(2) NULL,
	de043_merch_name varchar(23) NULL,
	de043_merch_name_fp varchar(23) NULL,
	de043_merch_state varchar(3) NULL,
	de043_merch_state_fp varchar(2) NULL,
	de043_merch_zipcode varchar(9) NULL,
	de043_merch_zipcode_fp varchar(9) NULL,
	de049 numeric(3) NULL,
	de049_fp varchar(3) NULL,
	de050 numeric(3) NULL,
	de050_fp numeric(3) NULL,
	de051 numeric(3) NULL,
	de054 numeric(12) NULL,
	de055 varchar(500) NULL,
	de071 varchar(8) NULL,
	de072 varchar(100) NULL,
	de093 varchar(11) NULL,
	de094 varchar(11) NULL,
	de095 varchar(14) NULL,
	de125 varchar(256) NULL,
	exception_date timestamp NULL,
	file_name varchar(100) NULL,
	id varchar(20) NULL,
	ide001 varchar(10) NULL,
	ide002 varchar(11) NULL,
	ide003 varchar(21) NULL,
	ide004 varchar(6) NULL,
	ide005 varchar(5) NULL,
	ide006 timestamp NULL,
	ide007 numeric(3) NULL,
	ide008 numeric(2) NULL,
	ide009 varchar(2) NULL,
	ide010 varchar(1) NULL,
	ide011 numeric(30) NULL,
	lofo_indicator varchar(20) NULL,
	match_id varchar(10) NULL,
	mti varchar(4) NULL,
	og_file_name varchar(100) NULL,
	og_gen varchar(100) NULL,
	parsed_date timestamp NULL,
	pds0005_2 varchar(1) NULL,
	pds0005_rej_rsncode_hdr numeric(4) NULL,
	pds0005_rej_rsncode_txn numeric(4) NULL,
	pds0122 varchar(1) NULL,
	pds0137 numeric(15) NULL,
	pds0146_curr_code_1 numeric(3) NULL,
	pds0146_curr_code_2 numeric(3) NULL,
	pds0146_curr_code_3 numeric(3) NULL,
	pds0146_curr_code_4 numeric(3) NULL,
	pds0146_curr_code_5 numeric(3) NULL,
	pds0146_drcr_1 varchar(1) NULL,
	pds0146_drcr_2 varchar(1) NULL,
	pds0146_drcr_3 varchar(1) NULL,
	pds0146_drcr_4 varchar(1) NULL,
	pds0146_drcr_5 varchar(1) NULL,
	pds0146_fee_amt_1 numeric(10) NULL,
	pds0146_fee_amt_2 numeric(10) NULL,
	pds0146_fee_amt_3 numeric(10) NULL,
	pds0146_fee_amt_4 numeric(10) NULL,
	pds0146_fee_amt_5 numeric(10) NULL,
	pds0146_fee_type_1 varchar(20) NULL,
	pds0146_fee_type_2 varchar(20) NULL,
	pds0146_fee_type_3 varchar(20) NULL,
	pds0146_fee_type_4 varchar(20) NULL,
	pds0146_fee_type_5 varchar(20) NULL,
	pds0146_intchg_cat numeric(4) NULL,
	pds0146_intchg_cat_1 numeric(4) NULL,
	pds0146_intchg_cat_2 numeric(4) NULL,
	pds0146_intchg_cat_3 numeric(4) NULL,
	pds0146_intchg_cat_4 numeric(4) NULL,
	pds0146_intchg_cat_5 numeric(4) NULL,
	pds0159_rgcs varchar(20) NULL,
	pds0159_org_sett_date varchar(10) NULL,
	pds0159_sett_date varchar(6) NULL,
	pds0159_sett_date_fp timestamp NULL,
	pds0170_phoneno varchar(11) NULL,
	pds0262 varchar(1) NULL,
	pds0268 varchar(1) NULL,
	pds0301 numeric(15) NULL,
	pds0306 varchar(10) NULL,
	pds0384 varchar(42) NULL,
	pds0390 varchar(1) NULL,
	pds0508 varchar(12) NULL,
	pds0515 varchar(20) NULL,
	pds0641 varchar(5) NULL,
	pds0677 varchar(10) NULL,
	pds0736 varchar(20) NULL,
	processing_flag varchar(10) NULL,
	process_date timestamp NULL,
	process_id varchar(200) NULL,
	recon_date timestamp NULL,
	recon_flag varchar(100) NULL,
	recon_id varchar(100) NULL,
	settlement_date timestamp NULL,
	ttum_file_id varchar(100) NULL,
	ttum_file_name varchar(100) NULL,
	ttum_gen_date varchar(100) NULL,
	ttum_gen_flag varchar(100) NULL,
	txn_code varchar(20) NULL,
	txn_code_desc varchar(100) NULL,
	txn_code_id varchar(100) NULL,
	pds0206 varchar(1) NULL,
	txn_stage_ind varchar(2) NULL,
	txn_id varchar(20) NULL,
	terminal_capability_indicator varchar(1) NULL,
	merch_invoice_num varchar(20) NULL,
	auth_actual_amount varchar(20) NULL,
	ecs_indicator varchar(20) NULL,
	motoint_reason varchar(20) NULL,
	switch_id varchar(20) NULL,
	exception_flag varchar(20) NULL,
	curr_exp varchar(20) NULL,
	exception_desc varchar(4000) NULL,
	txn_type varchar(50) NULL,
	gateway_type varchar(50) NULL,
	tech_type varchar(50) NULL,
	fetched_for_og varchar(31) NULL,
	trace_id varchar(15) NULL,
	txn_cat varchar(10) NULL,
	surcharge_amt varchar(20) NULL,
	tip_amt varchar(20) NULL,
	srv_sur_amt varchar(20) NULL,
	tran_identifier varchar(15) NULL,
	pos_data_code varchar(12) NULL,
	og_send_flag varchar(20) NULL,
	host_settle_flag varchar(20) NULL,
	host_settle_date varchar(20) NULL,
	rep_flag varchar(1) NULL,
	rep_fullind varchar(1) NULL,
	rep_adj_amt numeric NULL,
	rep_process_id varchar(200) NULL,
	cs_host_recon_flag varchar(2) NULL,
	cs_host_recon_date timestamp NULL,
	cs_host_recon_diff numeric NULL,
	cs_host_mcc varchar(4) NULL,
	cs_host_recon_rrn varchar(50) NULL,
	rfu_1 varchar(200) NULL,
	rfu_2 timestamp NULL,
	rfu_3 varchar(200) NULL,
	rfu_4 varchar(200) NULL,
	rfu_5 varchar(200) NULL,
	rfu_6 varchar(200) NULL,
	rfu_7 varchar(200) NULL,
	rfu_8 varchar(200) NULL,
	rfu_9 varchar(200) NULL,
	rfu_10 varchar(200) NULL,
	manual_settle_flag varchar(10) NULL,
	manual_settle_date timestamp NULL,
	de018 numeric(4) NULL,
	emvtag_9f02 varchar(100) NULL,
	emvtag_9f26 varchar(100) NULL,
	emvtag_82 varchar(100) NULL,
	emvtag_9f36 varchar(100) NULL,
	emvtag_9f27 varchar(100) NULL,
	emvtag_9f10 varchar(100) NULL,
	emvtag_9f33 varchar(100) NULL,
	emvtag_9f1a varchar(100) NULL,
	emvtag_95 varchar(100) NULL,
	emvtag_5f2a varchar(100) NULL,
	emvtag_9c varchar(100) NULL,
	emvtag_9f37 varchar(100) NULL,
	emvtag_9a varchar(100) NULL,
	bin numeric(6) NULL,
	institution_id varchar(6) NULL,
	program_id varchar(6) NULL,
	txn_unique_id varchar(50) NULL,
	de061 varchar(12) NULL,
	addn_tran_data varchar(16) NULL,
	reprocess_flag varchar(100) NULL,
	reprocess_date timestamp NULL,
	reprocess_user_id varchar(100) NULL,
	org_rep_file varchar(100) NULL,
	emvtag_9f03 varchar(100) NULL,
	emvtag_9f06 varchar(100) NULL,
	emvtag_5a varchar(100) NULL,
	emvtag_5f34 varchar(100) NULL,
	emvtag_9f07 varchar(100) NULL,
	emvtag_9f34 varchar(100) NULL,
	emvtag_84 varchar(100) NULL,
	emvtag_9f1e varchar(100) NULL,
	emvtag_91 varchar(100) NULL,
	emvtag_9f5b varchar(100) NULL,
	emvtag_71 varchar(100) NULL,
	emvtag_72 varchar(100) NULL,
	emvtag_9f09 varchar(100) NULL,
	emvtag_9f35 varchar(100) NULL,
	emvtag_9f41 varchar(100) NULL,
	emvtag_9f21 varchar(100) NULL,
	de039 varchar(200) NULL,
	pds0165 varchar(30) NULL,
	already_settle_flag varchar(2) NULL
);


-- cs_rupay_netswitcha definition

-- Drop table

-- DROP TABLE cs_rupay_netswitcha;

CREATE TABLE cs_rupay_netswitcha (
	bin_msg_type varchar(2) NULL,
	product_id varchar(3) NULL,
	txn_type varchar(2) NULL,
	from_ac_type varchar(2) NULL,
	to_ac_type varchar(2) NULL,
	resp_code_flag varchar(1) NULL,
	ide009 varchar(2) NULL,
	de002 varchar(32) NULL,
	de038 varchar(6) NULL,
	de037 varchar(12) NULL,
	actual_de013 varchar(7) NULL,
	de012 varchar(12) NULL,
	actual_de012 varchar(6) NULL,
	de026 varchar(4) NULL,
	de042 varchar(15) NULL,
	de041 varchar(8) NULL,
	de043_merch_addr varchar(40) NULL,
	de032 varchar(11) NULL,
	de049 varchar(3) NULL,
	de004 varchar(15) NULL,
	de051 varchar(3) NULL,
	de006 varchar(15) NULL,
	ide007 varchar(2) NULL,
	de022_pin_entry_cap varchar(1) NULL,
	pin_cap_code varchar(2) NULL,
	de019 varchar(3) NULL,
	de054 varchar(15) NULL,
	de048_rupay_product varchar(5) NULL,
	de048_cvd2 varchar(1) NULL,
	de048_cvd_icvd varchar(1) NULL,
	de048_recur_pay_ind varchar(2) NULL,
	de048_ecs_ind varchar(2) NULL,
	de048_ics1_code varchar(2) NULL,
	de048_fraud_score varchar(5) NULL,
	de048_emi_amount varchar(26) NULL,
	de048_aqrc_auth varchar(1) NULL,
	de048_txn_id varchar(30) NULL,
	de048_loyalty_point varchar(6) NULL,
	de048_ics2 varchar(1) NULL,
	de048_cust_mobile_num varchar(12) NULL,
	de048_image_code varchar(5) NULL,
	de048_personal_phase varchar(5) NULL,
	de048_uid_num varchar(12) NULL,
	de061_card_data_cap varchar(1) NULL,
	de061_card_auth_cap varchar(1) NULL,
	de061_card_capture_cap varchar(1) NULL,
	de061_term_op_env varchar(1) NULL,
	de061_cardhold_pesent_data varchar(1) NULL,
	de061_card_pesent_data varchar(1) NULL,
	de061_card_data_input_mode varchar(1) NULL,
	de061_cardhold_auth_mode varchar(1) NULL,
	de061_cardhold_auth_entity varchar(1) NULL,
	de061_card_data_op_cap varchar(1) NULL,
	de061_term_data_op_cap varchar(1) NULL,
	de061_pin_capture_cap varchar(1) NULL,
	de061_zip_code varchar(9) NULL,
	de060_advice_reason_code varchar(7) NULL,
	de048_it_pan varchar(10) NULL,
	de048_intr_auth_nw varchar(15) NULL,
	otp_ind varchar(1) NULL,
	de048_ics_txn_id varchar(15) NULL,
	de048_nw_data varchar(12) NULL,
	de040 varchar(3) NULL,
	de049_actual_txn_curr varchar(3) NULL,
	de095_actual_txn_amount varchar(15) NULL,
	process_date varchar(25) NULL,
	file_name varchar(50) NULL,
	process_id varchar(20) NULL,
	id varchar(20) NULL,
	pds0146_fee_type_2 varchar(20) NULL,
	pds0146_fee_amt_2 varchar(20) NULL,
	pds0146_drcr_2 varchar(20) NULL,
	pds0146_curr_code_2 varchar(20) NULL,
	pds0159_sett_date varchar(20) NULL,
	txn_code varchar(150) NULL,
	ide001 varchar(12) NULL,
	de094 varchar(11) NULL,
	pds0122 varchar(1) NULL,
	ide005 varchar(5) NULL,
	pds0306 varchar(15) NULL,
	pds0301 varchar(15) NULL,
	in_process_id varchar(20) NULL,
	mti varchar(50) NULL,
	de024 varchar(50) NULL,
	de018 numeric(4) NULL,
	bin numeric(6) NULL,
	institution_id varchar(6) NULL,
	program_id varchar(6) NULL,
	reprocess_flag varchar(100) NULL,
	reprocess_date timestamp NULL,
	reprocess_user_id varchar(100) NULL,
	org_rep_file varchar(100) NULL
);


-- cs_rupay_netswitchd definition

-- Drop table

-- DROP TABLE cs_rupay_netswitchd;

CREATE TABLE cs_rupay_netswitchd (
	bin_msg_type varchar(2) NULL,
	product_id varchar(3) NULL,
	txn_type varchar(2) NULL,
	from_ac_type varchar(2) NULL,
	to_ac_type varchar(2) NULL,
	resp_code_flag varchar(1) NULL,
	ide009 varchar(2) NULL,
	de002 varchar(32) NULL,
	de038 varchar(6) NULL,
	de037 varchar(12) NULL,
	actual_de013 varchar(7) NULL,
	de012 varchar(12) NULL,
	actual_de012 varchar(6) NULL,
	de026 varchar(4) NULL,
	de042 varchar(15) NULL,
	de041 varchar(8) NULL,
	de043_merch_addr varchar(40) NULL,
	de032 varchar(11) NULL,
	de049 varchar(3) NULL,
	de004 varchar(15) NULL,
	de051 varchar(3) NULL,
	de006 varchar(15) NULL,
	ide007 varchar(2) NULL,
	de022_pin_entry_cap varchar(1) NULL,
	pin_cap_code varchar(2) NULL,
	de019 varchar(3) NULL,
	de054 varchar(15) NULL,
	de048_rupay_product varchar(5) NULL,
	de048_cvd2 varchar(1) NULL,
	de048_cvd_icvd varchar(1) NULL,
	de048_recur_pay_ind varchar(2) NULL,
	de048_ecs_ind varchar(2) NULL,
	de048_ics1_code varchar(2) NULL,
	de048_fraud_score varchar(5) NULL,
	de048_emi_amount varchar(26) NULL,
	de048_aqrc_auth varchar(1) NULL,
	de048_txn_id varchar(30) NULL,
	de048_loyalty_point varchar(6) NULL,
	de048_ics2 varchar(1) NULL,
	de048_cust_mobile_num varchar(12) NULL,
	de048_image_code varchar(5) NULL,
	de048_personal_phase varchar(5) NULL,
	de048_uid_num varchar(12) NULL,
	de061_card_data_cap varchar(1) NULL,
	de061_card_auth_cap varchar(1) NULL,
	de061_card_capture_cap varchar(1) NULL,
	de061_term_op_env varchar(1) NULL,
	de061_cardhold_pesent_data varchar(1) NULL,
	de061_card_pesent_data varchar(1) NULL,
	de061_card_data_input_mode varchar(1) NULL,
	de061_cardhold_auth_mode varchar(1) NULL,
	de061_cardhold_auth_entity varchar(1) NULL,
	de061_card_data_op_cap varchar(1) NULL,
	de061_term_data_op_cap varchar(1) NULL,
	de061_pin_capture_cap varchar(1) NULL,
	de061_zip_code varchar(9) NULL,
	de060_advice_reason_code varchar(7) NULL,
	de048_it_pan varchar(10) NULL,
	de048_intr_auth_nw varchar(15) NULL,
	otp_ind varchar(1) NULL,
	de048_ics_txn_id varchar(15) NULL,
	de048_nw_data varchar(12) NULL,
	de040 varchar(3) NULL,
	de049_actual_txn_curr varchar(3) NULL,
	de095_actual_txn_amount varchar(15) NULL,
	process_date varchar(25) NULL,
	file_name varchar(50) NULL,
	process_id varchar(20) NULL,
	id varchar(20) NULL,
	pds0146_fee_type_2 varchar(20) NULL,
	pds0146_fee_amt_2 varchar(20) NULL,
	pds0146_drcr_2 varchar(20) NULL,
	pds0146_curr_code_2 varchar(20) NULL,
	pds0159_sett_date varchar(20) NULL,
	txn_code varchar(150) NULL,
	ide001 varchar(12) NULL,
	de094 varchar(11) NULL,
	pds0122 varchar(1) NULL,
	ide005 varchar(5) NULL,
	pds0306 varchar(15) NULL,
	pds0301 varchar(15) NULL,
	in_process_id varchar(20) NULL,
	mti varchar(50) NULL,
	de024 varchar(50) NULL,
	de018 numeric(4) NULL,
	bin numeric(6) NULL,
	institution_id varchar(6) NULL,
	program_id varchar(6) NULL,
	reprocess_flag varchar(100) NULL,
	reprocess_date timestamp NULL,
	reprocess_user_id varchar(100) NULL,
	org_rep_file varchar(100) NULL
);


-- cs_rupay_netswitchtemp definition

-- Drop table

-- DROP TABLE cs_rupay_netswitchtemp;

CREATE TABLE cs_rupay_netswitchtemp (
	bin_msg_type varchar(2) NULL,
	product_id varchar(3) NULL,
	txn_type varchar(2) NULL,
	from_ac_type varchar(2) NULL,
	to_ac_type varchar(2) NULL,
	resp_code_flag varchar(1) NULL,
	ide009 varchar(2) NULL,
	de002 varchar(32) NULL,
	de038 varchar(6) NULL,
	de037 varchar(12) NULL,
	actual_de013 varchar(7) NULL,
	de012 varchar(12) NULL,
	actual_de012 varchar(6) NULL,
	de026 varchar(4) NULL,
	de042 varchar(15) NULL,
	de041 varchar(8) NULL,
	de043_merch_addr varchar(40) NULL,
	de032 varchar(11) NULL,
	de049 varchar(3) NULL,
	de004 varchar(15) NULL,
	de051 varchar(3) NULL,
	de006 varchar(15) NULL,
	ide007 varchar(2) NULL,
	de022_pin_entry_cap varchar(1) NULL,
	pin_cap_code varchar(2) NULL,
	de019 varchar(3) NULL,
	de054 varchar(15) NULL,
	de048_rupay_product varchar(5) NULL,
	de048_cvd2 varchar(1) NULL,
	de048_cvd_icvd varchar(1) NULL,
	de048_recur_pay_ind varchar(2) NULL,
	de048_ecs_ind varchar(2) NULL,
	de048_ics1_code varchar(2) NULL,
	de048_fraud_score varchar(5) NULL,
	de048_emi_amount varchar(26) NULL,
	de048_aqrc_auth varchar(1) NULL,
	de048_txn_id varchar(30) NULL,
	de048_loyalty_point varchar(6) NULL,
	de048_ics2 varchar(1) NULL,
	de048_cust_mobile_num varchar(12) NULL,
	de048_image_code varchar(5) NULL,
	de048_personal_phase varchar(5) NULL,
	de048_uid_num varchar(12) NULL,
	de061_card_data_cap varchar(1) NULL,
	de061_card_auth_cap varchar(1) NULL,
	de061_card_capture_cap varchar(1) NULL,
	de061_term_op_env varchar(1) NULL,
	de061_cardhold_pesent_data varchar(1) NULL,
	de061_card_pesent_data varchar(1) NULL,
	de061_card_data_input_mode varchar(1) NULL,
	de061_cardhold_auth_mode varchar(1) NULL,
	de061_cardhold_auth_entity varchar(1) NULL,
	de061_card_data_op_cap varchar(1) NULL,
	de061_term_data_op_cap varchar(1) NULL,
	de061_pin_capture_cap varchar(1) NULL,
	de061_zip_code varchar(9) NULL,
	de060_advice_reason_code varchar(7) NULL,
	de048_it_pan varchar(10) NULL,
	de048_intr_auth_nw varchar(15) NULL,
	otp_ind varchar(1) NULL,
	de048_ics_txn_id varchar(15) NULL,
	de048_nw_data varchar(12) NULL,
	de040 varchar(3) NULL,
	de049_actual_txn_curr varchar(3) NULL,
	de095_actual_txn_amount varchar(15) NULL,
	process_date varchar(25) NULL,
	file_name varchar(50) NULL,
	process_id varchar(20) NULL,
	id varchar(20) NULL,
	pds0146_fee_type_2 varchar(20) NULL,
	pds0146_fee_amt_2 varchar(20) NULL,
	pds0146_drcr_2 varchar(20) NULL,
	pds0146_curr_code_2 varchar(20) NULL,
	pds0159_sett_date varchar(20) NULL,
	txn_code varchar(150) NULL,
	ide001 varchar(12) NULL,
	de094 varchar(11) NULL,
	pds0122 varchar(1) NULL,
	ide005 varchar(5) NULL,
	pds0306 varchar(15) NULL,
	pds0301 varchar(15) NULL,
	in_process_id varchar(20) NULL,
	de024 varchar(50) NULL,
	mti varchar(50) NULL,
	de018 numeric(4) NULL,
	bin numeric(6) NULL,
	institution_id varchar(6) NULL,
	program_id varchar(6) NULL,
	reprocess_flag varchar(100) NULL,
	reprocess_date timestamp NULL,
	reprocess_user_id varchar(100) NULL,
	org_rep_file varchar(100) NULL
);


-- cs_rupay_network_fee definition

-- Drop table

-- DROP TABLE cs_rupay_network_fee;

CREATE TABLE cs_rupay_network_fee (
	batch_number varchar(4) NULL,
	bin_msg_type varchar(20) NULL,
	checker_date_time timestamp NULL,
	checker_flag varchar(10) NULL,
	checker_id varchar(100) NULL,
	cpd timestamp NULL,
	de002 varchar(64) NULL,
	de003 numeric(6) NULL,
	de004 numeric(12) NULL,
	de004_fp numeric(12) NULL,
	de005 numeric(12) NULL,
	de005_fp numeric(12) NULL,
	de006 numeric(12) NULL,
	de009 varchar(8) NULL,
	de010 numeric(8) NULL,
	de012 varchar(12) NULL,
	de022 varchar(999) NULL,
	de024 varchar(3) NULL,
	de025 numeric(4) NULL,
	de026 numeric(4) NULL,
	de031 varchar(23) NULL,
	de032 varchar(11) NULL,
	de037 varchar(12) NULL,
	de038 varchar(6) NULL,
	de040 varchar(3) NULL,
	de041 varchar(16) NULL,
	de041_fp varchar(8) NULL,
	de042 varchar(19) NULL,
	de042_fp varchar(19) NULL,
	de043_merch_addr varchar(40) NULL,
	de043_merch_addr_fp varchar(40) NULL,
	de043_merch_city varchar(13) NULL,
	de043_merch_city_fp varchar(13) NULL,
	de043_merch_country varchar(10) NULL,
	de043_merch_country_fp varchar(2) NULL,
	de043_merch_name varchar(23) NULL,
	de043_merch_name_fp varchar(23) NULL,
	de043_merch_state varchar(3) NULL,
	de043_merch_state_fp varchar(2) NULL,
	de043_merch_zipcode varchar(9) NULL,
	de043_merch_zipcode_fp varchar(9) NULL,
	de049 numeric(3) NULL,
	de049_fp varchar(3) NULL,
	de050 numeric(3) NULL,
	de050_fp numeric(3) NULL,
	de051 numeric(3) NULL,
	de054 numeric(12) NULL,
	de055 varchar(255) NULL,
	de071 varchar(8) NULL,
	de072 varchar(100) NULL,
	de093 varchar(11) NULL,
	de094 varchar(11) NULL,
	de095 varchar(14) NULL,
	de125 varchar(256) NULL,
	exception_date timestamp NULL,
	file_name varchar(100) NULL,
	id varchar(20) NULL,
	ide001 varchar(10) NULL,
	ide002 varchar(11) NULL,
	ide003 varchar(21) NULL,
	ide004 varchar(6) NULL,
	ide005 varchar(5) NULL,
	ide006 timestamp NULL,
	ide007 numeric(3) NULL,
	ide008 numeric(2) NULL,
	ide009 varchar(2) NULL,
	ide010 varchar(1) NULL,
	ide011 numeric(30) NULL,
	lofo_indicator varchar(20) NULL,
	match_id varchar(10) NULL,
	mti varchar(4) NULL,
	og_file_name varchar(100) NULL,
	og_gen varchar(100) NULL,
	parsed_date timestamp NULL,
	pds0005_2 varchar(1) NULL,
	pds0005_rej_rsncode_hdr numeric(4) NULL,
	pds0005_rej_rsncode_txn numeric(4) NULL,
	pds0122 varchar(1) NULL,
	pds0137 numeric(15) NULL,
	pds0146_curr_code_1 numeric(3) NULL,
	pds0146_curr_code_2 numeric(3) NULL,
	pds0146_curr_code_3 numeric(3) NULL,
	pds0146_curr_code_4 numeric(3) NULL,
	pds0146_curr_code_5 numeric(3) NULL,
	pds0146_drcr_1 varchar(1) NULL,
	pds0146_drcr_2 varchar(1) NULL,
	pds0146_drcr_3 varchar(1) NULL,
	pds0146_drcr_4 varchar(1) NULL,
	pds0146_drcr_5 varchar(1) NULL,
	pds0146_fee_amt_1 numeric(10) NULL,
	pds0146_fee_amt_2 numeric(10) NULL,
	pds0146_fee_amt_3 numeric(10) NULL,
	pds0146_fee_amt_4 numeric(10) NULL,
	pds0146_fee_amt_5 numeric(10) NULL,
	pds0146_fee_type_1 varchar(20) NULL,
	pds0146_fee_type_2 varchar(20) NULL,
	pds0146_fee_type_3 varchar(20) NULL,
	pds0146_fee_type_4 varchar(20) NULL,
	pds0146_fee_type_5 varchar(20) NULL,
	pds0146_intchg_cat numeric(4) NULL,
	pds0146_intchg_cat_1 numeric(4) NULL,
	pds0146_intchg_cat_2 numeric(4) NULL,
	pds0146_intchg_cat_3 numeric(4) NULL,
	pds0146_intchg_cat_4 numeric(4) NULL,
	pds0146_intchg_cat_5 numeric(4) NULL,
	pds0159_rgcs varchar(20) NULL,
	pds0159_org_sett_date varchar(10) NULL,
	pds0159_sett_date varchar(6) NULL,
	pds0159_sett_date_fp timestamp NULL,
	pds0170_phoneno varchar(11) NULL,
	pds0262 varchar(1) NULL,
	pds0268 varchar(1) NULL,
	pds0301 numeric(15) NULL,
	pds0306 varchar(10) NULL,
	pds0384 varchar(42) NULL,
	pds0390 varchar(1) NULL,
	pds0508 varchar(12) NULL,
	pds0515 varchar(20) NULL,
	pds0641 varchar(5) NULL,
	pds0677 varchar(10) NULL,
	pds0736 varchar(20) NULL,
	processing_flag varchar(10) NULL,
	process_date timestamp NULL,
	process_id varchar(200) NULL,
	recon_date timestamp NULL,
	recon_flag varchar(100) NULL,
	recon_id varchar(100) NULL,
	settlement_date timestamp NULL,
	ttum_file_id varchar(100) NULL,
	ttum_file_name varchar(100) NULL,
	ttum_gen_date varchar(100) NULL,
	ttum_gen_flag varchar(100) NULL,
	txn_code varchar(20) NULL,
	txn_code_desc varchar(100) NULL,
	txn_code_id varchar(100) NULL,
	pds0206 varchar(1) NULL,
	txn_stage_ind varchar(2) NULL,
	txn_id varchar(20) NULL,
	terminal_capability_indicator varchar(1) NULL,
	merch_invoice_num varchar(20) NULL,
	auth_actual_amount varchar(20) NULL,
	ecs_indicator varchar(20) NULL,
	motoint_reason varchar(20) NULL,
	switch_id varchar(20) NULL,
	exception_flag varchar(20) NULL,
	curr_exp varchar(20) NULL,
	exception_desc varchar(4000) NULL,
	txn_type varchar(50) NULL,
	gateway_type varchar(50) NULL,
	tech_type varchar(50) NULL,
	fetched_for_og varchar(31) NULL,
	trace_id varchar(15) NULL,
	txn_cat varchar(10) NULL,
	surcharge_amt varchar(20) NULL,
	tip_amt varchar(20) NULL,
	srv_sur_amt varchar(20) NULL,
	tran_identifier varchar(15) NULL,
	pos_data_code varchar(12) NULL,
	og_send_flag varchar(20) NULL,
	host_settle_flag varchar(20) NULL,
	host_settle_date varchar(20) NULL,
	rep_flag varchar(1) NULL,
	rep_fullind varchar(1) NULL,
	rep_adj_amt numeric NULL,
	rep_process_id varchar(200) NULL,
	cs_host_recon_flag varchar(2) NULL,
	cs_host_recon_date timestamp NULL,
	cs_host_recon_diff numeric NULL,
	cs_host_mcc varchar(4) NULL,
	cs_host_recon_rrn varchar(50) NULL,
	rfu_1 varchar(200) NULL,
	rfu_2 timestamp NULL,
	rfu_3 varchar(200) NULL,
	rfu_4 varchar(200) NULL,
	rfu_5 varchar(200) NULL,
	rfu_6 varchar(200) NULL,
	rfu_7 varchar(200) NULL,
	rfu_8 varchar(200) NULL,
	rfu_9 varchar(200) NULL,
	rfu_10 varchar(200) NULL,
	manual_settle_flag varchar(10) NULL,
	manual_settle_date timestamp NULL,
	de018 numeric(4) NULL,
	emvtag_9f02 varchar(100) NULL,
	emvtag_9f26 varchar(100) NULL,
	emvtag_82 varchar(100) NULL,
	emvtag_9f36 varchar(100) NULL,
	emvtag_9f27 varchar(100) NULL,
	emvtag_9f10 varchar(100) NULL,
	emvtag_9f33 varchar(100) NULL,
	emvtag_9f1a varchar(100) NULL,
	emvtag_95 varchar(100) NULL,
	emvtag_5f2a varchar(100) NULL,
	emvtag_9c varchar(100) NULL,
	emvtag_9f37 varchar(100) NULL,
	emvtag_9a varchar(100) NULL,
	bin numeric(6) NULL,
	institution_id varchar(6) NULL,
	program_id varchar(6) NULL,
	txn_unique_id varchar(50) NULL,
	de061 varchar(12) NULL,
	addn_tran_data varchar(16) NULL,
	reprocess_flag varchar(100) NULL,
	reprocess_date timestamp NULL,
	reprocess_user_id varchar(100) NULL,
	org_rep_file varchar(100) NULL,
	emvtag_9f03 varchar(100) NULL,
	emvtag_9f06 varchar(100) NULL,
	emvtag_5a varchar(100) NULL,
	emvtag_5f34 varchar(100) NULL,
	emvtag_9f07 varchar(100) NULL,
	emvtag_9f34 varchar(100) NULL,
	emvtag_84 varchar(100) NULL,
	emvtag_9f1e varchar(100) NULL,
	emvtag_91 varchar(100) NULL,
	emvtag_9f5b varchar(100) NULL,
	emvtag_71 varchar(100) NULL,
	emvtag_72 varchar(100) NULL,
	emvtag_9f09 varchar(100) NULL,
	emvtag_9f35 varchar(100) NULL,
	emvtag_9f41 varchar(100) NULL,
	emvtag_9f21 varchar(100) NULL,
	de039 varchar(200) NULL,
	pds0165 varchar(30) NULL,
	already_settle_flag varchar(2) NULL
);


-- cs_rupay_og definition

-- Drop table

-- DROP TABLE cs_rupay_og;

CREATE TABLE cs_rupay_og (
	batch_number varchar(10) NULL,
	bin_msg_type varchar(20) NULL,
	checker_date_time timestamp NULL,
	checker_flag varchar(10) NULL,
	checker_id varchar(100) NULL,
	cpd timestamp NULL,
	de002 varchar(64) NULL,
	de003 varchar(6) NULL,
	de004 varchar(12) NULL,
	de004_fp numeric(12) NULL,
	de005 varchar(12) NULL,
	de005_fp numeric(12) NULL,
	de006 numeric(12) NULL,
	de009 varchar(8) NULL,
	de010 numeric(8) NULL,
	de012 varchar(12) NULL,
	de022 varchar(999) NULL,
	de024 varchar(5) NULL,
	de025 numeric(4) NULL,
	de026 numeric(4) NULL,
	de031 varchar(23) NULL,
	de032 varchar(11) NULL,
	de037 varchar(12) NULL,
	de038 varchar(6) NULL,
	de040 varchar(3) NULL,
	de041 varchar(16) NULL,
	de041_fp varchar(8) NULL,
	de042 varchar(19) NULL,
	de042_fp varchar(19) NULL,
	de043_merch_addr varchar(40) NULL,
	de043_merch_addr_fp varchar(40) NULL,
	de043_merch_city varchar(13) NULL,
	de043_merch_city_fp varchar(13) NULL,
	de043_merch_country varchar(10) NULL,
	de043_merch_country_fp varchar(2) NULL,
	de043_merch_name varchar(23) NULL,
	de043_merch_name_fp varchar(23) NULL,
	de043_merch_state varchar(3) NULL,
	de043_merch_state_fp varchar(2) NULL,
	de043_merch_zipcode varchar(9) NULL,
	de043_merch_zipcode_fp varchar(9) NULL,
	de049 numeric(3) NULL,
	de049_fp varchar(3) NULL,
	de050 numeric(3) NULL,
	de050_fp numeric(3) NULL,
	de051 numeric(3) NULL,
	de054 numeric(12) NULL,
	de055 varchar(500) NULL,
	de071 varchar(8) NULL,
	de072 varchar(100) NULL,
	de093 varchar(11) NULL,
	de094 varchar(11) NULL,
	de095 varchar(14) NULL,
	de125 varchar(256) NULL,
	exception_date timestamp NULL,
	file_name varchar(100) NULL,
	id varchar(20) NULL,
	ide001 varchar(10) NULL,
	ide002 varchar(11) NULL,
	ide003 varchar(21) NULL,
	ide004 varchar(6) NULL,
	ide005 varchar(5) NULL,
	ide006 varchar(15) NULL,
	ide007 numeric(3) NULL,
	ide008 varchar(2) NULL,
	ide009 varchar(2) NULL,
	ide010 varchar(1) NULL,
	ide011 numeric(30) NULL,
	lofo_indicator varchar(20) NULL,
	match_id varchar(10) NULL,
	mti varchar(4) NULL,
	og_file_name varchar(100) NULL,
	og_gen varchar(100) NULL,
	parsed_date timestamp NULL,
	pds0005_2 varchar(1) NULL,
	pds0005_rej_rsncode_hdr numeric(4) NULL,
	pds0005_rej_rsncode_txn numeric(4) NULL,
	pds0122 varchar(1) NULL,
	pds0137 numeric(15) NULL,
	pds0146_curr_code_1 numeric(3) NULL,
	pds0146_curr_code_2 numeric(3) NULL,
	pds0146_curr_code_3 numeric(3) NULL,
	pds0146_curr_code_4 numeric(3) NULL,
	pds0146_curr_code_5 numeric(3) NULL,
	pds0146_drcr_1 varchar(1) NULL,
	pds0146_drcr_2 varchar(1) NULL,
	pds0146_drcr_3 varchar(1) NULL,
	pds0146_drcr_4 varchar(1) NULL,
	pds0146_drcr_5 varchar(1) NULL,
	pds0146_fee_amt_1 numeric(10) NULL,
	pds0146_fee_amt_2 numeric(10) NULL,
	pds0146_fee_amt_3 numeric(10) NULL,
	pds0146_fee_amt_4 numeric(10) NULL,
	pds0146_fee_amt_5 numeric(10) NULL,
	pds0146_fee_type_1 varchar(20) NULL,
	pds0146_fee_type_2 varchar(20) NULL,
	pds0146_fee_type_3 varchar(20) NULL,
	pds0146_fee_type_4 varchar(20) NULL,
	pds0146_fee_type_5 varchar(20) NULL,
	pds0146_intchg_cat numeric(4) NULL,
	pds0146_intchg_cat_1 numeric(4) NULL,
	pds0146_intchg_cat_2 numeric(4) NULL,
	pds0146_intchg_cat_3 numeric(4) NULL,
	pds0146_intchg_cat_4 numeric(4) NULL,
	pds0146_intchg_cat_5 numeric(4) NULL,
	pds0159_rgcs varchar(20) NULL,
	pds0159_org_sett_date varchar(10) NULL,
	pds0159_sett_date varchar(6) NULL,
	pds0159_sett_date_fp timestamp NULL,
	pds0170_phoneno varchar(11) NULL,
	pds0262 varchar(1) NULL,
	pds0268 varchar(1) NULL,
	pds0301 numeric(15) NULL,
	pds0306 varchar(10) NULL,
	pds0384 varchar(42) NULL,
	pds0390 varchar(1) NULL,
	pds0508 varchar(12) NULL,
	pds0515 varchar(20) NULL,
	pds0641 varchar(5) NULL,
	pds0677 varchar(10) NULL,
	pds0736 varchar(20) NULL,
	processing_flag varchar(10) NULL,
	process_date timestamp NULL,
	process_id varchar(200) NULL,
	recon_date timestamp NULL,
	recon_flag varchar(100) NULL,
	recon_id varchar(100) NULL,
	settlement_date timestamp NULL,
	ttum_file_id varchar(100) NULL,
	ttum_file_name varchar(100) NULL,
	ttum_gen_date varchar(100) NULL,
	ttum_gen_flag varchar(100) NULL,
	txn_code varchar(20) NULL,
	txn_code_desc varchar(100) NULL,
	txn_code_id varchar(100) NULL,
	pds0206 varchar(1) NULL,
	txn_stage_ind varchar(2) NULL,
	txn_id varchar(20) NULL,
	terminal_capability_indicator varchar(1) NULL,
	merch_invoice_num varchar(20) NULL,
	auth_actual_amount varchar(20) NULL,
	ecs_indicator varchar(20) NULL,
	motoint_reason varchar(20) NULL,
	switch_id varchar(20) NULL,
	exception_flag varchar(20) NULL,
	curr_exp varchar(20) NULL,
	exception_desc varchar(4000) NULL,
	txn_type varchar(50) NULL,
	gateway_type varchar(50) NULL,
	tech_type varchar(50) NULL,
	fetched_for_og varchar(31) NULL,
	trace_id varchar(15) NULL,
	txn_cat varchar(10) NULL,
	surcharge_amt varchar(20) NULL,
	tip_amt varchar(20) NULL,
	srv_sur_amt varchar(20) NULL,
	tran_identifier varchar(15) NULL,
	pos_data_code varchar(12) NULL,
	og_send_flag varchar(20) NULL,
	host_settle_flag varchar(20) NULL,
	host_settle_date varchar(20) NULL,
	rep_flag varchar(1) NULL,
	rep_fullind varchar(1) NULL,
	rep_adj_amt numeric NULL,
	rep_process_id varchar(200) NULL,
	cs_host_recon_flag varchar(2) NULL,
	cs_host_recon_date timestamp NULL,
	cs_host_recon_diff numeric NULL,
	cs_host_mcc varchar(4) NULL,
	cs_host_recon_rrn varchar(50) NULL,
	rfu_1 varchar(200) NULL,
	rfu_2 timestamp NULL,
	rfu_3 varchar(200) NULL,
	rfu_4 varchar(200) NULL,
	rfu_5 varchar(200) NULL,
	rfu_6 varchar(200) NULL,
	rfu_7 varchar(200) NULL,
	rfu_8 varchar(200) NULL,
	rfu_9 varchar(200) NULL,
	rfu_10 varchar(200) NULL,
	manual_settle_flag varchar(10) NULL DEFAULT 'N'::character varying,
	manual_settle_date timestamp NULL,
	de018 numeric(4) NULL,
	emvtag_9f02 varchar(100) NULL,
	emvtag_9f26 varchar(100) NULL,
	emvtag_82 varchar(100) NULL,
	emvtag_9f36 varchar(100) NULL,
	emvtag_9f27 varchar(100) NULL,
	emvtag_9f10 varchar(100) NULL,
	emvtag_9f33 varchar(100) NULL,
	emvtag_9f1a varchar(100) NULL,
	emvtag_95 varchar(100) NULL,
	emvtag_5f2a varchar(100) NULL,
	emvtag_9c varchar(100) NULL,
	emvtag_9f37 varchar(100) NULL,
	emvtag_9a varchar(100) NULL,
	bin numeric(6) NULL,
	institution_id varchar(6) NULL,
	program_id varchar(6) NULL,
	txn_unique_id varchar(50) NULL,
	de061 varchar(41) NULL,
	addn_tran_data varchar(16) NULL,
	reprocess_flag varchar(100) NULL,
	reprocess_date timestamp NULL,
	reprocess_user_id varchar(100) NULL,
	org_rep_file varchar(100) NULL,
	emvtag_9f03 varchar(100) NULL,
	emvtag_9f06 varchar(100) NULL,
	emvtag_5a varchar(100) NULL,
	emvtag_5f34 varchar(100) NULL,
	emvtag_9f07 varchar(100) NULL,
	emvtag_9f34 varchar(100) NULL,
	emvtag_84 varchar(100) NULL,
	emvtag_9f1e varchar(100) NULL,
	emvtag_91 varchar(100) NULL,
	emvtag_9f5b varchar(100) NULL,
	emvtag_71 varchar(100) NULL,
	emvtag_72 varchar(100) NULL,
	emvtag_9f09 varchar(100) NULL,
	emvtag_9f35 varchar(100) NULL,
	emvtag_9f41 varchar(100) NULL,
	emvtag_9f21 varchar(100) NULL,
	de039 varchar(200) NULL,
	pds0165 varchar(30) NULL,
	already_settle_flag varchar(2) NULL
);


-- cs_rupay_ogtemp definition

-- Drop table

-- DROP TABLE cs_rupay_ogtemp;

CREATE TABLE cs_rupay_ogtemp (
	batch_number varchar(10) NULL,
	bin_msg_type varchar(20) NULL,
	checker_date_time timestamp NULL,
	checker_flag varchar(10) NULL,
	checker_id varchar(100) NULL,
	cpd timestamp NULL,
	de002 varchar(64) NULL,
	de003 varchar(6) NULL,
	de004 varchar(12) NULL,
	de004_fp numeric(12) NULL,
	de005 varchar(12) NULL,
	de005_fp numeric(12) NULL,
	de006 numeric(12) NULL,
	de009 varchar(8) NULL,
	de010 numeric(8) NULL,
	de012 varchar(12) NULL,
	de022 varchar(999) NULL,
	de024 varchar(5) NULL,
	de025 numeric(4) NULL,
	de026 numeric(4) NULL,
	de031 varchar(23) NULL,
	de032 varchar(11) NULL,
	de037 varchar(12) NULL,
	de038 varchar(6) NULL,
	de040 varchar(3) NULL,
	de041 varchar(16) NULL,
	de041_fp varchar(8) NULL,
	de042 varchar(19) NULL,
	de042_fp varchar(19) NULL,
	de043_merch_addr varchar(40) NULL,
	de043_merch_addr_fp varchar(40) NULL,
	de043_merch_city varchar(13) NULL,
	de043_merch_city_fp varchar(13) NULL,
	de043_merch_country varchar(10) NULL,
	de043_merch_country_fp varchar(2) NULL,
	de043_merch_name varchar(23) NULL,
	de043_merch_name_fp varchar(23) NULL,
	de043_merch_state varchar(3) NULL,
	de043_merch_state_fp varchar(2) NULL,
	de043_merch_zipcode varchar(9) NULL,
	de043_merch_zipcode_fp varchar(9) NULL,
	de049 numeric(3) NULL,
	de049_fp varchar(3) NULL,
	de050 numeric(3) NULL,
	de050_fp numeric(3) NULL,
	de051 numeric(3) NULL,
	de054 numeric(12) NULL,
	de055 varchar(500) NULL,
	de071 varchar(8) NULL,
	de072 varchar(100) NULL,
	de093 varchar(11) NULL,
	de094 varchar(11) NULL,
	de095 varchar(14) NULL,
	de125 varchar(256) NULL,
	exception_date timestamp NULL,
	file_name varchar(100) NULL,
	id varchar(20) NULL,
	ide001 varchar(10) NULL,
	ide002 varchar(11) NULL,
	ide003 varchar(21) NULL,
	ide004 varchar(6) NULL,
	ide005 varchar(5) NULL,
	ide006 varchar(15) NULL,
	ide007 numeric(3) NULL,
	ide008 varchar(2) NULL,
	ide009 varchar(2) NULL,
	ide010 varchar(1) NULL,
	ide011 numeric(30) NULL,
	lofo_indicator varchar(20) NULL,
	match_id varchar(10) NULL,
	mti varchar(4) NULL,
	og_file_name varchar(100) NULL,
	og_gen varchar(100) NULL,
	parsed_date timestamp NULL,
	pds0005_2 varchar(1) NULL,
	pds0005_rej_rsncode_hdr numeric(4) NULL,
	pds0005_rej_rsncode_txn numeric(4) NULL,
	pds0122 varchar(1) NULL,
	pds0137 numeric(15) NULL,
	pds0146_curr_code_1 numeric(3) NULL,
	pds0146_curr_code_2 numeric(3) NULL,
	pds0146_curr_code_3 numeric(3) NULL,
	pds0146_curr_code_4 numeric(3) NULL,
	pds0146_curr_code_5 numeric(3) NULL,
	pds0146_drcr_1 varchar(1) NULL,
	pds0146_drcr_2 varchar(1) NULL,
	pds0146_drcr_3 varchar(1) NULL,
	pds0146_drcr_4 varchar(1) NULL,
	pds0146_drcr_5 varchar(1) NULL,
	pds0146_fee_amt_1 numeric(10) NULL,
	pds0146_fee_amt_2 numeric(10) NULL,
	pds0146_fee_amt_3 numeric(10) NULL,
	pds0146_fee_amt_4 numeric(10) NULL,
	pds0146_fee_amt_5 numeric(10) NULL,
	pds0146_fee_type_1 varchar(20) NULL,
	pds0146_fee_type_2 varchar(20) NULL,
	pds0146_fee_type_3 varchar(20) NULL,
	pds0146_fee_type_4 varchar(20) NULL,
	pds0146_fee_type_5 varchar(20) NULL,
	pds0146_intchg_cat numeric(4) NULL,
	pds0146_intchg_cat_1 numeric(4) NULL,
	pds0146_intchg_cat_2 numeric(4) NULL,
	pds0146_intchg_cat_3 numeric(4) NULL,
	pds0146_intchg_cat_4 numeric(4) NULL,
	pds0146_intchg_cat_5 numeric(4) NULL,
	pds0159_rgcs varchar(20) NULL,
	pds0159_org_sett_date varchar(10) NULL,
	pds0159_sett_date varchar(6) NULL,
	pds0159_sett_date_fp timestamp NULL,
	pds0170_phoneno varchar(11) NULL,
	pds0262 varchar(1) NULL,
	pds0268 varchar(1) NULL,
	pds0301 numeric(15) NULL,
	pds0306 varchar(10) NULL,
	pds0384 varchar(42) NULL,
	pds0390 varchar(1) NULL,
	pds0508 varchar(12) NULL,
	pds0515 varchar(20) NULL,
	pds0641 varchar(5) NULL,
	pds0677 varchar(10) NULL,
	pds0736 varchar(20) NULL,
	processing_flag varchar(10) NULL,
	process_date timestamp NULL,
	process_id varchar(200) NULL,
	recon_date timestamp NULL,
	recon_flag varchar(100) NULL,
	recon_id varchar(100) NULL,
	settlement_date timestamp NULL,
	ttum_file_id varchar(100) NULL,
	ttum_file_name varchar(100) NULL,
	ttum_gen_date varchar(100) NULL,
	ttum_gen_flag varchar(100) NULL,
	txn_code varchar(20) NULL,
	txn_code_desc varchar(100) NULL,
	txn_code_id varchar(100) NULL,
	pds0206 varchar(1) NULL,
	txn_stage_ind varchar(2) NULL,
	txn_id varchar(20) NULL,
	terminal_capability_indicator varchar(1) NULL,
	merch_invoice_num varchar(20) NULL,
	auth_actual_amount varchar(20) NULL,
	ecs_indicator varchar(20) NULL,
	motoint_reason varchar(20) NULL,
	switch_id varchar(20) NULL,
	exception_flag varchar(20) NULL,
	curr_exp varchar(20) NULL,
	exception_desc varchar(4000) NULL,
	txn_type varchar(50) NULL,
	gateway_type varchar(50) NULL,
	tech_type varchar(50) NULL,
	fetched_for_og varchar(31) NULL,
	trace_id varchar(15) NULL,
	txn_cat varchar(10) NULL,
	surcharge_amt varchar(20) NULL,
	tip_amt varchar(20) NULL,
	srv_sur_amt varchar(20) NULL,
	tran_identifier varchar(15) NULL,
	pos_data_code varchar(12) NULL,
	og_send_flag varchar(20) NULL,
	host_settle_flag varchar(20) NULL,
	host_settle_date varchar(20) NULL,
	rep_flag varchar(1) NULL,
	rep_fullind varchar(1) NULL,
	rep_adj_amt numeric NULL,
	rep_process_id varchar(200) NULL,
	cs_host_recon_flag varchar(2) NULL,
	cs_host_recon_date timestamp NULL,
	cs_host_recon_diff numeric NULL,
	cs_host_mcc varchar(4) NULL,
	cs_host_recon_rrn varchar(50) NULL,
	rfu_1 varchar(200) NULL,
	rfu_2 timestamp NULL,
	rfu_3 varchar(200) NULL,
	rfu_4 varchar(200) NULL,
	rfu_5 varchar(200) NULL,
	rfu_6 varchar(200) NULL,
	rfu_7 varchar(200) NULL,
	rfu_8 varchar(200) NULL,
	rfu_9 varchar(200) NULL,
	rfu_10 varchar(200) NULL,
	manual_settle_flag varchar(10) NULL DEFAULT 'N'::character varying,
	manual_settle_date timestamp NULL,
	de018 numeric(4) NULL,
	emvtag_9f02 varchar(100) NULL,
	emvtag_9f26 varchar(100) NULL,
	emvtag_82 varchar(100) NULL,
	emvtag_9f36 varchar(100) NULL,
	emvtag_9f27 varchar(100) NULL,
	emvtag_9f10 varchar(100) NULL,
	emvtag_9f33 varchar(100) NULL,
	emvtag_9f1a varchar(100) NULL,
	emvtag_95 varchar(100) NULL,
	emvtag_5f2a varchar(100) NULL,
	emvtag_9c varchar(100) NULL,
	emvtag_9f37 varchar(100) NULL,
	emvtag_9a varchar(100) NULL,
	bin numeric(6) NULL,
	institution_id varchar(6) NULL,
	program_id varchar(6) NULL,
	txn_unique_id varchar(50) NULL,
	de061 varchar(41) NULL,
	addn_tran_data varchar(16) NULL,
	reprocess_flag varchar(100) NULL,
	reprocess_date timestamp NULL,
	reprocess_user_id varchar(100) NULL,
	org_rep_file varchar(100) NULL,
	emvtag_9f03 varchar(100) NULL,
	emvtag_9f06 varchar(100) NULL,
	emvtag_5a varchar(100) NULL,
	emvtag_5f34 varchar(100) NULL,
	emvtag_9f07 varchar(100) NULL,
	emvtag_9f34 varchar(100) NULL,
	emvtag_84 varchar(100) NULL,
	emvtag_9f1e varchar(100) NULL,
	emvtag_91 varchar(100) NULL,
	emvtag_9f5b varchar(100) NULL,
	emvtag_71 varchar(100) NULL,
	emvtag_72 varchar(100) NULL,
	emvtag_9f09 varchar(100) NULL,
	emvtag_9f35 varchar(100) NULL,
	emvtag_9f41 varchar(100) NULL,
	emvtag_9f21 varchar(100) NULL,
	de039 varchar(200) NULL,
	pds0165 varchar(30) NULL,
	already_settle_flag varchar(2) NULL
);


-- cs_rupay_pid definition

-- Drop table

-- DROP TABLE cs_rupay_pid;

CREATE TABLE cs_rupay_pid (
	scheme_code varchar(3) NULL,
	pid varchar(15) NULL,
	process_id varchar(25) NULL,
	file_name varchar(50) NULL,
	entry_date varchar(15) NULL
);


-- currency_code definition

-- Drop table

-- DROP TABLE currency_code;

CREATE TABLE currency_code (
	id numeric(20) NOT NULL,
	country varchar(50) NULL,
	capital varchar(50) NULL,
	currency_name varchar(200) NULL,
	currency_code varchar(20) NULL,
	CONSTRAINT currency_code_pk PRIMARY KEY (id)
);


-- cust_attempt_details definition

-- Drop table

-- DROP TABLE cust_attempt_details;

CREATE TABLE cust_attempt_details (
	cust_seq_id varchar(20) NOT NULL,
	reset_flag varchar(1) NULL,
	reset_date timestamp NULL,
	num_reset_attempt numeric NULL,
	forget_flag varchar(1) NULL,
	forget_date timestamp NULL,
	num_forget_attempt numeric NULL,
	entry_date timestamp NULL,
	num_wrong_num_attempt numeric NULL,
	wrong_num_flag varchar(1) NULL,
	wrong_num_date timestamp NULL,
	num_otp_attempt numeric NULL,
	otp_flag varchar(1) NULL,
	otp_date timestamp NULL,
	otp_link_flag varchar(5) NULL
);


-- customer_user_master definition

-- Drop table

-- DROP TABLE customer_user_master;

CREATE TABLE customer_user_master (
	id numeric NOT NULL,
	"password" varchar(64) NULL,
	first_name varchar(20) NULL,
	middle_name varchar(20) NULL,
	last_name varchar(20) NULL,
	email_id varchar(255) NULL,
	status varchar(1) NULL DEFAULT 'N'::character varying,
	address1 varchar(150) NULL,
	address2 varchar(150) NULL,
	phone_number varchar(15) NULL,
	mobile_number varchar(15) NULL,
	user_group_id numeric NOT NULL,
	role_id numeric NOT NULL,
	institution_id numeric NULL,
	issuer_id numeric NULL,
	zone_id numeric NULL,
	branch_id numeric NULL,
	status_change_by varchar(20) NULL,
	account_lock varchar(1) NULL DEFAULT 'N'::character varying,
	lock_date timestamp NULL,
	lock_counter numeric NULL,
	status_change_date timestamp NULL,
	unlock_by varchar(20) NULL,
	unlock_date timestamp NULL,
	is_first_login varchar(1) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	approved_status varchar(20) NULL,
	approved_description varchar(255) NULL,
	approved_status_change_by varchar(20) NULL,
	approved_status_change_date timestamp NULL,
	old_password varchar(255) NULL,
	login_time timestamp NULL,
	no_of_entries numeric(19) NULL,
	user_name_prefix varchar(255) NULL,
	created_by_name varchar(30) NULL,
	approved_by_name varchar(30) NULL,
	is_admin varchar(10) NULL,
	captcha varchar(20) NULL,
	customer_type varchar(5) NULL,
	previous_login_time timestamp NULL,
	user_name varchar(255) NULL,
	cust_seq_id varchar(20) NULL,
	parent_user_id numeric NULL,
	user_id varchar(1000) NULL
);


-- declined_txn_authorization definition

-- Drop table

-- DROP TABLE declined_txn_authorization;

CREATE TABLE declined_txn_authorization (
	id numeric(19) NOT NULL,
	arn varchar(255) NULL,
	branch_id varchar(255) NULL,
	card_enc varchar(255) NULL,
	card_token varchar(255) NULL,
	channel_id varchar(255) NULL,
	channel_type varchar(255) NULL,
	date_time timestamp NULL,
	dr_cr_flag varchar(255) NULL,
	error_msg varchar(255) NULL,
	last_settle_date timestamp NULL,
	msg_type varchar(255) NULL,
	response_code varchar(255) NULL,
	bal_update_settl_flag varchar(255) NULL,
	bal_update_settl_date varchar(255) NULL,
	rsu_3 varchar(255) NULL,
	rsu_4 varchar(255) NULL,
	rsu_5 varchar(255) NULL,
	settlement_flag varchar(255) NULL,
	source_req_id varchar(255) NULL,
	topup_pay_mode varchar(255) NULL,
	topup_txn_refno varchar(255) NULL,
	txn_amount numeric(19, 3) NULL,
	mid varchar(20) NULL,
	acc_flag varchar(1) NULL,
	arn_reference varchar(16) NULL,
	balance_update_date timestamp NULL,
	balance_update_flag varchar(1) NULL,
	bal_update_flag_ruk varchar(3) NULL,
	bal_update_date_ruk timestamp NULL,
	narration varchar(255) NULL,
	txn_type varchar(10) NULL,
	pg_mid varchar(50) NULL,
	pg_mname varchar(200) NULL,
	mcc varchar(50) NULL,
	txn_id varchar(50) NULL,
	service_name varchar(50) NULL,
	ref_txn_id varchar(50) NULL
);


-- digital_balance_transfer definition

-- Drop table

-- DROP TABLE digital_balance_transfer;

CREATE TABLE digital_balance_transfer (
	id numeric NULL,
	date_time timestamp NULL,
	card_ref_number varchar(20) NULL,
	hash_card_number varchar(65) NULL,
	account_number varchar(30) NULL,
	amount varchar(10) NULL,
	drcr varchar(2) NULL,
	txn_type varchar(10) NULL,
	description varchar(1000) NULL
);


-- digital_txn_authorization definition

-- Drop table

-- DROP TABLE digital_txn_authorization;

CREATE TABLE digital_txn_authorization (
	id numeric(19) NOT NULL,
	arn varchar(255) NULL,
	branch_id varchar(255) NULL,
	card_enc varchar(255) NULL,
	card_token varchar(255) NULL,
	channel_id varchar(255) NULL,
	channel_type varchar(255) NULL,
	date_time timestamp NULL,
	dr_cr_flag varchar(255) NULL,
	error_msg varchar(255) NULL,
	last_settle_date timestamp NULL,
	msg_type varchar(255) NULL,
	response_code varchar(255) NULL,
	bal_update_settl_flag varchar(255) NULL,
	bal_update_settl_date varchar(255) NULL,
	rsu_3 varchar(255) NULL,
	rsu_4 varchar(255) NULL,
	rsu_5 varchar(255) NULL,
	settlement_flag varchar(255) NULL,
	source_req_id varchar(255) NULL,
	topup_pay_mode varchar(255) NULL,
	topup_txn_refno varchar(255) NULL,
	txn_amount numeric(19, 3) NULL,
	mid varchar(20) NULL,
	acc_flag varchar(1) NULL,
	arn_reference varchar(16) NULL,
	balance_update_date timestamp NULL,
	balance_update_flag varchar(1) NULL DEFAULT 'N'::character varying,
	bal_update_flag_ruk varchar(3) NULL DEFAULT 'N'::character varying,
	bal_update_date_ruk timestamp NULL,
	narration varchar(255) NULL,
	txn_type varchar(10) NULL,
	pg_mid varchar(50) NULL,
	pg_mname varchar(200) NULL,
	mcc varchar(50) NULL,
	txn_id varchar(20) NULL,
	ref_tid varchar(20) NULL,
	total_bal numeric NULL DEFAULT 0,
	host_bal numeric NULL DEFAULT 0,
	shadow_bal numeric NULL DEFAULT 0,
	rsu_1 varchar(255) NULL,
	rsu_2 varchar(255) NULL,
	current_balance numeric NULL DEFAULT 0,
	previous_balance numeric NULL DEFAULT 0,
	hold_balance numeric NULL DEFAULT 0,
	available_balance numeric NULL DEFAULT 0,
	settle_flag varchar(1) NULL,
	settle_date timestamp(0) NULL,
	prepaid_account_number varchar(23) NULL,
	utility_reversal_flag varchar(1) NULL,
	file_name varchar(200) NULL,
	batch_no varchar(500) NULL,
	remarks varchar(500) NULL,
	wallet_id numeric NOT NULL DEFAULT 0,
	is_send varchar(2) NULL DEFAULT 'N'::character varying,
	CONSTRAINT sys_c0079754 PRIMARY KEY (id)
);
CREATE INDEX indx_digital_txn_hash ON digital_txn_authorization USING btree (card_enc);
CREATE INDEX indx_digital_txn_txn_type ON digital_txn_authorization USING btree (txn_type);


-- digital_txn_authorization_queue definition

-- Drop table

-- DROP TABLE digital_txn_authorization_queue;

CREATE TABLE digital_txn_authorization_queue (
	id numeric(19) NULL,
	arn varchar(255) NULL,
	branch_id varchar(255) NULL,
	card_enc varchar(255) NULL,
	card_token varchar(255) NULL,
	channel_id varchar(255) NULL,
	channel_type varchar(255) NULL,
	date_time timestamp NULL,
	dr_cr_flag varchar(255) NULL,
	error_msg varchar(255) NULL,
	last_settle_date timestamp NULL,
	msg_type varchar(255) NULL,
	response_code varchar(255) NULL,
	bal_update_settl_flag varchar(255) NULL,
	bal_update_settl_date varchar(255) NULL,
	rsu_3 varchar(255) NULL,
	rsu_4 varchar(255) NULL,
	rsu_5 varchar(255) NULL,
	settlement_flag varchar(255) NULL,
	source_req_id varchar(255) NULL,
	topup_pay_mode varchar(255) NULL,
	topup_txn_refno varchar(255) NULL,
	txn_amount numeric(19, 3) NULL,
	mid varchar(20) NULL,
	acc_flag varchar(1) NULL,
	arn_reference varchar(16) NULL,
	balance_update_date timestamp NULL,
	balance_update_flag varchar(1) NULL,
	bal_update_flag_ruk varchar(3) NULL,
	bal_update_date_ruk timestamp NULL,
	narration varchar(255) NULL,
	txn_type varchar(10) NULL,
	pg_mid varchar(50) NULL,
	pg_mname varchar(200) NULL,
	mcc varchar(50) NULL,
	txn_id varchar(20) NULL,
	ref_tid varchar(20) NULL,
	total_bal numeric NULL,
	host_bal numeric NULL,
	shadow_bal numeric NULL,
	rsu_1 varchar(255) NULL,
	rsu_2 varchar(255) NULL,
	current_balance numeric NULL,
	previous_balance numeric NULL,
	hold_balance numeric NULL,
	available_balance numeric NULL,
	settle_flag varchar(1) NULL,
	settle_date timestamp(0) NULL,
	prepaid_account_number varchar(23) NULL,
	utility_reversal_flag varchar(1) NULL,
	file_name varchar(200) NULL,
	batch_no varchar(500) NULL,
	remarks varchar(500) NULL,
	wallet_id numeric NULL,
	is_send varchar(2) NULL,
	release_flag varchar(2) NULL DEFAULT 'N'::character varying,
	release_date timestamp NULL
);
CREATE INDEX indx_digi_release_flag ON digital_txn_authorization_queue USING btree (release_flag);


-- encryption_key_configuration definition

-- Drop table

-- DROP TABLE encryption_key_configuration;

CREATE TABLE encryption_key_configuration (
	id numeric(19) NOT NULL,
	issuer_id numeric NULL,
	channel_id varchar(50) NULL,
	encryption_key varchar(100) NULL,
	created_by varchar(20) NULL,
	created_date timestamp NULL,
	modified_by varchar(20) NULL,
	modified_date timestamp NULL,
	status varchar(2) NULL,
	json_enc_client_public_key varchar(3000) NULL,
	json_enc_client_private_key varchar(2000) NULL,
	json_enc_server_public_key varchar(3210) NULL,
	json_enc_server_private_key varchar(3210) NULL,
	payload_enc_password varchar(20) NULL,
	cardtoken_enc_password varchar(20) NULL,
	password_enc varchar(20) NULL,
	payload_enc_crmnextsalt varchar(20) NULL,
	cardtoken_enc_crmnextsalt varchar(20) NULL,
	password_enc_crmnextsalt varchar(20) NULL,
	key_flag varchar(20) NULL
);


-- exception_details definition

-- Drop table

-- DROP TABLE exception_details;

CREATE TABLE exception_details (
	id varchar(20) NOT NULL,
	action_name varchar(120) NULL,
	sub_action_name varchar(120) NULL,
	exception_message sys."clob" NULL,
	exception_date varchar(20) NULL,
	created_by varchar(20) NULL
);


-- first_topup_log definition

-- Drop table

-- DROP TABLE first_topup_log;

CREATE TABLE first_topup_log (
	id numeric NOT NULL,
	ref_id varchar(100) NULL,
	card_no varchar(100) NULL,
	"source" varchar(50) NULL,
	status varchar(100) NULL,
	date_time timestamp NULL
);


-- group_alert definition

-- Drop table

-- DROP TABLE group_alert;

CREATE TABLE group_alert (
	group_id varchar(20) NULL,
	group_name varchar(30) NULL,
	action_id varchar(30) NULL,
	action_name varchar(30) NULL,
	mail_to sys."clob" NULL,
	mail_cc sys."clob" NULL,
	mobile_number sys."clob" NULL,
	mail_bcc sys."clob" NULL,
	issuer_id numeric NULL
);


-- harmonization_exception_rpt definition

-- Drop table

-- DROP TABLE harmonization_exception_rpt;

CREATE TABLE harmonization_exception_rpt (
	f002 varchar(100) NULL,
	f004 varchar(12) NULL,
	f012 varchar(8) NULL,
	f013 varchar(6) NULL,
	f037 varchar(16) NULL,
	f038 varchar(8) NULL,
	f039 varchar(3) NULL,
	f041 varchar(16) NULL,
	f042 varchar(15) NULL,
	f043 varchar(40) NULL,
	f049 varchar(4) NULL,
	drcr varchar(8) NULL,
	txn_type varchar(8) NULL,
	trml_date timestamp NULL,
	txn_auth_date timestamp NULL,
	num_of_days numeric NULL,
	status varchar(50) NULL,
	replacement_flag varchar(2) NULL,
	cr_adj varchar(1) NULL,
	dr_adj varchar(1) NULL,
	presentment_flag varchar(1) NULL,
	sys_txn_date timestamp NULL,
	reason_code varchar(5) NULL,
	settle_flag varchar(2) NULL,
	settle_date timestamp NULL,
	cs_id varchar(20) NULL,
	cs_process_id varchar(50) NULL,
	f011 varchar(11) NULL
);


-- institution definition

-- Drop table

-- DROP TABLE institution;

CREATE TABLE institution (
	id numeric NOT NULL,
	institution_name varchar(20) NOT NULL,
	address1 varchar(50) NULL,
	address2 varchar(50) NULL,
	contact_person varchar(20) NULL,
	phone_number varchar(11) NULL,
	mobile_number varchar(10) NULL,
	email_id varchar(255) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	mo_seq_no numeric NULL,
	cust_unique_id varchar(100) NULL,
	rbi_max_limit numeric NULL,
	crn_prefix varchar(3) NULL,
	crn_prefix_gift varchar(3) NULL,
	crn_prefix_multi_wallet varchar(3) NULL,
	tax_type varchar(50) NULL,
	tax_name varchar(50) NULL,
	tax_mode varchar(2) NULL,
	tax_value numeric NULL,
	tenant_id varchar(50) NULL,
	load_to_load_interval numeric NULL,
	load_to_spend_interval numeric NULL,
	min_purchase_gift numeric NULL,
	min_purchase_nongift numeric NULL,
	is_tax_applicable varchar(1) NULL DEFAULT 'N'::character varying,
	CONSTRAINT cons_inst_pk PRIMARY KEY (id)
);


-- instrument_master definition

-- Drop table

-- DROP TABLE instrument_master;

CREATE TABLE instrument_master (
	instrument_id numeric NOT NULL,
	instrument_name varchar(20) NULL,
	instrument_prefix varchar(20) NULL,
	instrument_desc varchar(100) NULL,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	CONSTRAINT instrumenet_master_pk PRIMARY KEY (instrument_id)
);


-- inventory_manager definition

-- Drop table

-- DROP TABLE inventory_manager;

CREATE TABLE inventory_manager (
	id numeric NOT NULL,
	card_type varchar(200) NULL,
	quantity numeric NULL,
	status varchar(20) NULL,
	submit_date timestamp NULL,
	description varchar(500) NULL,
	remarks varchar(500) NULL,
	branch_id numeric NULL,
	issuer_id numeric NULL,
	mo_id varchar(50) NULL,
	outlet_id varchar(50) NULL,
	created_by numeric NULL,
	created_date timestamp NULL,
	updated_by numeric NULL,
	updated_date timestamp NULL,
	instatnt_issuance varchar(20) NULL,
	product_id numeric NULL,
	is_personalization varchar(20) NULL,
	ho_batch_no varchar(20) NULL,
	mo_batch_no varchar(20) NULL,
	co_batch_no varchar(20) NULL,
	CONSTRAINT sys_c0079738 PRIMARY KEY (id)
);


-- key_details definition

-- Drop table

-- DROP TABLE key_details;

CREATE TABLE key_details (
	key_index numeric NULL,
	key_value varchar(64) NULL
);


-- kyc_details definition

-- Drop table

-- DROP TABLE kyc_details;

CREATE TABLE kyc_details (
	id numeric NULL,
	kyc varchar(20) NULL,
	issuer_id numeric NULL
);


-- mail_config_detail definition

-- Drop table

-- DROP TABLE mail_config_detail;

CREATE TABLE mail_config_detail (
	id varchar(20) NULL,
	mail_from varchar(50) NULL,
	user_name varchar(50) NULL,
	"password" varchar(20) NULL,
	host varchar(100) NOT NULL,
	port varchar(20) NULL,
	connection_type varchar(20) NULL,
	institution_id numeric NULL,
	app_id varchar(20) NULL,
	sub_app_id varchar(20) NULL,
	alert_from varchar(20) NULL,
	self_id varchar(20) NULL,
	alert varchar(20) NULL,
	dlrreq varchar(20) NULL,
	content_type varchar(20) NULL,
	dcode varchar(10) NULL,
	pwd varchar(20) NULL,
	c_type varchar(10) NULL,
	msg_type varchar(50) NULL,
	priority varchar(10) NULL,
	sender varchar(50) NULL,
	config_id varchar(20) NULL
);


-- mail_config_detail_cust definition

-- Drop table

-- DROP TABLE mail_config_detail_cust;

CREATE TABLE mail_config_detail_cust (
	id varchar(20) NULL,
	mail_from varchar(50) NULL,
	user_name varchar(50) NULL,
	"password" varchar(20) NULL,
	host varchar(100) NOT NULL,
	port varchar(20) NULL,
	connection_type varchar(20) NULL,
	institution_id numeric NULL,
	app_id varchar(20) NULL,
	sub_app_id varchar(20) NULL,
	alert_from varchar(20) NULL,
	self_id varchar(20) NULL,
	alert varchar(20) NULL,
	dlrreq varchar(20) NULL,
	content_type varchar(20) NULL,
	dcode varchar(10) NULL,
	pwd varchar(20) NULL,
	c_type varchar(10) NULL,
	msg_type varchar(50) NULL,
	priority varchar(10) NULL,
	sender varchar(50) NULL,
	config_id numeric(4) NULL
);


-- mcc_group_mapping_template definition

-- Drop table

-- DROP TABLE mcc_group_mapping_template;

CREATE TABLE mcc_group_mapping_template (
	mcc_grp_id int4 NOT NULL,
	mcc_code varchar(20) NOT NULL,
	is_surcharge varchar(2) NULL,
	surcharge_type varchar(20) NULL,
	surcharge_value varchar(8) NULL
);


-- mcc_groups definition

-- Drop table

-- DROP TABLE mcc_groups;

CREATE TABLE mcc_groups (
	mcc_grp_id int4 NOT NULL,
	mcc_grp_name varchar(100) NULL,
	restrict_type numeric NULL,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	product_id numeric NULL,
	user_flag varchar(10) NULL,
	CONSTRAINT mcc_groups_pk PRIMARY KEY (mcc_grp_id)
);


-- mcc_groups_template definition

-- Drop table

-- DROP TABLE mcc_groups_template;

CREATE TABLE mcc_groups_template (
	mcc_grp_id int4 NOT NULL,
	mcc_grp_name varchar(100) NULL,
	restrict_type int4 NULL,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	CONSTRAINT mcc_grp_template_pk PRIMARY KEY (mcc_grp_id)
);


-- mcc_master definition

-- Drop table

-- DROP TABLE mcc_master;

CREATE TABLE mcc_master (
	mcc_code varchar(20) NOT NULL,
	mcc_name varchar(150) NULL,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	is_surcharge varchar(2) NULL DEFAULT 'N'::character varying,
	surcharge_type varchar(20) NULL,
	surcharge_value varchar(8) NULL,
	CONSTRAINT mcc_master_pk PRIMARY KEY (mcc_code)
);


-- mkchr_balance_profile definition

-- Drop table

-- DROP TABLE mkchr_balance_profile;

CREATE TABLE mkchr_balance_profile (
	id numeric NULL,
	"name" varchar(50) NULL,
	balance_profile_desc varchar(255) NULL,
	offline_bal_active varchar(20) NULL,
	offline_update_on_host_active varchar(20) NULL,
	auto_top_up_mechanism varchar(20) NULL,
	auto_top_up_value numeric NULL,
	minimum_threshhold numeric NULL,
	maximum_offline_limit numeric NULL,
	applicable_balances varchar(200) NULL,
	product_id numeric NULL,
	created_date timestamp(6) NULL,
	created_by numeric NULL,
	updated_date timestamp(6) NULL,
	updated_by numeric NULL,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	remarks varchar(500) NULL,
	offline_statement_flag varchar(2) NULL
);


-- mkchr_mcc_groups definition

-- Drop table

-- DROP TABLE mkchr_mcc_groups;

CREATE TABLE mkchr_mcc_groups (
	mcc_grp_id int4 NOT NULL,
	mcc_grp_name varchar(50) NULL,
	restrict_type numeric NULL,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	remarks varchar(500) NULL,
	product_id numeric NULL,
	CONSTRAINT mkchr_mcc_groups_pk PRIMARY KEY (mcc_grp_id)
);


-- mkchr_topup_profile definition

-- Drop table

-- DROP TABLE mkchr_topup_profile;

CREATE TABLE mkchr_topup_profile (
	id varchar(20) NOT NULL,
	profile_name varchar(50) NULL,
	topup_profile_desc varchar(255) NULL,
	load_topup varchar(30) NULL,
	multiplier varchar(1) NULL,
	multiplier_value numeric(5) NULL,
	product_id numeric NULL,
	created_by numeric NULL DEFAULT 0,
	created_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	remarks varchar(500) NULL,
	CONSTRAINT cons_topup_mkr_pk PRIMARY KEY (id)
);


-- mkchr_txn_profile definition

-- Drop table

-- DROP TABLE mkchr_txn_profile;

CREATE TABLE mkchr_txn_profile (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	txn_profile_desc varchar(255) NULL,
	sub_txn_type varchar(7) NOT NULL,
	is_enable varchar(1) NULL DEFAULT 'N'::character varying,
	load_type varchar(30) NULL,
	product_id numeric NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	remarks varchar(500) NULL,
	CONSTRAINT prd_txn_mkchr_pkey PRIMARY KEY (id),
	CONSTRAINT uk_subtype_product_mkr UNIQUE (sub_txn_type, product_id)
);


-- mkchr_wallet_master definition

-- Drop table

-- DROP TABLE mkchr_wallet_master;

CREATE TABLE mkchr_wallet_master (
	wallet_id int4 NOT NULL,
	wallet_name varchar(50) NOT NULL,
	mcc_grp_id int4 NOT NULL,
	issuer_id numeric NULL,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	wallet_type_identifier varchar(20) NULL,
	key_identifier varchar(20) NULL,
	is_transit_enable varchar(10) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	is_general_wallet varchar(2) NULL,
	is_wallet_block_allowed varchar(2) NULL DEFAULT 'N'::character varying,
	is_wallet_limit_applicable_for_atm_withdrawal varchar(10) NULL,
	CONSTRAINT mkchr_wallet_master_pk PRIMARY KEY (wallet_id)
);


-- mo_dispatch_file_log definition

-- Drop table

-- DROP TABLE mo_dispatch_file_log;

CREATE TABLE mo_dispatch_file_log (
	id numeric NULL,
	file_name varchar(50) NULL,
	total_record numeric NULL,
	success_count numeric NULL,
	rejected_count numeric NULL,
	file_created_by varchar(20) NULL,
	file_created_date timestamp NULL,
	file_processed_by varchar(20) NULL,
	file_processed_date timestamp NULL,
	status varchar(20) NULL,
	issuer_id numeric NULL
);


-- mo_payment_details definition

-- Drop table

-- DROP TABLE mo_payment_details;

CREATE TABLE mo_payment_details (
	card_number varchar(60) NULL,
	txn_amount numeric NULL,
	arn_reference varchar(20) NULL,
	topup_txn_refno varchar(255) NULL,
	source_req_id varchar(255) NULL,
	status varchar NULL,
	txn_created_date timestamp NULL,
	txn_processed_date timestamp NULL,
	chan_txn_ref_no varchar NULL,
	usr_txn_ref_no varchar NULL,
	account_id_type varchar(50) NULL
);


-- mo_replenishment_details definition

-- Drop table

-- DROP TABLE mo_replenishment_details;

CREATE TABLE mo_replenishment_details (
	id numeric NULL,
	batch_no varchar(100) NULL,
	txn_id varchar(50) NULL,
	txn_amount numeric NULL,
	txn_date varchar(20) NULL
);


-- old_to_new_card_migration definition

-- Drop table

-- DROP TABLE old_to_new_card_migration;

CREATE TABLE old_to_new_card_migration (
	old_card_number varchar(30) NULL,
	card_ref_number varchar(20) NULL,
	balance numeric(19, 2) NULL,
	created_by numeric NULL,
	created_date timestamp NULL,
	updated_by numeric NULL,
	updated_date timestamp NULL,
	CONSTRAINT old_card_number_unique UNIQUE (old_card_number)
);


-- outgoing_request_interface definition

-- Drop table

-- DROP TABLE outgoing_request_interface;

CREATE TABLE outgoing_request_interface (
	service_name varchar(200) NULL,
	channel_id varchar(200) NULL,
	target_application_id varchar(200) NULL,
	request_date_time varchar(200) NULL,
	org_id varchar(200) NULL,
	service_request_id varchar(200) NULL,
	branch_id varchar(200) NULL,
	card_token varchar(200) NULL,
	request_body sys."clob" NULL,
	date_time timestamp NULL,
	payment_txn_ref_code varchar(200) NULL,
	txn_id varchar(16) NULL
);


-- outgoing_response_interface definition

-- Drop table

-- DROP TABLE outgoing_response_interface;

CREATE TABLE outgoing_response_interface (
	service_name varchar(200) NULL,
	channel_id varchar(200) NULL,
	target_application_id varchar(200) NULL,
	org_id varchar(200) NULL,
	service_request_id varchar(20) NULL,
	response_body sys."clob" NULL,
	response_code varchar(5) NULL,
	error_message varchar(1000) NULL,
	date_time timestamp NULL
);


-- outlet_card_transfer_history definition

-- Drop table

-- DROP TABLE outlet_card_transfer_history;

CREATE TABLE outlet_card_transfer_history (
	id numeric NULL,
	card_ref_no varchar(200) NULL,
	outlet_id varchar(100) NULL,
	old_outlet_batch_id varchar(100) NULL,
	old_outlet_acknowledge_date timestamp NULL,
	old_outlet_acknowledge_by varchar(20) NULL,
	old_oulet_id varchar(100) NULL,
	new_outlet_batch_id varchar(100) NULL,
	new_outlet_id varchar(100) NULL,
	transfer_by_mo varchar(20) NULL,
	created_date timestamp NULL
);


-- outlet_limit_txn_details definition

-- Drop table

-- DROP TABLE outlet_limit_txn_details;

CREATE TABLE outlet_limit_txn_details (
	id numeric NULL,
	txn_id numeric NULL,
	"account" varchar(50) NULL,
	drcr varchar(2) NULL,
	amount numeric NULL,
	replenished_limit numeric NULL,
	old_limit numeric NULL,
	old_running_limit numeric NULL,
	description varchar(200) NULL,
	txn_date timestamp NULL
);


-- page_master definition

-- Drop table

-- DROP TABLE page_master;

CREATE TABLE page_master (
	id numeric NOT NULL,
	page_name varchar(100) NOT NULL,
	page_link varchar(255) NULL,
	user_group_id numeric NOT NULL,
	parent_page_id numeric NULL,
	grand_parent_page_id numeric NULL,
	display_order numeric NULL,
	created_date timestamp(6) NULL,
	updated_date timestamp(6) NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	issuer_id numeric NULL,
	outlet varchar(20) NULL,
	customer varchar(20) NULL,
	status varchar(1) NULL,
	CONSTRAINT pk_page PRIMARY KEY (id)
);


-- page_master_siram definition

-- Drop table

-- DROP TABLE page_master_siram;

CREATE TABLE page_master_siram (
	id numeric NULL,
	page_name varchar(100) NULL,
	page_link varchar(255) NULL,
	user_group_id numeric NULL,
	parent_page_id numeric NULL,
	grand_parent_page_id numeric NULL,
	display_order numeric NULL,
	created_date timestamp(6) NULL,
	updated_date timestamp(6) NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	issuer_id numeric NULL,
	outlet varchar(20) NULL,
	customer varchar(20) NULL,
	status varchar(1) NULL
);


-- password_history definition

-- Drop table

-- DROP TABLE password_history;

CREATE TABLE password_history (
	user_id numeric NULL,
	login_date timestamp NULL,
	new_password varchar(100) NULL,
	old_password varchar(100) NULL,
	entry_date timestamp NULL,
	id numeric NOT NULL,
	CONSTRAINT password_history_pk PRIMARY KEY (id)
);


-- password_policy definition

-- Drop table

-- DROP TABLE password_policy;

CREATE TABLE password_policy (
	issuer_id varchar(20) NULL,
	pwd_min_length numeric NULL,
	pwd_max_length numeric NULL,
	login_duration numeric NULL,
	pwd_expiry_days numeric NULL,
	pwd_attemp_count numeric NULL,
	pwd_regexp varchar(100) NULL,
	pwd_regxp_msg varchar(150) NULL,
	created_by numeric NULL,
	created_date timestamp NULL,
	remarks varchar(20) NULL,
	updated_date timestamp NULL,
	updated_by numeric NULL,
	id numeric NOT NULL,
	prev_passwords numeric NULL,
	institution_id numeric NULL,
	CONSTRAINT password_policy_pk PRIMARY KEY (id)
);


-- pcs_fee_waiver_group_config definition

-- Drop table

-- DROP TABLE pcs_fee_waiver_group_config;

CREATE TABLE pcs_fee_waiver_group_config (
	group_id varchar(10) NOT NULL,
	group_name varchar(20) NULL,
	inserted_by varchar(20) NULL,
	inserted_date timestamp NULL,
	status varchar(1) NULL,
	CONSTRAINT cons_group_id PRIMARY KEY (group_id)
);


-- pcs_report_config definition

-- Drop table

-- DROP TABLE pcs_report_config;

CREATE TABLE pcs_report_config (
	id numeric NULL,
	report_name varchar(70) NULL,
	report_category varchar(100) NULL
);


-- prd_balance_template definition

-- Drop table

-- DROP TABLE prd_balance_template;

CREATE TABLE prd_balance_template (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	balance_profile_desc varchar(30) NULL,
	offline_bal_active varchar(20) NULL,
	offline_update_on_host_active varchar(20) NULL,
	auto_top_up_mechanism varchar(20) NULL,
	auto_top_up_value numeric NULL,
	minimum_threshhold numeric NULL,
	maximum_offline_limit numeric NULL,
	applicable_balances varchar(200) NULL,
	created_date timestamp(6) NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp(6) NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	offline_statement_flag varchar(2) NULL,
	CONSTRAINT cons_balance_template_id_pk PRIMARY KEY (id)
);


-- prd_card_activation_master definition

-- Drop table

-- DROP TABLE prd_card_activation_master;

CREATE TABLE prd_card_activation_master (
	id numeric NOT NULL,
	activation_type varchar(30) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	CONSTRAINT prd_card_activation_master_pkey PRIMARY KEY (id)
);


-- prd_card_image_master definition

-- Drop table

-- DROP TABLE prd_card_image_master;

CREATE TABLE prd_card_image_master (
	image_code serial4 NOT NULL,
	image_name varchar(100) NULL,
	front_side_image bytea NULL,
	back_side_image bytea NULL,
	created_by numeric NULL,
	created_date timestamp NULL,
	created_by_name varchar(150) NULL,
	font_color varchar(20) NULL,
	CONSTRAINT cons_unique_image_name UNIQUE (image_name),
	CONSTRAINT prd_card_image_master_pkey PRIMARY KEY (image_code)
);


-- prd_card_type_master definition

-- Drop table

-- DROP TABLE prd_card_type_master;

CREATE TABLE prd_card_type_master (
	id numeric NOT NULL,
	card_type_name varchar(30) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	CONSTRAINT prd_card_type_master_pkey PRIMARY KEY (id)
);


-- prd_config_card_balances_type definition

-- Drop table

-- DROP TABLE prd_config_card_balances_type;

CREATE TABLE prd_config_card_balances_type (
	id numeric NULL,
	balances_type_name varchar(200) NULL
);


-- prd_customer_template definition

-- Drop table

-- DROP TABLE prd_customer_template;

CREATE TABLE prd_customer_template (
	id numeric NOT NULL,
	"name" varchar(30) NULL,
	customer_type varchar(25) NULL,
	major_or_minor varchar(5) NULL,
	vip_category varchar(10) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT pk_prd_customer_template_id PRIMARY KEY (id)
);


-- prd_embossing_mode_master definition

-- Drop table

-- DROP TABLE prd_embossing_mode_master;

CREATE TABLE prd_embossing_mode_master (
	id numeric NOT NULL,
	embossing_mode_type varchar(30) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	CONSTRAINT prd_embossing_mode_master_pkey PRIMARY KEY (id)
);


-- prd_fee_profile_extension definition

-- Drop table

-- DROP TABLE prd_fee_profile_extension;

CREATE TABLE prd_fee_profile_extension (
	fee_id numeric NOT NULL,
	fee_desc varchar(100) NULL,
	txn_type varchar(30) NULL,
	payment_mode varchar(30) NULL,
	fee_type varchar(30) NULL,
	amount varchar(30) NULL,
	txn_usage_type varchar(30) NULL,
	response_code varchar(5) NULL,
	entry_mode varchar(5) NULL,
	CONSTRAINT prd_fee_profile_extension_pkey PRIMARY KEY (fee_id)
);


-- prd_instrument_profile_mapping definition

-- Drop table

-- DROP TABLE prd_instrument_profile_mapping;

CREATE TABLE prd_instrument_profile_mapping (
	id numeric NULL,
	instrumet_id numeric NULL,
	instrumet_profile_id varchar(20) NULL,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL
);


-- prd_interface_master definition

-- Drop table

-- DROP TABLE prd_interface_master;

CREATE TABLE prd_interface_master (
	id numeric NOT NULL,
	interface_name varchar(30) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	CONSTRAINT prd_interface_master_pkey PRIMARY KEY (id)
);


-- prd_merchant_profile definition

-- Drop table

-- DROP TABLE prd_merchant_profile;

CREATE TABLE prd_merchant_profile (
	id numeric NOT NULL,
	mrchnt_profile_id varchar(20) NULL,
	mrchnt_profile_name varchar(50) NULL,
	mrchnt_profile_desc varchar(255) NULL,
	amt_single numeric NULL,
	amt_daily numeric NULL,
	count_daily numeric NULL,
	amt_monthly numeric NULL,
	count_monthly numeric NULL,
	amt_annual numeric NULL,
	count_annual numeric NULL,
	amt_lifetime numeric NULL,
	count_lifetime numeric NULL,
	product_id numeric NULL,
	issuer_id numeric NULL,
	created_date timestamp(6) NULL,
	updated_date timestamp(6) NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	soft_delete varchar(20) NULL,
	instrument_id numeric NULL DEFAULT 0,
	merchant_name varchar(50) NULL,
	instrument_profile_id numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT pk_prd_merchant_profile_id PRIMARY KEY (id)
);


-- prd_network_bin_type_master definition

-- Drop table

-- DROP TABLE prd_network_bin_type_master;

CREATE TABLE prd_network_bin_type_master (
	id numeric NOT NULL,
	network_type varchar(50) NULL,
	bin_type varchar(100) NULL,
	CONSTRAINT prd_network_bin_type_master_pkey PRIMARY KEY (id)
);


-- prd_network_scheme_master definition

-- Drop table

-- DROP TABLE prd_network_scheme_master;

CREATE TABLE prd_network_scheme_master (
	id numeric NOT NULL,
	network_scheme_name varchar(30) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	CONSTRAINT prd_network_scheme_master_pkey PRIMARY KEY (id)
);


-- prd_outlet_threshold_limit definition

-- Drop table

-- DROP TABLE prd_outlet_threshold_limit;

CREATE TABLE prd_outlet_threshold_limit (
	id numeric NOT NULL,
	outlet_id varchar(30) NULL,
	issuer_id numeric NULL,
	product_id numeric NULL,
	threshold_type varchar(30) NULL,
	threshold_value numeric NULL,
	threshold_range_type varchar(3) NULL,
	created_date timestamp NULL,
	created_by numeric NULL,
	updated_date timestamp NULL,
	updated_by numeric NULL,
	CONSTRAINT sys_c00147534 PRIMARY KEY (id)
);


-- prd_pin_generation_master definition

-- Drop table

-- DROP TABLE prd_pin_generation_master;

CREATE TABLE prd_pin_generation_master (
	id numeric NOT NULL,
	pin_gen_type varchar(30) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	CONSTRAINT prd_pin_generation_master_pkey PRIMARY KEY (id)
);


-- prd_sub_bin definition

-- Drop table

-- DROP TABLE prd_sub_bin;

CREATE TABLE prd_sub_bin (
	bin varchar(8) NOT NULL,
	sub_bin varchar(4) NOT NULL,
	is_range_end varchar(1) NULL,
	created_by numeric NULL DEFAULT 0,
	created_date timestamp NULL,
	created_by_name varchar(30) NULL,
	product_id numeric NULL,
	CONSTRAINT cons_pk_bin_sub_bin PRIMARY KEY (bin, sub_bin)
);


-- prd_threshold_limit definition

-- Drop table

-- DROP TABLE prd_threshold_limit;

CREATE TABLE prd_threshold_limit (
	id numeric NOT NULL,
	issuer_id numeric NULL,
	product_id numeric NULL,
	threshold_type varchar(30) NULL,
	user_type varchar(10) NULL,
	threshold_value numeric NULL,
	threshold_range_type varchar(3) NULL,
	instrument_id numeric NULL,
	created_date timestamp NULL,
	created_by numeric NULL,
	updated_date timestamp NULL,
	updated_by numeric NULL,
	CONSTRAINT sys_c00147536 PRIMARY KEY (id)
);


-- prd_topup_template definition

-- Drop table

-- DROP TABLE prd_topup_template;

CREATE TABLE prd_topup_template (
	id varchar(20) NOT NULL,
	profile_name varchar(50) NULL,
	topup_profile_desc varchar(255) NULL,
	load_topup varchar(30) NULL,
	multiplier varchar(1) NULL,
	multiplier_value numeric(5) NULL,
	created_by numeric NULL DEFAULT 0,
	created_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT prd_topup_template_pk PRIMARY KEY (id)
);


-- prd_txn_master definition

-- Drop table

-- DROP TABLE prd_txn_master;

CREATE TABLE prd_txn_master (
	id numeric NULL,
	txn_name varchar(100) NULL,
	txn_description varchar(255) NULL,
	drcr varchar(1) NULL,
	txn_type varchar(5) NOT NULL,
	created_by numeric NULL,
	created_date timestamp NULL,
	updated_by numeric NULL,
	updated_date timestamp NULL,
	CONSTRAINT prd_txn_master_id_key UNIQUE (id),
	CONSTRAINT prd_txn_master_pkey PRIMARY KEY (txn_type)
);


-- prd_txn_template definition

-- Drop table

-- DROP TABLE prd_txn_template;

CREATE TABLE prd_txn_template (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	txn_profile_desc varchar(255) NULL,
	sub_txn_type varchar(10) NOT NULL,
	is_enable varchar(1) NULL DEFAULT 'N'::character varying,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT prd_txn_template_id_key UNIQUE (id)
);


-- prd_usage_template definition

-- Drop table

-- DROP TABLE prd_usage_template;

CREATE TABLE prd_usage_template (
	id numeric NOT NULL,
	"name" varchar(30) NULL,
	usage_profile_desc varchar(30) NULL,
	network varchar(25) NULL,
	region varchar(25) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT pk_prd_usage_template_id PRIMARY KEY (id)
);


-- prd_vendor_master definition

-- Drop table

-- DROP TABLE prd_vendor_master;

CREATE TABLE prd_vendor_master (
	vendor_id numeric NOT NULL,
	vendor_name varchar(100) NULL,
	network_scheme varchar(100) NULL,
	embossa_format_identifier varchar(150) NULL,
	address_line1 varchar(50) NULL,
	address_line2 varchar(50) NULL,
	contact_person varchar(100) NULL,
	phone_number varchar(11) NULL,
	mobile_number varchar(10) NULL,
	email_id varchar(255) NULL,
	created_date timestamp(6) NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp(6) NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(100) NULL,
	updated_by_name varchar(100) NULL,
	ip_address varchar(20) NULL,
	port varchar(10) NULL,
	user_name varchar(100) NULL,
	"password" varchar(100) NULL,
	"path" varchar(500) NULL,
	CONSTRAINT cons_unique_composite UNIQUE (vendor_name, network_scheme),
	CONSTRAINT cons_vendor_id_pk PRIMARY KEY (vendor_id)
);


-- processlog definition

-- Drop table

-- DROP TABLE processlog;

CREATE TABLE processlog (
	process_id varchar(100) NULL,
	object_name varchar(50) NULL,
	object_type varchar(50) NULL,
	"comments" sys."clob" NULL,
	entry_date timestamp NULL
);
CREATE INDEX indx_log_date ON processlog USING btree (trunc(entry_date));


-- promotional_alert_engine definition

-- Drop table

-- DROP TABLE promotional_alert_engine;

CREATE TABLE promotional_alert_engine (
	action_id varchar(20) NULL,
	action_name varchar(50) NULL,
	alert_type varchar(30) NULL,
	send_flag varchar(1) NULL,
	msg_send_time varchar(20) NULL,
	msg_send_day varchar(10) NULL,
	customer_fetch_query varchar(4000) NULL,
	issuer_id numeric NULL,
	product_id numeric NULL,
	institution_id numeric NOT NULL,
	place_holder varchar(100) NULL
);


-- rejected_mo_dispatch_details definition

-- Drop table

-- DROP TABLE rejected_mo_dispatch_details;

CREATE TABLE rejected_mo_dispatch_details (
	id numeric NULL,
	mo_id varchar(15) NULL,
	start_range varchar(20) NULL,
	end_range varchar(20) NULL,
	issuer_id numeric NULL,
	file_uploaded_on timestamp NULL,
	file_uploaded_by numeric NULL,
	reason varchar(1000) NULL,
	batch_id varchar(200) NULL,
	awb_number varchar(50) NULL,
	dispatch_date varchar(25) NULL
);


-- "role" definition

-- Drop table

-- DROP TABLE "role";

CREATE TABLE "role" (
	id numeric NOT NULL,
	role_name varchar(50) NOT NULL,
	user_group_id numeric NOT NULL,
	issuer_id numeric NOT NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	created_by_name varchar(30) NULL,
	outlet varchar(20) NULL,
	customer varchar(20) NULL,
	role_flag varchar(5) NULL,
	institution_id numeric NULL DEFAULT 0,
	partner_id numeric NULL DEFAULT 0,
	updated_by_name varchar(100) NULL,
	CONSTRAINT pk_roles PRIMARY KEY (id)
);


-- role_report_link definition

-- Drop table

-- DROP TABLE role_report_link;

CREATE TABLE role_report_link (
	role_id numeric NULL,
	report_id numeric NULL,
	query sys."clob" NULL,
	institution_flag varchar(1) NULL,
	institution_query varchar(4000) NULL,
	issuer_flag varchar(1) NULL,
	issuer_query varchar(4000) NULL,
	zone_flag varchar(1) NULL,
	zone_query varchar(4000) NULL,
	product_flag varchar(1) NULL,
	product_query varchar(4000) NULL,
	branch_flag varchar(1) NULL,
	branch_query varchar(4000) NULL,
	is_issuer varchar(1) NULL,
	is_acquirer varchar(1) NULL,
	from_date varchar(1) NULL,
	to_date varchar(1) NULL,
	is_monthyear varchar(1) NULL,
	is_year varchar(1) NULL,
	csv_download_flag varchar(1) NULL,
	download varchar(1) NULL,
	"enable" varchar(1) NULL,
	mid_flag varchar(1) NULL,
	pid_flag varchar(1) NULL,
	order_by varchar(1000) NULL,
	pid_query varchar(1000) NULL,
	mid_query varchar(1000) NULL,
	card_flag varchar(1) NULL,
	query1 sys."clob" NULL,
	query2 sys."clob" NULL,
	group_by varchar(1000) NULL,
	channel_flag varchar(1) NULL,
	channel_query varchar(4000) NULL,
	sheet1_name varchar(50) NULL,
	sheet2_name varchar(50) NULL,
	"delimiter" varchar(1) NULL,
	header_flag varchar(1) NULL,
	txn_header_flag varchar(1) NULL,
	partner_flag varchar(2) NULL DEFAULT 'N'::character varying,
	partner_query varchar(500) NULL,
	issuer_type_flag varchar(2) NULL DEFAULT 'N'::character varying,
	issuer_type_query varchar(1000) NULL,
	object_type varchar(1) NULL,
	object_call varchar(100) NULL
);


-- role_report_link_10_may definition

-- Drop table

-- DROP TABLE role_report_link_10_may;

CREATE TABLE role_report_link_10_may (
	role_id numeric NULL,
	report_id numeric NULL,
	query sys."clob" NULL,
	institution_flag varchar(1) NULL,
	institution_query varchar(4000) NULL,
	issuer_flag varchar(1) NULL,
	issuer_query varchar(4000) NULL,
	zone_flag varchar(1) NULL,
	zone_query varchar(4000) NULL,
	product_flag varchar(1) NULL,
	product_query varchar(4000) NULL,
	branch_flag varchar(1) NULL,
	branch_query varchar(4000) NULL,
	is_issuer varchar(1) NULL,
	is_acquirer varchar(1) NULL,
	from_date varchar(1) NULL,
	to_date varchar(1) NULL,
	is_monthyear varchar(1) NULL,
	is_year varchar(1) NULL,
	csv_download_flag varchar(1) NULL,
	download varchar(1) NULL,
	"enable" varchar(1) NULL,
	mid_flag varchar(1) NULL,
	pid_flag varchar(1) NULL,
	order_by varchar(1000) NULL,
	pid_query varchar(1000) NULL,
	mid_query varchar(1000) NULL,
	card_flag varchar(1) NULL,
	query1 sys."clob" NULL,
	query2 sys."clob" NULL,
	group_by varchar(1000) NULL,
	channel_flag varchar(1) NULL,
	channel_query varchar(4000) NULL,
	sheet1_name varchar(50) NULL,
	sheet2_name varchar(50) NULL,
	"delimiter" varchar(1) NULL,
	header_flag varchar(1) NULL,
	txn_header_flag varchar(1) NULL,
	partner_flag varchar(2) NULL,
	partner_query varchar(500) NULL,
	issuer_type_flag varchar(2) NULL,
	issuer_type_query varchar(1000) NULL,
	object_type varchar(1) NULL,
	object_call varchar(100) NULL
);


-- role_report_link_15_may definition

-- Drop table

-- DROP TABLE role_report_link_15_may;

CREATE TABLE role_report_link_15_may (
	role_id numeric NULL,
	report_id numeric NULL,
	query sys."clob" NULL,
	institution_flag varchar(1) NULL,
	institution_query varchar(4000) NULL,
	issuer_flag varchar(1) NULL,
	issuer_query varchar(4000) NULL,
	zone_flag varchar(1) NULL,
	zone_query varchar(4000) NULL,
	product_flag varchar(1) NULL,
	product_query varchar(4000) NULL,
	branch_flag varchar(1) NULL,
	branch_query varchar(4000) NULL,
	is_issuer varchar(1) NULL,
	is_acquirer varchar(1) NULL,
	from_date varchar(1) NULL,
	to_date varchar(1) NULL,
	is_monthyear varchar(1) NULL,
	is_year varchar(1) NULL,
	csv_download_flag varchar(1) NULL,
	download varchar(1) NULL,
	"enable" varchar(1) NULL,
	mid_flag varchar(1) NULL,
	pid_flag varchar(1) NULL,
	order_by varchar(1000) NULL,
	pid_query varchar(1000) NULL,
	mid_query varchar(1000) NULL,
	card_flag varchar(1) NULL,
	query1 sys."clob" NULL,
	query2 sys."clob" NULL,
	group_by varchar(1000) NULL,
	channel_flag varchar(1) NULL,
	channel_query varchar(4000) NULL,
	sheet1_name varchar(50) NULL,
	sheet2_name varchar(50) NULL,
	"delimiter" varchar(1) NULL,
	header_flag varchar(1) NULL,
	txn_header_flag varchar(1) NULL,
	partner_flag varchar(2) NULL,
	partner_query varchar(500) NULL,
	issuer_type_flag varchar(2) NULL,
	issuer_type_query varchar(1000) NULL,
	object_type varchar(1) NULL,
	object_call varchar(100) NULL
);


-- role_report_link_15_may_1 definition

-- Drop table

-- DROP TABLE role_report_link_15_may_1;

CREATE TABLE role_report_link_15_may_1 (
	role_id numeric NULL,
	report_id numeric NULL,
	query sys."clob" NULL,
	institution_flag varchar(1) NULL,
	institution_query varchar(4000) NULL,
	issuer_flag varchar(1) NULL,
	issuer_query varchar(4000) NULL,
	zone_flag varchar(1) NULL,
	zone_query varchar(4000) NULL,
	product_flag varchar(1) NULL,
	product_query varchar(4000) NULL,
	branch_flag varchar(1) NULL,
	branch_query varchar(4000) NULL,
	is_issuer varchar(1) NULL,
	is_acquirer varchar(1) NULL,
	from_date varchar(1) NULL,
	to_date varchar(1) NULL,
	is_monthyear varchar(1) NULL,
	is_year varchar(1) NULL,
	csv_download_flag varchar(1) NULL,
	download varchar(1) NULL,
	"enable" varchar(1) NULL,
	mid_flag varchar(1) NULL,
	pid_flag varchar(1) NULL,
	order_by varchar(1000) NULL,
	pid_query varchar(1000) NULL,
	mid_query varchar(1000) NULL,
	card_flag varchar(1) NULL,
	query1 sys."clob" NULL,
	query2 sys."clob" NULL,
	group_by varchar(1000) NULL,
	channel_flag varchar(1) NULL,
	channel_query varchar(4000) NULL,
	sheet1_name varchar(50) NULL,
	sheet2_name varchar(50) NULL,
	"delimiter" varchar(1) NULL,
	header_flag varchar(1) NULL,
	txn_header_flag varchar(1) NULL,
	partner_flag varchar(2) NULL,
	partner_query varchar(500) NULL,
	issuer_type_flag varchar(2) NULL,
	issuer_type_query varchar(1000) NULL,
	object_type varchar(1) NULL,
	object_call varchar(100) NULL
);


-- role_report_link_17_may definition

-- Drop table

-- DROP TABLE role_report_link_17_may;

CREATE TABLE role_report_link_17_may (
	role_id numeric NULL,
	report_id numeric NULL,
	query sys."clob" NULL,
	institution_flag varchar(1) NULL,
	institution_query varchar(4000) NULL,
	issuer_flag varchar(1) NULL,
	issuer_query varchar(4000) NULL,
	zone_flag varchar(1) NULL,
	zone_query varchar(4000) NULL,
	product_flag varchar(1) NULL,
	product_query varchar(4000) NULL,
	branch_flag varchar(1) NULL,
	branch_query varchar(4000) NULL,
	is_issuer varchar(1) NULL,
	is_acquirer varchar(1) NULL,
	from_date varchar(1) NULL,
	to_date varchar(1) NULL,
	is_monthyear varchar(1) NULL,
	is_year varchar(1) NULL,
	csv_download_flag varchar(1) NULL,
	download varchar(1) NULL,
	"enable" varchar(1) NULL,
	mid_flag varchar(1) NULL,
	pid_flag varchar(1) NULL,
	order_by varchar(1000) NULL,
	pid_query varchar(1000) NULL,
	mid_query varchar(1000) NULL,
	card_flag varchar(1) NULL,
	query1 sys."clob" NULL,
	query2 sys."clob" NULL,
	group_by varchar(1000) NULL,
	channel_flag varchar(1) NULL,
	channel_query varchar(4000) NULL,
	sheet1_name varchar(50) NULL,
	sheet2_name varchar(50) NULL,
	"delimiter" varchar(1) NULL,
	header_flag varchar(1) NULL,
	txn_header_flag varchar(1) NULL,
	partner_flag varchar(2) NULL,
	partner_query varchar(500) NULL,
	issuer_type_flag varchar(2) NULL,
	issuer_type_query varchar(1000) NULL,
	object_type varchar(1) NULL,
	object_call varchar(100) NULL
);


-- role_report_link_18_may definition

-- Drop table

-- DROP TABLE role_report_link_18_may;

CREATE TABLE role_report_link_18_may (
	role_id numeric NULL,
	report_id numeric NULL,
	query sys."clob" NULL,
	institution_flag varchar(1) NULL,
	institution_query varchar(4000) NULL,
	issuer_flag varchar(1) NULL,
	issuer_query varchar(4000) NULL,
	zone_flag varchar(1) NULL,
	zone_query varchar(4000) NULL,
	product_flag varchar(1) NULL,
	product_query varchar(4000) NULL,
	branch_flag varchar(1) NULL,
	branch_query varchar(4000) NULL,
	is_issuer varchar(1) NULL,
	is_acquirer varchar(1) NULL,
	from_date varchar(1) NULL,
	to_date varchar(1) NULL,
	is_monthyear varchar(1) NULL,
	is_year varchar(1) NULL,
	csv_download_flag varchar(1) NULL,
	download varchar(1) NULL,
	"enable" varchar(1) NULL,
	mid_flag varchar(1) NULL,
	pid_flag varchar(1) NULL,
	order_by varchar(1000) NULL,
	pid_query varchar(1000) NULL,
	mid_query varchar(1000) NULL,
	card_flag varchar(1) NULL,
	query1 sys."clob" NULL,
	query2 sys."clob" NULL,
	group_by varchar(1000) NULL,
	channel_flag varchar(1) NULL,
	channel_query varchar(4000) NULL,
	sheet1_name varchar(50) NULL,
	sheet2_name varchar(50) NULL,
	"delimiter" varchar(1) NULL,
	header_flag varchar(1) NULL,
	txn_header_flag varchar(1) NULL,
	partner_flag varchar(2) NULL,
	partner_query varchar(500) NULL,
	issuer_type_flag varchar(2) NULL,
	issuer_type_query varchar(1000) NULL,
	object_type varchar(1) NULL,
	object_call varchar(100) NULL
);


-- role_report_link_22_may definition

-- Drop table

-- DROP TABLE role_report_link_22_may;

CREATE TABLE role_report_link_22_may (
	role_id numeric NULL,
	report_id numeric NULL,
	query sys."clob" NULL,
	institution_flag varchar(1) NULL,
	institution_query varchar(4000) NULL,
	issuer_flag varchar(1) NULL,
	issuer_query varchar(4000) NULL,
	zone_flag varchar(1) NULL,
	zone_query varchar(4000) NULL,
	product_flag varchar(1) NULL,
	product_query varchar(4000) NULL,
	branch_flag varchar(1) NULL,
	branch_query varchar(4000) NULL,
	is_issuer varchar(1) NULL,
	is_acquirer varchar(1) NULL,
	from_date varchar(1) NULL,
	to_date varchar(1) NULL,
	is_monthyear varchar(1) NULL,
	is_year varchar(1) NULL,
	csv_download_flag varchar(1) NULL,
	download varchar(1) NULL,
	"enable" varchar(1) NULL,
	mid_flag varchar(1) NULL,
	pid_flag varchar(1) NULL,
	order_by varchar(1000) NULL,
	pid_query varchar(1000) NULL,
	mid_query varchar(1000) NULL,
	card_flag varchar(1) NULL,
	query1 sys."clob" NULL,
	query2 sys."clob" NULL,
	group_by varchar(1000) NULL,
	channel_flag varchar(1) NULL,
	channel_query varchar(4000) NULL,
	sheet1_name varchar(50) NULL,
	sheet2_name varchar(50) NULL,
	"delimiter" varchar(1) NULL,
	header_flag varchar(1) NULL,
	txn_header_flag varchar(1) NULL,
	partner_flag varchar(2) NULL,
	partner_query varchar(500) NULL,
	issuer_type_flag varchar(2) NULL,
	issuer_type_query varchar(1000) NULL,
	object_type varchar(1) NULL,
	object_call varchar(100) NULL
);


-- role_report_link__bkp1 definition

-- Drop table

-- DROP TABLE role_report_link__bkp1;

CREATE TABLE role_report_link__bkp1 (
	role_id numeric NULL,
	report_id numeric NULL,
	query sys."clob" NULL,
	institution_flag varchar(1) NULL,
	institution_query varchar(4000) NULL,
	issuer_flag varchar(1) NULL,
	issuer_query varchar(4000) NULL,
	zone_flag varchar(1) NULL,
	zone_query varchar(4000) NULL,
	product_flag varchar(1) NULL,
	product_query varchar(4000) NULL,
	branch_flag varchar(1) NULL,
	branch_query varchar(4000) NULL,
	is_issuer varchar(1) NULL,
	is_acquirer varchar(1) NULL,
	from_date varchar(1) NULL,
	to_date varchar(1) NULL,
	is_monthyear varchar(1) NULL,
	is_year varchar(1) NULL,
	csv_download_flag varchar(1) NULL,
	download varchar(1) NULL,
	"enable" varchar(1) NULL,
	mid_flag varchar(1) NULL,
	pid_flag varchar(1) NULL,
	order_by varchar(1000) NULL,
	pid_query varchar(1000) NULL,
	mid_query varchar(1000) NULL,
	card_flag varchar(1) NULL,
	query1 sys."clob" NULL,
	query2 sys."clob" NULL,
	group_by varchar(1000) NULL,
	channel_flag varchar(1) NULL,
	channel_query varchar(4000) NULL,
	sheet1_name varchar(50) NULL,
	sheet2_name varchar(50) NULL,
	"delimiter" varchar(1) NULL,
	header_flag varchar(1) NULL,
	txn_header_flag varchar(1) NULL,
	partner_flag varchar(2) NULL,
	partner_query varchar(500) NULL,
	issuer_type_flag varchar(2) NULL,
	issuer_type_query varchar(1000) NULL,
	object_type varchar(1) NULL,
	object_call varchar(100) NULL
);


-- role_report_link_bkp definition

-- Drop table

-- DROP TABLE role_report_link_bkp;

CREATE TABLE role_report_link_bkp (
	role_id numeric NULL,
	report_id numeric NULL,
	query sys."clob" NULL,
	institution_flag varchar(1) NULL,
	institution_query varchar(4000) NULL,
	issuer_flag varchar(1) NULL,
	issuer_query varchar(4000) NULL,
	zone_flag varchar(1) NULL,
	zone_query varchar(4000) NULL,
	product_flag varchar(1) NULL,
	product_query varchar(4000) NULL,
	branch_flag varchar(1) NULL,
	branch_query varchar(4000) NULL,
	is_issuer varchar(1) NULL,
	is_acquirer varchar(1) NULL,
	from_date varchar(1) NULL,
	to_date varchar(1) NULL,
	is_monthyear varchar(1) NULL,
	is_year varchar(1) NULL,
	csv_download_flag varchar(1) NULL,
	download varchar(1) NULL,
	"enable" varchar(1) NULL,
	mid_flag varchar(1) NULL,
	pid_flag varchar(1) NULL,
	order_by varchar(1000) NULL,
	pid_query varchar(1000) NULL,
	mid_query varchar(1000) NULL,
	card_flag varchar(1) NULL,
	query1 sys."clob" NULL,
	query2 sys."clob" NULL,
	group_by varchar(1000) NULL,
	channel_flag varchar(1) NULL,
	channel_query varchar(4000) NULL,
	sheet1_name varchar(50) NULL,
	sheet2_name varchar(50) NULL,
	"delimiter" varchar(1) NULL,
	header_flag varchar(1) NULL,
	txn_header_flag varchar(1) NULL,
	partner_flag varchar(2) NULL,
	partner_query varchar(500) NULL,
	issuer_type_flag varchar(2) NULL,
	issuer_type_query varchar(1000) NULL,
	object_type varchar(1) NULL,
	object_call varchar(100) NULL
);


-- sequence_master definition

-- Drop table

-- DROP TABLE sequence_master;

CREATE TABLE sequence_master (
	id numeric NULL,
	cust_seq_id numeric NULL,
	cust_ref_number numeric NULL,
	prepaid_account_number numeric NULL,
	card_ref_number varchar(20) NULL,
	"locked" varchar(3) NULL,
	bin numeric NULL,
	card_ref_prefix varchar(20) NULL,
	prefix varchar(20) NULL,
	product_id numeric NULL,
	application_ref_number numeric(22) NULL,
	customer_id numeric(22) NULL,
	customer_id_length numeric(22) NULL,
	crn_type varchar(20) NULL,
	inst_id numeric NULL
);


-- service definition

-- Drop table

-- DROP TABLE service;

CREATE TABLE service (
	service_id numeric NOT NULL,
	service_name varchar(50) NULL,
	service_provider varchar(250) NULL,
	service_user varchar(250) NULL,
	service_password varchar(250) NULL,
	created_date timestamp NULL DEFAULT sysdate,
	created_time timestamp(6) NULL,
	created_by numeric NULL,
	modified_date timestamp NULL DEFAULT sysdate,
	modified_time timestamp(6) NULL,
	modified_by numeric NULL,
	CONSTRAINT sys_c0079704 PRIMARY KEY (service_id)
);


-- session_master definition

-- Drop table

-- DROP TABLE session_master;

CREATE TABLE session_master (
	user_id varchar(50) NULL,
	outlet_id varchar(50) NULL,
	channel_id varchar(50) NULL,
	session_id varchar(100) NULL,
	portal_type varchar(50) NULL,
	session_expiry_time varchar(50) NULL,
	session_created_time timestamp NULL,
	session_validated_time timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	status varchar(20) NULL,
	session_expire_in_min numeric NULL DEFAULT 5,
	ip_address varchar(100) NULL,
	browser_name varchar(255) NULL
);


-- sftp_upload_detail definition

-- Drop table

-- DROP TABLE sftp_upload_detail;

CREATE TABLE sftp_upload_detail (
	id numeric NULL,
	role_id numeric NULL,
	report_id numeric NULL,
	inst_id numeric NULL,
	issuer_id numeric NULL,
	product_id numeric NULL,
	branch_id numeric NULL,
	user_id numeric NULL,
	process varchar(250) NULL,
	flag varchar(10) NULL,
	from_date varchar(50) NULL,
	to_date varchar(50) NULL,
	"delimiter" varchar(10) NULL,
	header_flag varchar(1) NULL,
	txn_header_flag varchar(1) NULL
);


-- smsuriparameters definition

-- Drop table

-- DROP TABLE smsuriparameters;

CREATE TABLE smsuriparameters (
	configid numeric NOT NULL,
	"key" varchar(20) NOT NULL,
	value varchar(20) NOT NULL
);


-- state_master definition

-- Drop table

-- DROP TABLE state_master;

CREATE TABLE state_master (
	id numeric(20) NOT NULL,
	"name" varchar(50) NULL,
	capital varchar(50) NULL,
	country_id numeric(20) NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	created_date timestamp(6) NULL,
	updated_date timestamp(6) NULL,
	code varchar(20) NULL
);


-- status_history definition

-- Drop table

-- DROP TABLE status_history;

CREATE TABLE status_history (
	id numeric NOT NULL,
	status varchar(50) NULL,
	reject_reason varchar(500) NULL,
	created_by varchar(50) NULL,
	created_date timestamp NULL,
	cust_seq_id varchar(50) NULL,
	application_ref_no varchar(20) NULL
);


-- temp_cust_detail definition

-- Drop table

-- DROP TABLE temp_cust_detail;

CREATE TABLE temp_cust_detail (
	salutation varchar(20) NULL,
	first_name varchar(100) NULL,
	middle_name varchar(100) NULL,
	last_name varchar(100) NULL,
	age numeric NULL,
	gender varchar(20) NULL,
	date_of_birth varchar(30) NULL,
	current_address_line1 varchar(255) NULL,
	current_address_line2 varchar(255) NULL,
	current_address_line3 varchar(255) NULL,
	current_pin_code numeric NULL,
	current_city varchar(20) NULL,
	current_state varchar(20) NULL,
	current_country varchar(20) NULL,
	permanent_address_line1 varchar(255) NULL,
	permanent_address_line2 varchar(255) NULL,
	permanent_address_line3 varchar(255) NULL,
	permanent_pin_code numeric NULL,
	permanent_city varchar(20) NULL,
	permanent_state varchar(20) NULL,
	permanent_country varchar(20) NULL,
	current_landline_number varchar(20) NULL,
	permanent_landline_number varchar(20) NULL,
	mobile_number numeric NULL,
	email_id varchar(255) NULL,
	fax_no varchar(20) NULL,
	marital_status varchar(20) NULL,
	minor_flag varchar(1) NULL,
	nre_o varchar(1) NULL,
	occupation varchar(20) NULL,
	pan_number varchar(64) NULL,
	aadhar_number varchar(64) NULL,
	passport_number varchar(64) NULL,
	company_name varchar(20) NULL,
	company_address_line1 varchar(255) NULL,
	company_address_line2 varchar(255) NULL,
	company_address_line3 varchar(255) NULL,
	company_telephone_numbe1 varchar(20) NULL,
	company_fax_number1 varchar(20) NULL,
	company_url varchar(255) NULL,
	company_city varchar(20) NULL,
	company_state varchar(20) NULL,
	company_country varchar(20) NULL,
	company_code varchar(20) NULL,
	education varchar(20) NULL,
	license_number varchar(64) NULL,
	photo_nonphoto varchar(1) NULL,
	branch_id numeric NULL,
	staf_code varchar(20) NULL,
	card_type varchar(20) NULL,
	product_id numeric NULL,
	bin numeric NULL,
	batch_no varchar(20) NULL,
	image_detail varchar(20) NULL,
	issuer_id numeric NULL,
	prepaid_account_number varchar(255) NULL,
	company_telephone_number1 numeric(19) NULL,
	cust_ref_number varchar(255) NULL,
	embossing_line2 varchar(255) NULL,
	image_details varchar(255) NULL,
	kyc_required varchar(255) NULL,
	uploaded_by numeric(19) NULL,
	uploaded_on timestamp NULL,
	id varchar(20) NULL,
	embossname varchar(100) NULL,
	active_flag varchar(50) NULL,
	checker_status varchar(20) NULL,
	checker_verified_on timestamp NULL,
	checker_verified_by numeric NULL,
	card_gen_by numeric NULL,
	card_gen_date timestamp NULL,
	cheker_description varchar(50) NULL,
	outlet_id varchar(20) NULL,
	application_ref_no varchar(20) NULL,
	photo_id varchar(50) NULL,
	pass_amount numeric NULL,
	pass_type varchar(20) NULL,
	delivery_dest varchar(2) NULL,
	old_to_newaccount_flag varchar(20) NULL,
	old_card_number varchar(20) NULL,
	n_rega_job_card varchar(64) NULL,
	voter_id varchar(64) NULL,
	dnd_flag varchar(2) NULL,
	unique_cust_ref_no varchar(20) NULL,
	product_name varchar(50) NULL,
	preloaded_amount varchar(10) NULL,
	interface_type varchar(20) NULL,
	requested_kyc_type varchar(3) NULL,
	crn_type varchar(20) NULL,
	order_type varchar(2) NULL,
	cif_id varchar(20) NULL,
	beneficiryaccountno varchar(15) NULL,
	bin_card_type varchar(40) NULL,
	CONSTRAINT cust_tem_cif_id_benefi UNIQUE (cif_id, beneficiryaccountno)
);


-- temp_cust_detail_hist definition

-- Drop table

-- DROP TABLE temp_cust_detail_hist;

CREATE TABLE temp_cust_detail_hist (
	salutation varchar(20) NULL,
	first_name varchar(100) NULL,
	middle_name varchar(100) NULL,
	last_name varchar(100) NULL,
	age numeric NULL,
	gender varchar(20) NULL,
	date_of_birth varchar(30) NULL,
	current_address_line1 varchar(255) NULL,
	current_address_line2 varchar(255) NULL,
	current_address_line3 varchar(255) NULL,
	current_pin_code numeric NULL,
	current_city varchar(20) NULL,
	current_state varchar(20) NULL,
	current_country varchar(20) NULL,
	permanent_address_line1 varchar(255) NULL,
	permanent_address_line2 varchar(255) NULL,
	permanent_address_line3 varchar(255) NULL,
	permanent_pin_code numeric NULL,
	permanent_city varchar(20) NULL,
	permanent_state varchar(20) NULL,
	permanent_country varchar(20) NULL,
	current_landline_number varchar(20) NULL,
	permanent_landline_number varchar(20) NULL,
	mobile_number numeric NULL,
	email_id varchar(255) NULL,
	fax_no varchar(20) NULL,
	marital_status varchar(20) NULL,
	minor_flag varchar(1) NULL,
	nre_o varchar(1) NULL,
	occupation varchar(20) NULL,
	pan_number varchar(64) NULL,
	aadhar_number varchar(64) NULL,
	passport_number varchar(64) NULL,
	company_name varchar(20) NULL,
	company_address_line1 varchar(255) NULL,
	company_address_line2 varchar(255) NULL,
	company_address_line3 varchar(255) NULL,
	company_telephone_numbe1 varchar(20) NULL,
	company_fax_number1 varchar(20) NULL,
	company_url varchar(255) NULL,
	company_city varchar(20) NULL,
	company_state varchar(20) NULL,
	company_country varchar(20) NULL,
	company_code varchar(20) NULL,
	education varchar(20) NULL,
	license_number varchar(64) NULL,
	photo_nonphoto varchar(1) NULL,
	branch_id numeric NULL,
	staf_code varchar(20) NULL,
	card_type varchar(20) NULL,
	product_id numeric NULL,
	bin numeric NULL,
	batch_no varchar(20) NULL,
	image_detail varchar(20) NULL,
	issuer_id numeric NULL,
	prepaid_account_number varchar(255) NULL,
	company_telephone_number1 numeric(19) NULL,
	cust_ref_number varchar(255) NULL,
	embossing_line2 varchar(255) NULL,
	image_details varchar(255) NULL,
	kyc_required varchar(255) NULL,
	uploaded_by numeric(19) NULL,
	uploaded_on timestamp NULL,
	id varchar(20) NULL,
	embossname varchar(100) NULL,
	active_flag varchar(50) NULL,
	checker_status varchar(20) NULL,
	checker_verified_on timestamp NULL,
	checker_verified_by numeric NULL,
	card_gen_by numeric NULL,
	card_gen_date timestamp NULL,
	cheker_description varchar(50) NULL,
	outlet_id varchar(20) NULL,
	application_ref_no varchar(20) NULL,
	photo_id varchar(50) NULL,
	pass_amount numeric NULL,
	pass_type varchar(20) NULL,
	delivery_dest varchar(2) NULL,
	old_to_newaccount_flag varchar(20) NULL,
	old_card_number varchar(20) NULL,
	n_rega_job_card varchar(64) NULL,
	voter_id varchar(64) NULL,
	dnd_flag varchar(2) NULL,
	unique_cust_ref_no varchar(20) NULL,
	product_name varchar(50) NULL,
	preloaded_amount numeric NULL,
	interface_type varchar(20) NULL,
	requested_kyc_type varchar(3) NULL,
	crn_type varchar(20) NULL,
	order_type varchar(2) NULL,
	cif_id varchar(20) NULL,
	beneficiryaccountno varchar(15) NULL,
	bin_card_type varchar(40) NULL
);


-- temp_mo_dispatch_details definition

-- Drop table

-- DROP TABLE temp_mo_dispatch_details;

CREATE TABLE temp_mo_dispatch_details (
	id numeric NULL,
	mo_id varchar(20) NULL,
	start_range varchar(20) NULL,
	end_range varchar(20) NULL,
	issuer_id numeric NULL,
	file_uploaded_on timestamp NULL,
	file_uploaded_by numeric NULL,
	batch_id varchar(200) NULL,
	awb_number varchar(50) NULL,
	dispatch_date varchar(25) NULL,
	process_flag varchar(1) NULL,
	file_name varchar(50) NULL,
	record_no numeric NULL,
	process_status varchar(25) NULL,
	mo_name varchar(200) NULL,
	mo_address varchar(200) NULL,
	mo_batch_id varchar(200) NULL,
	mo_batch_split_success_flag varchar(2) NULL,
	"comment" varchar(200) NULL,
	courier_vendor_name varchar(50) NULL
);


-- temporary_hostlisted_cards definition

-- Drop table

-- DROP TABLE temporary_hostlisted_cards;

CREATE TABLE temporary_hostlisted_cards (
	hash_card_number varchar(100) NULL,
	card_ref_number varchar(100) NULL,
	afcs_hash_number varchar(100) NULL,
	pin_try_count numeric NULL,
	created_date timestamp NULL,
	created_by varchar(100) NULL
);


-- transaction_balance definition

-- Drop table

-- DROP TABLE transaction_balance;

CREATE TABLE transaction_balance (
	txn_id numeric NOT NULL,
	ref_txn_id varchar(100) NULL,
	hash_card_number varchar(100) NULL,
	txn_amount numeric NULL,
	drcr varchar(50) NULL,
	host_bal numeric NULL,
	chip_bal numeric NULL,
	total_bal numeric NULL,
	sys_txn_date timestamp NULL,
	insert_date timestamp NULL,
	remarks varchar(500) NULL,
	chip_bal_9f10 numeric NULL,
	CONSTRAINT sys_c0079811 PRIMARY KEY (txn_id)
);


-- transaction_type definition

-- Drop table

-- DROP TABLE transaction_type;

CREATE TABLE transaction_type (
	id numeric NOT NULL,
	txn_type numeric(5) NULL,
	txn_name varchar(132) NULL,
	drcr varchar(10) NULL,
	txn_group varchar(100) NULL,
	is_scheme varchar(1) NULL,
	txn_mode varchar(3) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	swt_txn_type numeric NULL,
	gst_flag varchar(2) NULL,
	gst_percentage numeric NULL,
	queue_flag varchar(2) NULL,
	CONSTRAINT cons_pk_txn_type_id PRIMARY KEY (id),
	CONSTRAINT transaction_type_unq UNIQUE (txn_type)
);


-- txn_file_upload definition

-- Drop table

-- DROP TABLE txn_file_upload;

CREATE TABLE txn_file_upload (
	txn_type varchar(10) NULL,
	entry_mode varchar(15) NULL,
	txn_name varchar(100) NULL,
	drcr varchar(30) NULL,
	txn_grp varchar(10) NULL,
	is_scheme varchar(5) NULL
);


-- user_group definition

-- Drop table

-- DROP TABLE user_group;

CREATE TABLE user_group (
	id numeric NOT NULL,
	"name" varchar(25) NOT NULL,
	priority numeric NOT NULL,
	created_date timestamp(6) NULL,
	updated_date timestamp(6) NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	CONSTRAINT pk_ug PRIMARY KEY (id)
);


-- user_master_bkp definition

-- Drop table

-- DROP TABLE user_master_bkp;

CREATE TABLE user_master_bkp (
	id numeric NULL,
	user_name varchar(50) NULL,
	"password" varchar(64) NULL,
	first_name varchar(20) NULL,
	middle_name varchar(20) NULL,
	last_name varchar(20) NULL,
	email_id varchar(255) NULL,
	status varchar(1) NULL,
	address1 varchar(50) NULL,
	address2 varchar(50) NULL,
	phone_number varchar(15) NULL,
	mobile_number varchar(15) NULL,
	user_group_id numeric NULL,
	role_id numeric NULL,
	institution_id numeric NULL,
	partner_id numeric NULL,
	issuer_id numeric NULL,
	zone_id numeric NULL,
	branch_id numeric NULL,
	status_change_by varchar(20) NULL,
	account_lock varchar(1) NULL,
	lock_date timestamp NULL,
	lock_counter numeric NULL,
	status_change_date timestamp NULL,
	unlock_by varchar(20) NULL,
	unlock_date timestamp NULL,
	is_first_login varchar(1) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	approved_status varchar(20) NULL,
	approved_description varchar(255) NULL,
	approved_status_change_by varchar(20) NULL,
	approved_status_change_date timestamp NULL,
	old_password varchar(255) NULL,
	login_time timestamp NULL,
	no_of_entries numeric(19) NULL,
	user_name_prefix varchar(255) NULL,
	created_by_name varchar(30) NULL,
	approved_by_name varchar(30) NULL,
	is_admin varchar(10) NULL,
	captcha varchar(20) NULL,
	previous_login_time timestamp NULL,
	customer_type varchar(10) NULL,
	acquired_id numeric(19) NULL,
	merchant_id varchar(255) NULL,
	new_password_enc_flag varchar(1) NULL,
	customer_role_flag varchar(50) NULL,
	employee_id varchar(15) NULL
);


-- v_event_cnt definition

-- Drop table

-- DROP TABLE v_event_cnt;

CREATE TABLE v_event_cnt (
	count int8 NULL
);


-- v_mcc_cnt definition

-- Drop table

-- DROP TABLE v_mcc_cnt;

CREATE TABLE v_mcc_cnt (
	count int8 NULL
);


-- validate_topup_and_txn_log definition

-- Drop table

-- DROP TABLE validate_topup_and_txn_log;

CREATE TABLE validate_topup_and_txn_log (
	card_no varchar(100) NULL,
	txn_type numeric NULL,
	amount numeric NULL,
	"source" varchar(100) NULL,
	response_code numeric NULL,
	response_message varchar(4000) NULL,
	sys_txn_date timestamp NULL,
	wallet_id numeric NULL,
	sub_txn_type varchar(10) NULL
);


-- vat_detail definition

-- Drop table

-- DROP TABLE vat_detail;

CREATE TABLE vat_detail (
	vat_id numeric NULL,
	is_apply varchar(1) NULL,
	vat_percentage float8 NULL,
	entry_date timestamp NULL
);


-- wallet_master definition

-- Drop table

-- DROP TABLE wallet_master;

CREATE TABLE wallet_master (
	wallet_id int4 NOT NULL,
	wallet_name varchar(50) NOT NULL,
	mcc_grp_id int4 NOT NULL,
	issuer_id numeric NULL,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	wallet_type_identifier varchar(20) NULL,
	key_identifier varchar(20) NULL,
	is_transit_enable varchar(10) NULL,
	is_general_wallet varchar(2) NULL,
	is_wallet_block_allowed varchar(2) NULL DEFAULT 'N'::character varying,
	is_wallet_limit_applicable_for_atm_withdrawal varchar(10) NULL,
	CONSTRAINT wallet_master_pk PRIMARY KEY (wallet_id)
);


-- wallet_master_template definition

-- Drop table

-- DROP TABLE wallet_master_template;

CREATE TABLE wallet_master_template (
	wallet_id int4 NULL,
	wallet_name varchar(50) NULL,
	mcc_grp_id int4 NULL,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	wallet_type_identifier varchar(20) NULL,
	key_identifier varchar(20) NULL,
	is_transit_enable varchar(10) NULL,
	balance_profile_id numeric(5) NULL,
	transaction_profile_id numeric(5) NULL,
	is_general_wallet varchar(2) NULL,
	is_wallet_block_allowed varchar(2) NULL DEFAULT 'N'::character varying,
	is_wallet_limit_applicable_for_atm_withdrawal varchar(10) NULL
);


-- wallet_profile_mapping_template definition

-- Drop table

-- DROP TABLE wallet_profile_mapping_template;

CREATE TABLE wallet_profile_mapping_template (
	wallet_profile_id int4 NULL,
	wallet_id int4 NULL,
	priority_order int4 NULL
);


-- wallet_profile_template definition

-- Drop table

-- DROP TABLE wallet_profile_template;

CREATE TABLE wallet_profile_template (
	wallet_profile_id int4 NULL,
	wallet_profile_name varchar(100) NULL,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL
);


-- web_rejection_interface definition

-- Drop table

-- DROP TABLE web_rejection_interface;

CREATE TABLE web_rejection_interface (
	service_name varchar(200) NULL,
	channel_id varchar(200) NULL,
	target_application_id varchar(200) NULL,
	org_id varchar(200) NULL,
	service_request_id varchar(200) NULL,
	branch_id varchar(200) NULL,
	card_token varchar(200) NULL,
	request_body sys."clob" NULL,
	payment_txn_ref_code varchar(200) NULL,
	response_code varchar(5) NULL,
	error_message varchar(100) NULL,
	date_time timestamp NULL,
	requested_date_time varchar(200) NULL,
	txn_id varchar(20) NULL
);


-- web_request_interface definition

-- Drop table

-- DROP TABLE web_request_interface;

CREATE TABLE web_request_interface (
	service_name varchar(200) NULL,
	channel_id varchar(200) NULL,
	target_application_id varchar(200) NULL,
	request_date_time varchar(200) NULL,
	org_id varchar(200) NULL,
	service_request_id varchar(200) NULL,
	branch_id varchar(200) NULL,
	card_token varchar(200) NULL,
	request_body sys."clob" NULL,
	date_time timestamp NULL,
	payment_txn_ref_code varchar(200) NULL,
	txn_id varchar(16) NULL,
	api_end_point varchar(100) NULL
);


-- web_response_interface definition

-- Drop table

-- DROP TABLE web_response_interface;

CREATE TABLE web_response_interface (
	service_name varchar(200) NULL,
	channel_id varchar(200) NULL,
	target_application_id varchar(200) NULL,
	org_id varchar(200) NULL,
	service_request_id varchar(20) NULL,
	response_body sys."clob" NULL,
	response_code varchar(5) NULL,
	error_message varchar(1000) NULL,
	date_time timestamp NULL,
	arn varchar(25) NULL,
	request_body sys."clob" NULL,
	payment_txn_ref_code varchar(255) NULL,
	session_id varchar(255) NULL,
	txn_id varchar(20) NULL,
	is_txn_id_used varchar(1) NULL,
	ref_txn_id varchar(20) NULL,
	txn_rrn varchar(20) NULL,
	card_ref_number varchar(50) NULL,
	token_no varchar(50) NULL,
	amount varchar(50) NULL,
	CONSTRAINT web_response_interface_service_request_id_key UNIQUE (service_request_id)
);


-- "zone" definition

-- Drop table

-- DROP TABLE "zone";

CREATE TABLE "zone" (
	id numeric NOT NULL,
	"name" varchar(25) NOT NULL,
	issuer_id numeric NOT NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	address1 varchar(50) NULL,
	address2 varchar(50) NULL,
	phone_number varchar(15) NULL,
	mobile_number varchar(10) NULL,
	contact_person varchar(25) NULL,
	email_id varchar(255) NULL,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT pk_zone PRIMARY KEY (id)
);


-- branch definition

-- Drop table

-- DROP TABLE branch;

CREATE TABLE branch (
	id numeric NOT NULL,
	"name" varchar(25) NOT NULL,
	zone_id numeric NOT NULL,
	address1 varchar(50) NULL,
	address2 varchar(50) NULL,
	phone_number varchar(15) NULL,
	contact_person varchar(25) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	email_id varchar(255) NULL,
	mobile_number varchar(10) NULL,
	created_by_name varchar(30) NULL,
	branch_code varchar(20) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT pk_branch PRIMARY KEY (id),
	CONSTRAINT fk_zone_id FOREIGN KEY (zone_id) REFERENCES "zone"(id)
);


-- card_status_change definition

-- Drop table

-- DROP TABLE card_status_change;

CREATE TABLE card_status_change (
	id numeric NOT NULL,
	card_ref_number varchar(20) NULL,
	old_card_status varchar(20) NULL,
	new_card_status varchar(20) NULL,
	reason varchar(255) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	is_send varchar(10) NULL DEFAULT 'N'::character varying,
	CONSTRAINT card_status_change_pk PRIMARY KEY (id),
	CONSTRAINT const_status_change_crn FOREIGN KEY (card_ref_number) REFERENCES card_detail(card_ref_number)
);
CREATE INDEX indx_card_status_crn ON card_status_change USING btree (card_ref_number);
CREATE INDEX indx_card_status_send ON card_status_change USING btree (is_send);


-- card_type definition

-- Drop table

-- DROP TABLE card_type;

CREATE TABLE card_type (
	id numeric NOT NULL,
	"type" varchar(200) NULL,
	description varchar(200) NULL,
	branch_id numeric NULL,
	issuer_id numeric NULL,
	CONSTRAINT sys_c0079785 PRIMARY KEY (id),
	CONSTRAINT sys_c0079828 FOREIGN KEY (branch_id) REFERENCES branch(id)
);


-- cms_binwise_activation_events definition

-- Drop table

-- DROP TABLE cms_binwise_activation_events;

CREATE TABLE cms_binwise_activation_events (
	bin numeric NULL,
	event_id numeric NULL,
	created_date timestamp NULL,
	created_by varchar(200) NULL,
	remarks varchar(200) NULL,
	issuer_id numeric NULL,
	CONSTRAINT card_activation_event_fk FOREIGN KEY (event_id) REFERENCES cms_events_master(event_id)
);


-- cms_channel_service_link definition

-- Drop table

-- DROP TABLE cms_channel_service_link;

CREATE TABLE cms_channel_service_link (
	channel_id numeric NULL,
	service_id numeric NULL,
	CONSTRAINT unq_channel_service_csl UNIQUE (channel_id, service_id),
	CONSTRAINT fk_7diyutkncdtyyw280j6tu4vxb FOREIGN KEY (service_id) REFERENCES cms_web_service_master(service_id),
	CONSTRAINT fk_t9j2p28esaf58m5vyqeib0xiu FOREIGN KEY (channel_id) REFERENCES cms_channels_master(id)
);


-- cms_customer_limit definition

-- Drop table

-- DROP TABLE cms_customer_limit;

CREATE TABLE cms_customer_limit (
	id varchar(12) NOT NULL,
	card_ref_number varchar(12) NULL,
	cust_seq_id varchar(20) NULL,
	txn_enabled varchar(1) NULL DEFAULT 'N'::character varying,
	txn_mode varchar(20) NULL,
	sub_transaction_type varchar(50) NULL,
	txn_enabled_by varchar(20) NULL DEFAULT 0,
	txn_enabled_date timestamp NULL,
	limit_enabled varchar(1) NULL DEFAULT 'N'::character varying,
	limit_enabled_by varchar(20) NULL DEFAULT 0,
	limit_enabled_date timestamp NULL,
	daily_limit numeric NULL DEFAULT 0,
	monthly_limit numeric NULL DEFAULT 0,
	annual_limit numeric NULL DEFAULT 0,
	created_by numeric NULL DEFAULT 0,
	created_date timestamp NULL,
	first_enabled_date timestamp NULL,
	txn_type numeric(5) NULL,
	card_usage varchar(5) NULL,
	limit_updated_by varchar(20) NULL,
	limit_updated_date timestamp NULL,
	limit_disabled_by varchar(20) NULL,
	limit_disabled_date timestamp NULL,
	max_chip_limit numeric NULL,
	CONSTRAINT cms_customer_limit_pkey PRIMARY KEY (id),
	CONSTRAINT const_card_crn FOREIGN KEY (card_ref_number) REFERENCES card_detail(card_ref_number),
	CONSTRAINT const_cust_limit FOREIGN KEY (cust_seq_id) REFERENCES cms_cust_details(cust_seq_id)
);


-- cms_issuer_config_extention definition

-- Drop table

-- DROP TABLE cms_issuer_config_extention;

CREATE TABLE cms_issuer_config_extention (
	issuer_id numeric NOT NULL,
	city varchar(100) NULL,
	state varchar(100) NULL,
	country varchar(100) NULL,
	age_limit varchar(2) NULL,
	blacklist_url varchar(100) NULL,
	d_dup_mobile_cnt numeric NULL DEFAULT 4,
	max_otp_generation numeric NULL,
	otp_window numeric NULL,
	block_otp_window numeric NULL,
	ppims_wrapper_url varchar(50) NULL,
	emb_gpg_enc_key varchar(100) NULL,
	prim_for_benf_count numeric NULL,
	benef_for_prim_count numeric NULL,
	afcs_blacklist_service_url varchar(100) NULL,
	CONSTRAINT cms_issuer_config_ext_pk PRIMARY KEY (issuer_id),
	CONSTRAINT cons_foreign_issuer FOREIGN KEY (issuer_id) REFERENCES cms_issuer_config(issuer_id)
);


-- cms_otp_audit definition

-- Drop table

-- DROP TABLE cms_otp_audit;

CREATE TABLE cms_otp_audit (
	opt_det_id numeric NULL,
	mobile_number numeric NOT NULL,
	otp varchar(20) NOT NULL,
	status varchar(50) NULL,
	hash_card_number varchar(100) NULL,
	otp_generated_time timestamp NULL,
	otp_expiry_time timestamp NULL,
	otp_det_id numeric(19) NOT NULL,
	CONSTRAINT sys_c0079756 UNIQUE (otp),
	CONSTRAINT sys_c0079833 FOREIGN KEY (opt_det_id) REFERENCES cms_otp_details(id)
);


-- cms_wallet_channel_limit definition

-- Drop table

-- DROP TABLE cms_wallet_channel_limit;

CREATE TABLE cms_wallet_channel_limit (
	id numeric NOT NULL,
	card_ref_number varchar(12) NULL,
	cust_seq_id varchar(20) NULL,
	wallet_id numeric NOT NULL,
	txn_enabled varchar(1) NULL DEFAULT 'N'::character varying,
	txn_mode varchar(20) NULL,
	sub_transaction_type varchar(50) NULL,
	txn_enabled_by numeric NULL DEFAULT 0,
	txn_enabled_date timestamp NULL,
	limit_enabled varchar(1) NULL DEFAULT 'N'::character varying,
	limit_enabled_by varchar(20) NULL DEFAULT 0,
	limit_enabled_date timestamp NULL,
	daily_limit numeric NULL DEFAULT 0,
	monthly_limit numeric NULL DEFAULT 0,
	annual_limit numeric NULL DEFAULT 0,
	created_by numeric NULL DEFAULT 0,
	created_date timestamp NULL,
	first_enabled_date timestamp NULL,
	txn_type numeric(5) NULL,
	card_usage varchar(5) NULL,
	limit_updated_by varchar(20) NULL,
	limit_updated_date timestamp NULL,
	limit_disabled_by varchar(20) NULL,
	limit_disabled_date timestamp NULL,
	max_chip_limit numeric NULL,
	CONSTRAINT cms_wallet_channle_pkey PRIMARY KEY (id),
	CONSTRAINT cons_wallet_crn_fkey FOREIGN KEY (card_ref_number) REFERENCES card_detail(card_ref_number),
	CONSTRAINT const_wallet_cust_fkey FOREIGN KEY (cust_seq_id) REFERENCES cms_cust_details(cust_seq_id)
);
CREATE INDEX indx_wallet_cust ON cms_wallet_channel_limit USING btree (cust_seq_id);
CREATE UNIQUE INDEX indx_wallet_txn_mode ON cms_wallet_channel_limit USING btree (wallet_id, txn_mode, cust_seq_id);


-- cs_config_dr_cr_code definition

-- Drop table

-- DROP TABLE cs_config_dr_cr_code;

CREATE TABLE cs_config_dr_cr_code (
	id numeric NULL,
	dr_cr_code varchar(3) NULL,
	dr_cr_ind_id numeric NULL,
	CONSTRAINT cons_fk_indicator FOREIGN KEY (dr_cr_ind_id) REFERENCES cs_config_dr_cr_indicator(id)
);


-- cs_config_txn_scenario definition

-- Drop table

-- DROP TABLE cs_config_txn_scenario;

CREATE TABLE cs_config_txn_scenario (
	id numeric NOT NULL,
	txn_scenario_name varchar(50) NULL,
	txn_type_id numeric NOT NULL,
	txn_source_id numeric NOT NULL,
	txn_payment_mode_id numeric NOT NULL,
	status varchar(10) NULL,
	created_by varchar(10) NULL,
	created_date timestamp NULL,
	updated_by varchar(10) NULL,
	updated_date timestamp NULL,
	issuer_id numeric NULL,
	approved_by varchar(10) NULL,
	approved_date timestamp NULL,
	rejected_by varchar(10) NULL,
	rejected_date timestamp NULL,
	file_name varchar(50) NULL,
	rejected_reason varchar(50) NULL,
	CONSTRAINT cons_comp_src_mode PRIMARY KEY (txn_type_id, txn_source_id, txn_payment_mode_id, id),
	CONSTRAINT t_txn_type_source_mode_fk1 FOREIGN KEY (txn_type_id) REFERENCES cs_config_txn_type(id),
	CONSTRAINT t_txn_type_source_mode_fk2 FOREIGN KEY (txn_source_id) REFERENCES cs_config_txn_source(id),
	CONSTRAINT t_txn_type_source_mode_fk3 FOREIGN KEY (txn_payment_mode_id) REFERENCES cs_config_payment_mode(id)
);


-- institution_instrument_link definition

-- Drop table

-- DROP TABLE institution_instrument_link;

CREATE TABLE institution_instrument_link (
	id numeric NULL,
	institution_id numeric NULL,
	instrument_id numeric NULL,
	created_by numeric NULL,
	created_date timestamp(6) NULL,
	updated_by numeric NULL,
	updated_date timestamp(6) NULL,
	CONSTRAINT fk_trh610f3eqnaxtaxe7v1fntb9 FOREIGN KEY (instrument_id) REFERENCES instrument_master(instrument_id)
);


-- inventory_blank_card_manager definition

-- Drop table

-- DROP TABLE inventory_blank_card_manager;

CREATE TABLE inventory_blank_card_manager (
	id numeric NOT NULL,
	vendor_id numeric NULL,
	scheme_type varchar(20) NULL,
	image_code serial4 NOT NULL,
	no_of_cards numeric NULL,
	drcr varchar(2) NULL,
	status varchar(5) NULL,
	createdby varchar(20) NULL,
	createddate timestamp NULL,
	CONSTRAINT const_ibcm_pk PRIMARY KEY (id),
	CONSTRAINT cons_image_code_fk FOREIGN KEY (image_code) REFERENCES prd_card_image_master(image_code),
	CONSTRAINT cons_vendor_id_fk FOREIGN KEY (vendor_id) REFERENCES prd_vendor_master(vendor_id)
);


-- mcc_group_mapping definition

-- Drop table

-- DROP TABLE mcc_group_mapping;

CREATE TABLE mcc_group_mapping (
	mcc_grp_id int4 NOT NULL,
	mcc_code varchar(20) NOT NULL,
	is_surcharge varchar(2) NULL,
	surcharge_type varchar(20) NULL,
	surcharge_value varchar(8) NULL,
	CONSTRAINT mcc_group_mapping_pk PRIMARY KEY (mcc_grp_id, mcc_code),
	CONSTRAINT mcc_group_mapping_fk FOREIGN KEY (mcc_grp_id) REFERENCES mcc_groups(mcc_grp_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT mcc_group_mapping_fk2 FOREIGN KEY (mcc_code) REFERENCES mcc_master(mcc_code) ON DELETE CASCADE ON UPDATE CASCADE
);


-- mkchr_bin_profile definition

-- Drop table

-- DROP TABLE mkchr_bin_profile;

CREATE TABLE mkchr_bin_profile (
	id varchar(20) NOT NULL,
	"name" varchar(50) NULL,
	bin_profile_desc varchar(255) NULL,
	bin varchar(8) NULL,
	network_scheme varchar(20) NULL,
	is_ncmc_enabled varchar(2) NULL,
	card_type varchar(20) NULL,
	interface varchar(20) NULL,
	embossa_line_4 varchar(10) NULL,
	activation varchar(20) NULL,
	expiry_date varchar(20) NULL,
	card_load_allowed varchar(1) NULL,
	pin_generation varchar(20) NULL,
	pin_attempt_allowed varchar(10) NULL,
	embossing_mode varchar(50) NULL,
	min_balance_for_kyc numeric NULL,
	max_balance_for_kyc numeric NULL,
	dorminance_period numeric NULL,
	crn_prefix varchar(3) NULL,
	allow_negative_balance varchar(1) NULL,
	service_code varchar(3) NULL,
	currency_code varchar(3) NULL,
	region varchar(15) NULL,
	product_id numeric NULL,
	created_by numeric NULL DEFAULT 0,
	created_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	remarks varchar(500) NULL,
	image_code serial4 NOT NULL,
	card_perso_vendor_id numeric NULL,
	is_gift_card varchar(2) NULL DEFAULT 'N'::character varying,
	sub_bin_length numeric NULL,
	crn_type varchar(20) NULL,
	crn_prefix_for_classic_rupay_minor varchar(3) NULL,
	crn_prefix_for_classic_rupay_senior varchar(3) NULL,
	crn_prefix_for_platinum_rupay_normal varchar(3) NULL,
	crn_prefix_for_platnium_rupay_senior varchar(3) NULL,
	bin_type_id numeric NULL,
	CONSTRAINT cons_uk_mkchr_bin_prd_uk UNIQUE (bin, product_id),
	CONSTRAINT prd_bin_mkchr_pkey PRIMARY KEY (id),
	CONSTRAINT mkr_bin_type_id_fk FOREIGN KEY (bin_type_id) REFERENCES prd_network_bin_type_master(id),
	CONSTRAINT prd_image_code_fk FOREIGN KEY (image_code) REFERENCES prd_card_image_master(image_code),
	CONSTRAINT prd_vendor_id_fk FOREIGN KEY (card_perso_vendor_id) REFERENCES prd_vendor_master(vendor_id)
);


-- mkchr_fee_template definition

-- Drop table

-- DROP TABLE mkchr_fee_template;

CREATE TABLE mkchr_fee_template (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	fee_profile_desc varchar(255) NULL,
	fee_type varchar(100) NULL,
	fee_amount varchar(8) NULL,
	tax_inclusive varchar(255) NULL,
	txn_type numeric NULL,
	variable_fee_flag varchar(4) NULL DEFAULT 'N'::character varying,
	variable_perc numeric NULL DEFAULT 0,
	variable_min_max varchar(20) NULL DEFAULT 'MIN'::character varying,
	markup_fee_perc varchar(8) NULL DEFAULT 0,
	created_date timestamp(6) NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp(6) NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	remarks varchar(500) NULL,
	product_id numeric NULL,
	fee_app_frequency varchar(20) NULL,
	fee_txn_waiver_cnt numeric(2) NULL,
	fee_name varchar(50) NULL,
	is_fee_applicable varchar(2) NULL,
	queue_flag varchar(2) NULL,
	gst_flag varchar(2) NULL,
	gst_percentage numeric NULL,
	fees_to_be_deducted_from varchar(100) NULL,
	CONSTRAINT pk_mkchr_fee_template_id PRIMARY KEY (id),
	CONSTRAINT cons_temp_txn_type_fk FOREIGN KEY (txn_type) REFERENCES transaction_type(txn_type)
);


-- mkchr_mcc_group_mapping definition

-- Drop table

-- DROP TABLE mkchr_mcc_group_mapping;

CREATE TABLE mkchr_mcc_group_mapping (
	mcc_grp_id int4 NOT NULL,
	mcc_code varchar(20) NOT NULL,
	is_surcharge varchar(2) NULL,
	surcharge_type varchar(20) NULL,
	surcharge_value varchar(8) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	remarks varchar(500) NULL,
	CONSTRAINT mkchr_mcc_code FOREIGN KEY (mcc_code) REFERENCES mcc_master(mcc_code)
);


-- mkchr_txn_limit_profile definition

-- Drop table

-- DROP TABLE mkchr_txn_limit_profile;

CREATE TABLE mkchr_txn_limit_profile (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	txn_profile_desc varchar(255) NULL,
	txn_type numeric(5) NULL,
	kyc_type varchar(3) NULL,
	total_lifetime_amt numeric NULL,
	total_lifetime_cnt numeric NULL,
	onus_dom_single_amt numeric NULL,
	onus_dom_single_cnt numeric NULL,
	onus_dom_daily_amt varchar(20) NULL,
	onus_dom_daily_cnt numeric NULL,
	onus_dom_monthly_amt numeric NULL,
	onus_dom_monthly_cnt numeric NULL,
	onus_dom_annual_amt numeric NULL,
	onus_dom_annual_cnt numeric NULL,
	onus_dom_comm_rate numeric NULL,
	onus_dom_comm_amt numeric NULL,
	onus_dom_comm_flag varchar(15) NULL,
	offus_dom_single_amt numeric NULL,
	offus_dom_single_cnt numeric NULL,
	offus_dom_daily_amt varchar(20) NULL,
	offus_dom_daily_cnt numeric NULL,
	offus_dom_monthly_amt numeric NULL,
	offus_dom_monthly_cnt numeric NULL,
	offus_dom_annual_amt numeric NULL,
	offus_dom_annual_cnt numeric NULL,
	offus_dom_comm_rate numeric NULL,
	offus_dom_comm_amt numeric NULL,
	offus_dom_comm_flag varchar(15) NULL,
	onus_intl_single_amt numeric NULL,
	onus_intl_single_cnt numeric NULL,
	onus_intl_daily_amt varchar(20) NULL,
	onus_intl_daily_cnt numeric NULL,
	onus_intl_monthly_amt numeric NULL,
	onus_intl_monthly_cnt numeric NULL,
	onus_intl_annual_amt numeric NULL,
	onus_intl_annual_cnt numeric NULL,
	onus_intl_comm_rate numeric NULL,
	onus_intl_comm_amt numeric NULL,
	onus_intl_comm_flag varchar(15) NULL,
	offus_intl_single_amt numeric NULL,
	offus_intl_single_cnt numeric NULL,
	offus_intl_daily_amt varchar(20) NULL,
	offus_intl_daily_cnt numeric NULL,
	offus_intl_monthly_amt numeric NULL,
	offus_intl_monthly_cnt numeric NULL,
	offus_intl_annual_amt numeric NULL,
	offus_intl_annual_cnt numeric NULL,
	offus_intl_comm_rate numeric NULL,
	offus_intl_comm_amt numeric NULL,
	offus_intl_comm_flag varchar(15) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	txn_name varchar(100) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	remarks varchar(500) NULL,
	product_id numeric NULL,
	CONSTRAINT pk_mkchr_txn_limit_id PRIMARY KEY (id),
	CONSTRAINT cons_mkchr_txn_txn_type_fk FOREIGN KEY (txn_type) REFERENCES transaction_type(txn_type)
);


-- outlet_user_master definition

-- Drop table

-- DROP TABLE outlet_user_master;

CREATE TABLE outlet_user_master (
	id numeric NOT NULL,
	user_name varchar(50) NOT NULL,
	"password" varchar(64) NOT NULL,
	first_name varchar(20) NULL,
	middle_name varchar(20) NULL,
	last_name varchar(20) NULL,
	email_id varchar(255) NULL,
	status varchar(1) NULL DEFAULT 'N'::character varying,
	address1 varchar(500) NULL,
	address2 varchar(500) NULL,
	phone_number varchar(15) NULL,
	mobile_number varchar(15) NULL,
	role_id numeric NOT NULL,
	institution_id numeric NULL,
	issuer_id numeric NULL,
	zone_id numeric NULL,
	branch_id numeric NULL,
	status_change_by varchar(20) NULL,
	account_lock varchar(1) NULL DEFAULT 'N'::character varying,
	lock_date timestamp NULL,
	lock_counter numeric NULL,
	status_change_date timestamp NULL,
	unlock_by varchar(20) NULL,
	unlock_date timestamp NULL,
	is_first_login varchar(1) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	approved_status varchar(20) NULL,
	"comments" varchar(255) NULL,
	approved_status_change_by varchar(20) NULL,
	approved_status_change_date timestamp NULL,
	old_password varchar(255) NULL,
	login_time timestamp NULL,
	no_of_entries numeric(19) NULL,
	user_name_prefix varchar(255) NULL,
	created_by_name varchar(30) NULL,
	approved_by_name varchar(30) NULL,
	outlet_id varchar(20) NULL,
	captcha varchar(20) NULL,
	previous_login_time timestamp NULL,
	new_password_enc_flag varchar(1) NULL,
	employee_id varchar(15) NULL,
	is_admin varchar NULL,
	user_group_id numeric NULL,
	partner_id numeric NULL,
	CONSTRAINT outlet_user_master_pk PRIMARY KEY (id),
	CONSTRAINT fk__outlet_role_id FOREIGN KEY (role_id) REFERENCES "role"(id)
);


-- partner definition

-- Drop table

-- DROP TABLE partner;

CREATE TABLE partner (
	id numeric NOT NULL,
	partner_name varchar(20) NULL,
	inst_id numeric NOT NULL,
	address1 varchar(50) NULL,
	address2 varchar(50) NULL,
	contact_person varchar(20) NULL,
	phone_number varchar(11) NULL,
	mobile_number varchar(10) NULL,
	email_id varchar(255) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT partner_pkey PRIMARY KEY (id),
	CONSTRAINT cons_inst_part_fk FOREIGN KEY (inst_id) REFERENCES institution(id)
);


-- pcs_fee_waiver definition

-- Drop table

-- DROP TABLE pcs_fee_waiver;

CREATE TABLE pcs_fee_waiver (
	fee_id varchar(20) NOT NULL,
	txn_type varchar(10) NULL,
	fee_name varchar(250) NULL,
	fee_code varchar(20) NULL,
	frequency varchar(20) NULL,
	txn_count varchar(20) NULL,
	inserted_by varchar(20) NULL,
	inserted_date timestamp NULL,
	group_id varchar(20) NULL,
	CONSTRAINT cons_waiver_pk PRIMARY KEY (fee_id),
	CONSTRAINT cons_group_fk FOREIGN KEY (group_id) REFERENCES pcs_fee_waiver_group_config(group_id)
);


-- prd_bin_template definition

-- Drop table

-- DROP TABLE prd_bin_template;

CREATE TABLE prd_bin_template (
	id varchar(20) NOT NULL,
	"name" varchar(50) NULL,
	bin_profile_desc varchar(255) NULL,
	bin varchar(8) NULL,
	network_scheme varchar(20) NULL,
	is_ncmc_enabled varchar(2) NULL,
	card_type varchar(20) NULL,
	interface varchar(20) NULL,
	embossa_line_4 varchar(10) NULL,
	activation varchar(20) NULL,
	expiry_date varchar(20) NULL,
	card_load_allowed varchar(1) NULL,
	pin_generation varchar(20) NULL,
	pin_attempt_allowed varchar(10) NULL,
	embossing_mode varchar(50) NULL,
	min_balance_for_kyc numeric NULL,
	max_balance_for_kyc numeric NULL,
	dorminance_period numeric NULL,
	crn_prefix varchar(3) NULL,
	allow_negative_balance varchar(1) NULL,
	service_code varchar(3) NULL,
	currency_code varchar(3) NULL,
	region varchar(15) NULL,
	created_by numeric NULL DEFAULT 0,
	created_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	image_code serial4 NOT NULL,
	card_perso_vendor_id numeric NULL,
	is_gift_card varchar(2) NULL DEFAULT 'N'::character varying,
	sub_bin_length numeric NULL,
	crn_prefix_for_classic_rupay_minor varchar(3) NULL,
	crn_prefix_for_classic_rupay_senior varchar(3) NULL,
	crn_prefix_for_platinum_rupay_normal varchar(3) NULL,
	crn_prefix_for_platnium_rupay_senior varchar(3) NULL,
	bin_type_id numeric NULL,
	CONSTRAINT prd_bin_template_profile_pkey PRIMARY KEY (id),
	CONSTRAINT cons_bin_type_id_fk FOREIGN KEY (bin_type_id) REFERENCES prd_network_bin_type_master(id),
	CONSTRAINT cons_image_code_fk FOREIGN KEY (image_code) REFERENCES prd_card_image_master(image_code),
	CONSTRAINT cons_vendor_id_fk FOREIGN KEY (card_perso_vendor_id) REFERENCES prd_vendor_master(vendor_id)
);


-- prd_fee_template definition

-- Drop table

-- DROP TABLE prd_fee_template;

CREATE TABLE prd_fee_template (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	fee_profile_desc varchar(255) NULL,
	fee_type varchar(100) NULL,
	fee_amount varchar(8) NULL,
	tax_inclusive varchar(255) NULL,
	txn_type numeric NULL,
	variable_fee_flag varchar(10) NULL DEFAULT 'N'::character varying,
	variable_perc varchar(5) NULL DEFAULT 0,
	variable_min_max varchar(20) NULL DEFAULT 'MIN'::character varying,
	markup_fee_perc varchar(8) NULL DEFAULT 0,
	created_date timestamp(6) NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp(6) NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	fee_app_frequency varchar(20) NULL,
	fee_txn_waiver_cnt numeric(2) NULL,
	fee_name varchar(50) NULL,
	product_id numeric NULL,
	queue_flag varchar(2) NULL,
	gst_flag varchar(2) NULL,
	gst_percentage numeric NULL,
	CONSTRAINT pk_prd_fee_template_id PRIMARY KEY (id),
	CONSTRAINT sys_c0079712 CHECK (((variable_fee_flag)::text = ANY (ARRAY[('N'::character varying)::text, ('Y'::character varying)::text]))),
	CONSTRAINT sys_c0079723 CHECK (((variable_min_max)::text = ANY (ARRAY[('MIN'::character varying)::text, ('MAX'::character varying)::text]))),
	CONSTRAINT cons_temp_txn_type_fk FOREIGN KEY (txn_type) REFERENCES transaction_type(txn_type)
);


-- prd_txn_limit_template definition

-- Drop table

-- DROP TABLE prd_txn_limit_template;

CREATE TABLE prd_txn_limit_template (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	txn_profile_desc varchar(255) NULL,
	txn_type numeric(5) NULL,
	kyc_type varchar(3) NULL,
	total_lifetime_amt numeric NULL,
	total_lifetime_cnt numeric NULL,
	onus_dom_single_amt numeric NULL,
	onus_dom_single_cnt numeric NULL,
	onus_dom_daily_amt varchar(20) NULL,
	onus_dom_daily_cnt numeric NULL,
	onus_dom_monthly_amt numeric NULL,
	onus_dom_monthly_cnt numeric NULL,
	onus_dom_annual_amt numeric NULL,
	onus_dom_annual_cnt numeric NULL,
	onus_dom_comm_rate numeric NULL,
	onus_dom_comm_amt numeric NULL,
	onus_dom_comm_flag varchar(15) NULL,
	offus_dom_single_amt numeric NULL,
	offus_dom_single_cnt numeric NULL,
	offus_dom_daily_amt varchar(20) NULL,
	offus_dom_daily_cnt numeric NULL,
	offus_dom_monthly_amt numeric NULL,
	offus_dom_monthly_cnt numeric NULL,
	offus_dom_annual_amt numeric NULL,
	offus_dom_annual_cnt numeric NULL,
	offus_dom_comm_rate numeric NULL,
	offus_dom_comm_amt numeric NULL,
	offus_dom_comm_flag varchar(15) NULL,
	onus_intl_single_amt numeric NULL,
	onus_intl_single_cnt numeric NULL,
	onus_intl_daily_amt varchar(20) NULL,
	onus_intl_daily_cnt numeric NULL,
	onus_intl_monthly_amt numeric NULL,
	onus_intl_monthly_cnt numeric NULL,
	onus_intl_annual_amt numeric NULL,
	onus_intl_annual_cnt numeric NULL,
	onus_intl_comm_rate numeric NULL,
	onus_intl_comm_amt numeric NULL,
	onus_intl_comm_flag varchar(15) NULL,
	offus_intl_single_amt numeric NULL,
	offus_intl_single_cnt numeric NULL,
	offus_intl_daily_amt varchar(20) NULL,
	offus_intl_daily_cnt numeric NULL,
	offus_intl_monthly_amt numeric NULL,
	offus_intl_monthly_cnt numeric NULL,
	offus_intl_annual_amt numeric NULL,
	offus_intl_annual_cnt numeric NULL,
	offus_intl_comm_rate numeric NULL,
	offus_intl_comm_amt numeric NULL,
	offus_intl_comm_flag varchar(15) NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	txn_name varchar(100) NULL,
	CONSTRAINT pk_prd_txn_template_id PRIMARY KEY (id),
	CONSTRAINT cons_prd_txn_txn_type_fk FOREIGN KEY (txn_type) REFERENCES transaction_type(txn_type)
);


-- role_page_link definition

-- Drop table

-- DROP TABLE role_page_link;

CREATE TABLE role_page_link (
	role_id numeric NULL,
	page_id numeric NULL,
	CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES "role"(id)
);


-- sub_transaction_type definition

-- Drop table

-- DROP TABLE sub_transaction_type;

CREATE TABLE sub_transaction_type (
	id numeric NULL,
	txn_name varchar(100) NULL,
	txn_type numeric(5) NOT NULL,
	sub_txn_type varchar(7) NOT NULL,
	is_applicable_for_virtual varchar(1) NULL DEFAULT 'N'::character varying,
	CONSTRAINT sub_transaction_type_id_key UNIQUE (id),
	CONSTRAINT sub_transaction_type_pkey PRIMARY KEY (txn_type, sub_txn_type),
	CONSTRAINT cons_sub_txn_type_fk FOREIGN KEY (txn_type) REFERENCES transaction_type(txn_type)
);


-- user_master definition

-- Drop table

-- DROP TABLE user_master;

CREATE TABLE user_master (
	id numeric NOT NULL,
	user_name varchar(50) NOT NULL,
	"password" varchar(64) NULL,
	first_name varchar(20) NULL,
	middle_name varchar(20) NULL,
	last_name varchar(20) NULL,
	email_id varchar(255) NULL,
	status varchar(1) NULL DEFAULT 'N'::character varying,
	address1 varchar(50) NULL,
	address2 varchar(50) NULL,
	phone_number varchar(15) NULL,
	mobile_number varchar(15) NULL,
	user_group_id numeric NOT NULL,
	role_id numeric NOT NULL,
	institution_id numeric NULL,
	partner_id numeric NULL,
	issuer_id numeric NULL,
	zone_id numeric NULL,
	branch_id numeric NULL,
	status_change_by varchar(20) NULL,
	account_lock varchar(1) NULL DEFAULT 'N'::character varying,
	lock_date timestamp NULL,
	lock_counter numeric NULL,
	status_change_date timestamp NULL,
	unlock_by varchar(20) NULL,
	unlock_date timestamp NULL,
	is_first_login varchar(1) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	approved_status varchar(20) NULL,
	approved_description varchar(255) NULL,
	approved_status_change_by varchar(20) NULL,
	approved_status_change_date timestamp NULL,
	old_password varchar(255) NULL,
	login_time timestamp NULL,
	no_of_entries numeric(19) NULL,
	user_name_prefix varchar(255) NULL,
	created_by_name varchar(30) NULL,
	approved_by_name varchar(30) NULL,
	is_admin varchar(10) NULL,
	captcha varchar(20) NULL,
	previous_login_time timestamp NULL,
	customer_type varchar(10) NULL,
	acquired_id numeric(19) NULL,
	merchant_id varchar(255) NULL,
	new_password_enc_flag varchar(1) NULL,
	customer_role_flag varchar(50) NULL,
	employee_id varchar(15) NULL,
	CONSTRAINT pk_users PRIMARY KEY (id),
	CONSTRAINT fk_user_grp_id FOREIGN KEY (user_group_id) REFERENCES user_group(id),
	CONSTRAINT fk_user_role_id FOREIGN KEY (role_id) REFERENCES "role"(id)
);


-- vendor_details definition

-- Drop table

-- DROP TABLE vendor_details;

CREATE TABLE vendor_details (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	address varchar(500) NULL,
	contact_no numeric NULL,
	branch_id numeric NULL,
	issuer_id numeric NULL,
	CONSTRAINT sys_c0079679 PRIMARY KEY (id),
	CONSTRAINT sys_c0079877 FOREIGN KEY (branch_id) REFERENCES branch(id)
);


-- issuer definition

-- Drop table

-- DROP TABLE issuer;

CREATE TABLE issuer (
	id numeric NOT NULL,
	issuer_name varchar(50) NOT NULL,
	issuer_type varchar(50) NULL,
	partner_id numeric NULL,
	address1 varchar(50) NULL,
	address2 varchar(50) NULL,
	contact_person varchar(25) NULL,
	phone_number varchar(11) NULL,
	mobile_number varchar(10) NULL,
	email_id varchar(50) NULL,
	image_printing varchar(50) NULL,
	created_date timestamp(6) NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp(6) NULL,
	updated_by numeric NULL DEFAULT 0,
	inst_id numeric NULL,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	firstname varchar(50) NULL,
	middlename varchar(50) NULL,
	lastname varchar(50) NULL,
	issuershortname varchar(50) NULL,
	otptrycount numeric NULL,
	otpexpirytime numeric NULL,
	callback_base_url varchar(100) NULL,
	CONSTRAINT cons_issuer_pk PRIMARY KEY (id),
	CONSTRAINT cons_iss_part_fk FOREIGN KEY (partner_id) REFERENCES partner(id)
);


-- mkchr_cms_outlet definition

-- Drop table

-- DROP TABLE mkchr_cms_outlet;

CREATE TABLE mkchr_cms_outlet (
	outlet_id varchar(20) NOT NULL,
	"name" varchar(100) NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	phone_number varchar(100) NULL,
	mobile_number varchar(100) NULL,
	contact_person varchar(50) NULL,
	email_id varchar(1000) NULL,
	issuer_id numeric NULL,
	zone_id numeric NULL,
	address1 varchar(50) NULL,
	address2 varchar(50) NULL,
	status varchar(20) NULL,
	max_limit_for_cardrequest numeric NULL,
	parent_id varchar(15) NULL,
	id numeric(19) NULL,
	instant_card_threshold numeric(19) NULL,
	limits numeric NULL,
	running_limit numeric NULL,
	alert_threshold numeric(10) NULL DEFAULT 60,
	auto_request varchar(255) NULL DEFAULT 'Y'::character varying,
	auto_request_card_number numeric(10) NULL DEFAULT 30,
	auto_request_threshold numeric(10) NULL DEFAULT 30,
	created_by_name varchar(255) NULL,
	balance_limit numeric NULL DEFAULT 0,
	checker_status varchar(50) NULL,
	"comments" varchar(50) NULL,
	bc_commission_flag varchar(1) NULL,
	threshold_flag varchar(1) NULL DEFAULT 'Y'::character varying,
	user_flag varchar(5) NULL,
	remarks varchar(500) NULL,
	inst_id numeric NULL,
	branch numeric NULL,
	is_limit_check varchar(2) NULL,
	is_virtual_id_req varchar(2) NULL,
	account_number varchar(20) NULL,
	partner_id numeric NULL,
	business_email_id varchar(4000) NULL,
	alert_limit_perc numeric NULL,
	threshold_limit_perc numeric NULL,
	is_default varchar(2) NULL,
	checker_by numeric NULL,
	checker_by_name varchar(50) NULL,
	checker_date timestamp NULL,
	updated_by_name varchar(50) NULL,
	cust_id varchar(20) NULL,
	virtual_id varchar(50) NULL,
	annual_limit numeric NULL,
	pan_number varchar(100) NULL,
	gst_no varchar(100) NULL,
	country_id numeric NULL,
	state_id numeric NULL,
	is_financial_mo varchar(2) NULL DEFAULT 'N'::character varying,
	first_name varchar(100) NULL,
	middle_name varchar(200) NULL,
	last_name varchar(100) NULL,
	CONSTRAINT cons_mkchr_outlet_pk PRIMARY KEY (outlet_id),
	CONSTRAINT cons_branch_id_fk FOREIGN KEY (branch) REFERENCES branch(id),
	CONSTRAINT cons_inst_id_fk FOREIGN KEY (inst_id) REFERENCES institution(id),
	CONSTRAINT cons_partner_id_fk FOREIGN KEY (partner_id) REFERENCES partner(id)
);


-- mkchr_cms_product definition

-- Drop table

-- DROP TABLE mkchr_cms_product;

CREATE TABLE mkchr_cms_product (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	product_desc varchar(255) NULL,
	service_code varchar(3) NULL,
	balance_mgmt_type varchar(20) NULL,
	de_dup_parameter varchar(255) NULL,
	de_dup_check varchar(255) NULL,
	issuer_id numeric NULL,
	soft_delete varchar(20) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	created_by_name varchar(50) NULL,
	updated_by numeric NULL,
	updated_by_name varchar(50) NULL,
	currency_code varchar(20) NULL,
	product_city varchar(20) NULL,
	bin varchar(6) NULL,
	product_code varchar(2) NULL,
	mcc_restrict_grp_id int4 NULL,
	is_single_load int4 NULL DEFAULT 0,
	partner_id numeric NULL,
	inst_id numeric NULL,
	is_multi_wallet varchar(2) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	remark varchar(255) NULL,
	sub_bin int2 NULL,
	checker_by numeric NULL,
	checker_by_name varchar(50) NULL,
	checker_date timestamp NULL,
	sub_bin_flag varchar(2) NULL,
	base_product_id numeric NULL,
	display_name varchar(100) NULL,
	bank_share numeric NULL,
	paycraft_share numeric NULL,
	issuer_share numeric NULL,
	others_share numeric NULL,
	contact_center_id numeric NULL,
	CONSTRAINT mkchr_product_pk PRIMARY KEY (id),
	CONSTRAINT mkchr_inst_id_product_fk FOREIGN KEY (inst_id) REFERENCES institution(id),
	CONSTRAINT mkchr_issuer_product_fk FOREIGN KEY (issuer_id) REFERENCES issuer(id),
	CONSTRAINT mkchr_partner_product_fk FOREIGN KEY (partner_id) REFERENCES partner(id)
);


-- mkchr_wallet_profile definition

-- Drop table

-- DROP TABLE mkchr_wallet_profile;

CREATE TABLE mkchr_wallet_profile (
	wallet_profile_id int4 NOT NULL,
	wallet_profile_name varchar(100) NULL,
	product_id numeric NULL,
	instrument_id numeric NULL DEFAULT 0,
	instrument_profile_id numeric NULL DEFAULT 0,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	remarks varchar(500) NULL,
	CONSTRAINT mkchr_wallet_profile_pk PRIMARY KEY (wallet_profile_id),
	CONSTRAINT mkchr_wallet_profile_fk FOREIGN KEY (product_id) REFERENCES mkchr_cms_product(id)
);


-- mkchr_wallet_profile_mapping definition

-- Drop table

-- DROP TABLE mkchr_wallet_profile_mapping;

CREATE TABLE mkchr_wallet_profile_mapping (
	wallet_profile_id int4 NOT NULL,
	wallet_id int4 NOT NULL,
	priority_order int4 NOT NULL,
	status varchar(2) NULL,
	user_flag varchar(2) NULL,
	CONSTRAINT mkchr_wallet_profile_mapping_pk PRIMARY KEY (wallet_profile_id, wallet_id, priority_order),
	CONSTRAINT mkchr_wallet_profile_mapping_fk FOREIGN KEY (wallet_id) REFERENCES mkchr_wallet_master(wallet_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT mkchr_wallet_profile_mapping_fk2 FOREIGN KEY (wallet_profile_id) REFERENCES mkchr_wallet_profile(wallet_profile_id) ON DELETE CASCADE ON UPDATE CASCADE
);


-- cms_outlet definition

-- Drop table

-- DROP TABLE cms_outlet;

CREATE TABLE cms_outlet (
	outlet_id varchar(20) NOT NULL,
	"name" varchar(100) NULL,
	created_by numeric NULL,
	updated_by numeric NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	phone_number varchar(100) NULL,
	mobile_number varchar(100) NULL,
	contact_person varchar(50) NULL,
	email_id varchar(1000) NULL,
	issuer_id numeric NULL,
	zone_id numeric NULL,
	address1 varchar(50) NULL,
	address2 varchar(50) NULL,
	status varchar(20) NULL,
	max_limit_for_cardrequest numeric NULL,
	parent_id varchar(15) NULL,
	id numeric(19) NULL,
	instant_card_threshold numeric(19) NULL,
	limits numeric NULL,
	running_limit numeric NULL,
	alert_threshold numeric(10) NULL DEFAULT 60,
	auto_request varchar(255) NULL DEFAULT 'Y'::character varying,
	auto_request_card_number numeric(10) NULL DEFAULT 30,
	auto_request_threshold numeric(10) NULL DEFAULT 30,
	created_by_name varchar(255) NULL,
	balance_limit numeric NULL DEFAULT 0,
	checker_status varchar(50) NULL,
	"comments" varchar(50) NULL,
	bc_commission_flag varchar(1) NULL,
	threshold_flag varchar(1) NULL DEFAULT 'Y'::character varying,
	inst_id numeric NULL,
	branch numeric NULL,
	is_limit_check varchar(2) NULL,
	is_virtual_id_req varchar(2) NULL,
	account_number varchar(20) NULL,
	partner_id numeric NULL,
	business_email_id varchar(4000) NULL,
	alert_limit_perc numeric NULL,
	threshold_limit_perc numeric NULL,
	is_default varchar(2) NULL,
	updated_by_name varchar(50) NULL,
	cust_id varchar(20) NULL,
	virtual_id varchar(50) NULL,
	annual_limit numeric NULL,
	pan_number varchar(100) NULL,
	gst_no varchar(100) NULL,
	country_id numeric NULL,
	state_id numeric NULL,
	is_financial_mo varchar(2) NULL DEFAULT 'N'::character varying,
	first_name varchar(100) NULL,
	middle_name varchar(200) NULL,
	last_name varchar(100) NULL,
	CONSTRAINT cons_cms_outlet_pk PRIMARY KEY (outlet_id),
	CONSTRAINT cons_branch_id_fk FOREIGN KEY (branch) REFERENCES branch(id),
	CONSTRAINT cons_inst_id_fk FOREIGN KEY (inst_id) REFERENCES institution(id),
	CONSTRAINT cons_issur_id_fk FOREIGN KEY (issuer_id) REFERENCES issuer(id),
	CONSTRAINT cons_partner_id_fk FOREIGN KEY (partner_id) REFERENCES partner(id)
);


-- cms_product definition

-- Drop table

-- DROP TABLE cms_product;

CREATE TABLE cms_product (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	product_desc varchar(255) NULL,
	service_code varchar(3) NULL,
	balance_mgmt_type varchar(20) NULL,
	de_dup_parameter varchar(255) NULL,
	de_dup_check varchar(255) NULL,
	issuer_id numeric NULL,
	status varchar(5) NULL,
	soft_delete varchar(20) NULL,
	created_date timestamp NULL,
	updated_date timestamp NULL,
	created_by numeric NULL,
	created_by_name varchar(50) NULL,
	updated_by numeric NULL,
	updated_by_name varchar(50) NULL,
	currency_code varchar(20) NULL,
	product_city varchar(20) NULL,
	bin varchar(6) NULL,
	product_code varchar(2) NULL,
	mcc_restrict_grp_id int4 NULL,
	is_single_load int4 NULL DEFAULT 0,
	partner_id numeric NULL,
	inst_id numeric NULL,
	is_multi_wallet varchar(2) NULL,
	remark varchar(255) NULL,
	sub_bin varchar(4) NULL,
	checker_by numeric NULL,
	checker_by_name varchar(50) NULL,
	checker_date timestamp NULL,
	base_product_id numeric NULL,
	display_name varchar(100) NULL,
	bank_share numeric NULL,
	paycraft_share numeric NULL,
	issuer_share numeric NULL,
	others_share numeric NULL,
	contact_center_id numeric NULL,
	CONSTRAINT cms_product_pk PRIMARY KEY (id),
	CONSTRAINT cons_inst_id_product_fk FOREIGN KEY (inst_id) REFERENCES institution(id),
	CONSTRAINT cons_issuer_product_fk FOREIGN KEY (issuer_id) REFERENCES issuer(id),
	CONSTRAINT cons_partner_product_fk FOREIGN KEY (partner_id) REFERENCES partner(id)
);


-- mkchr_virtual_to_physical_prd definition

-- Drop table

-- DROP TABLE mkchr_virtual_to_physical_prd;

CREATE TABLE mkchr_virtual_to_physical_prd (
	id int8 NOT NULL,
	virtual_product_id int8 NULL,
	physical_product_id int8 NULL,
	status varchar(2) NOT NULL DEFAULT 'P'::character varying,
	remark varchar(255) NOT NULL,
	created_date timestamp NULL,
	created_by int8 NULL,
	updated_date timestamp NULL,
	updated_by int8 NULL,
	checker_date timestamp NULL,
	checker_by int8 NULL,
	created_by_name varchar(50) NULL,
	updated_by_name varchar(50) NULL,
	checker_by_name varchar(50) NULL,
	"version" int8 NULL,
	CONSTRAINT cons_mkchr_virtual_to_phy_id_pk PRIMARY KEY (id),
	CONSTRAINT cons_mkchr_virtual_to_phy_pro_id_uk UNIQUE (physical_product_id),
	CONSTRAINT cons_mkchr_virtual_to_phy_v_pro_uk UNIQUE (virtual_product_id),
	CONSTRAINT mkchr_vir_to_phy_checker_by_fk FOREIGN KEY (checker_by) REFERENCES user_master(id),
	CONSTRAINT mkchr_vir_to_phy_created_by_fk FOREIGN KEY (created_by) REFERENCES user_master(id),
	CONSTRAINT mkchr_vir_to_phy_pro_fk FOREIGN KEY (physical_product_id) REFERENCES cms_product(id),
	CONSTRAINT mkchr_vir_to_phy_updated_by_fk FOREIGN KEY (updated_by) REFERENCES user_master(id),
	CONSTRAINT mkchr_vir_to_phy_v_pro_fk FOREIGN KEY (virtual_product_id) REFERENCES cms_product(id)
);


-- prd_balance_profile definition

-- Drop table

-- DROP TABLE prd_balance_profile;

CREATE TABLE prd_balance_profile (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	balance_profile_desc varchar(255) NULL,
	offline_bal_active varchar(20) NULL,
	offline_update_on_host_active varchar(20) NULL,
	auto_top_up_mechanism varchar(20) NULL,
	auto_top_up_value numeric NULL,
	minimum_threshhold numeric NULL,
	maximum_offline_limit numeric NULL,
	applicable_balances varchar(200) NULL,
	product_id numeric NULL,
	created_date timestamp(6) NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp(6) NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	offline_statement_flag varchar(2) NULL,
	CONSTRAINT cons_balance_profile_id_pk PRIMARY KEY (id),
	CONSTRAINT cons_balance_profile_fk FOREIGN KEY (product_id) REFERENCES cms_product(id)
);


-- prd_bin_profile definition

-- Drop table

-- DROP TABLE prd_bin_profile;

CREATE TABLE prd_bin_profile (
	id varchar(20) NOT NULL,
	"name" varchar(50) NULL,
	bin_profile_desc varchar(255) NULL,
	bin varchar(8) NULL,
	network_scheme varchar(20) NULL,
	is_ncmc_enabled varchar(2) NULL,
	card_type varchar(20) NULL,
	interface varchar(20) NULL,
	embossa_line_4 varchar(10) NULL,
	activation varchar(20) NULL,
	expiry_date varchar(20) NULL,
	card_load_allowed varchar(1) NULL,
	pin_generation varchar(20) NULL,
	pin_attempt_allowed varchar(10) NULL,
	embossing_mode varchar(50) NULL,
	min_balance_for_kyc numeric NULL,
	max_balance_for_kyc numeric NULL,
	dorminance_period numeric NULL,
	crn_prefix varchar(3) NULL,
	allow_negative_balance varchar(1) NULL,
	service_code varchar(3) NULL,
	currency_code varchar(3) NULL,
	region varchar(15) NULL,
	product_id numeric NULL,
	created_by numeric NULL DEFAULT 0,
	created_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	image_code serial4 NOT NULL,
	card_perso_vendor_id numeric NULL,
	is_gift_card varchar(2) NULL DEFAULT 'N'::character varying,
	sub_bin_length numeric NULL,
	crn_type varchar(20) NULL,
	crn_prefix_for_classic_rupay_minor varchar(3) NULL,
	crn_prefix_for_classic_rupay_senior varchar(3) NULL,
	crn_prefix_for_platinum_rupay_normal varchar(3) NULL,
	crn_prefix_for_platnium_rupay_senior varchar(3) NULL,
	bin_type_id numeric NULL,
	CONSTRAINT cons_uk_bin_prd UNIQUE (bin, product_id),
	CONSTRAINT prd_bin_profile_pkey PRIMARY KEY (id),
	CONSTRAINT cons_bin_type_id_fk FOREIGN KEY (bin_type_id) REFERENCES prd_network_bin_type_master(id),
	CONSTRAINT cons_profbin_product_fk FOREIGN KEY (product_id) REFERENCES cms_product(id),
	CONSTRAINT prd_image_code_fk FOREIGN KEY (image_code) REFERENCES prd_card_image_master(image_code),
	CONSTRAINT prd_vendor_id_fk FOREIGN KEY (card_perso_vendor_id) REFERENCES prd_vendor_master(vendor_id)
);


-- prd_customer_profile definition

-- Drop table

-- DROP TABLE prd_customer_profile;

CREATE TABLE prd_customer_profile (
	id numeric NOT NULL,
	"name" varchar(30) NULL,
	customer_type varchar(25) NULL,
	major_or_minor varchar(5) NULL,
	vip_category varchar(10) NULL,
	product_id numeric NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT pk_prd_customer_profile_id PRIMARY KEY (id),
	CONSTRAINT cons_product_cust_profile_fk FOREIGN KEY (product_id) REFERENCES cms_product(id)
);


-- prd_fee_profile definition

-- Drop table

-- DROP TABLE prd_fee_profile;

CREATE TABLE prd_fee_profile (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	fee_profile_desc varchar(255) NULL,
	fee_type varchar(100) NULL,
	fee_amount numeric NULL,
	product_id numeric NULL,
	tax_inclusive varchar(255) NULL,
	txn_type numeric NULL,
	variable_fee_flag varchar(2) NULL DEFAULT 'N'::character varying,
	variable_perc numeric NULL DEFAULT 0,
	variable_min_max varchar(20) NULL DEFAULT 'MIN'::character varying,
	markup_fee_perc numeric NULL DEFAULT 0,
	created_date timestamp(6) NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp(6) NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	fee_app_frequency varchar(20) NULL,
	fee_txn_waiver_cnt numeric(2) NULL,
	fee_name varchar(50) NULL,
	is_fee_applicable varchar(2) NULL,
	queue_flag varchar(2) NULL,
	gst_flag varchar(2) NULL,
	gst_percentage numeric NULL,
	fees_to_be_deducted_from varchar(100) NULL,
	CONSTRAINT pk_prd_fee_profile_id PRIMARY KEY (id),
	CONSTRAINT sys_c0079712 CHECK (((variable_fee_flag)::text = ANY (ARRAY[('N'::character varying)::text, ('Y'::character varying)::text]))),
	CONSTRAINT sys_c0079723 CHECK (((variable_min_max)::text = ANY (ARRAY[('MIN'::character varying)::text, ('MAX'::character varying)::text]))),
	CONSTRAINT fk_fee_profile_product_id FOREIGN KEY (product_id) REFERENCES cms_product(id)
);


-- prd_topup_profile definition

-- Drop table

-- DROP TABLE prd_topup_profile;

CREATE TABLE prd_topup_profile (
	id varchar(20) NOT NULL,
	profile_name varchar(50) NULL,
	topup_profile_desc varchar(255) NULL,
	load_topup varchar(30) NULL,
	multiplier varchar(1) NULL,
	multiplier_value numeric(5) NULL,
	product_id numeric NULL,
	created_by numeric NULL DEFAULT 0,
	created_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT prd_topup_profile_pk PRIMARY KEY (id),
	CONSTRAINT cons_topup_profile_prd_fk FOREIGN KEY (product_id) REFERENCES cms_product(id)
);


-- prd_txn_limit_profile definition

-- Drop table

-- DROP TABLE prd_txn_limit_profile;

CREATE TABLE prd_txn_limit_profile (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	txn_profile_desc varchar(255) NULL,
	txn_type numeric(5) NOT NULL,
	kyc_type varchar(3) NOT NULL,
	total_lifetime_amt numeric NULL,
	total_lifetime_cnt numeric NULL,
	onus_dom_single_amt numeric NULL,
	onus_dom_single_cnt numeric NULL,
	onus_dom_daily_amt varchar(20) NULL,
	onus_dom_daily_cnt numeric NULL,
	onus_dom_monthly_amt numeric NULL,
	onus_dom_monthly_cnt numeric NULL,
	onus_dom_annual_amt numeric NULL,
	onus_dom_annual_cnt numeric NULL,
	onus_dom_comm_rate numeric NULL,
	onus_dom_comm_amt numeric NULL,
	onus_dom_comm_flag varchar(15) NULL,
	offus_dom_single_amt numeric NULL,
	offus_dom_single_cnt numeric NULL,
	offus_dom_daily_amt varchar(20) NULL,
	offus_dom_daily_cnt numeric NULL,
	offus_dom_monthly_amt numeric NULL,
	offus_dom_monthly_cnt numeric NULL,
	offus_dom_annual_amt numeric NULL,
	offus_dom_annual_cnt numeric NULL,
	offus_dom_comm_rate numeric NULL,
	offus_dom_comm_amt numeric NULL,
	offus_dom_comm_flag varchar(15) NULL,
	onus_intl_single_amt numeric NULL,
	onus_intl_single_cnt numeric NULL,
	onus_intl_daily_amt varchar(20) NULL,
	onus_intl_daily_cnt numeric NULL,
	onus_intl_monthly_amt numeric NULL,
	onus_intl_monthly_cnt numeric NULL,
	onus_intl_annual_amt numeric NULL,
	onus_intl_annual_cnt numeric NULL,
	onus_intl_comm_rate numeric NULL,
	onus_intl_comm_amt numeric NULL,
	onus_intl_comm_flag varchar(15) NULL,
	offus_intl_single_amt numeric NULL,
	offus_intl_single_cnt numeric NULL,
	offus_intl_daily_amt varchar(20) NULL,
	offus_intl_daily_cnt numeric NULL,
	offus_intl_monthly_amt numeric NULL,
	offus_intl_monthly_cnt numeric NULL,
	offus_intl_annual_amt numeric NULL,
	offus_intl_annual_cnt numeric NULL,
	offus_intl_comm_rate numeric NULL,
	offus_intl_comm_amt numeric NULL,
	offus_intl_comm_flag varchar(15) NULL,
	product_id numeric NOT NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	txn_name varchar(100) NULL,
	CONSTRAINT pk_prd_txn_profile_id UNIQUE (id),
	CONSTRAINT pk_prd_txn_product_id FOREIGN KEY (product_id) REFERENCES cms_product(id)
);


-- prd_txn_profile definition

-- Drop table

-- DROP TABLE prd_txn_profile;

CREATE TABLE prd_txn_profile (
	id numeric NOT NULL,
	"name" varchar(50) NULL,
	txn_profile_desc varchar(255) NULL,
	sub_txn_type varchar(7) NULL,
	is_enable varchar(1) NULL DEFAULT 'N'::character varying,
	load_type varchar(30) NULL,
	product_id numeric NOT NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT prd_txn_profile_pkey PRIMARY KEY (id),
	CONSTRAINT uk_subtype_product UNIQUE (sub_txn_type, product_id),
	CONSTRAINT cons_txn_product_fk FOREIGN KEY (product_id) REFERENCES cms_product(id)
);


-- prd_usage_profile definition

-- Drop table

-- DROP TABLE prd_usage_profile;

CREATE TABLE prd_usage_profile (
	id numeric NOT NULL,
	"name" varchar(30) NULL,
	usage_profile_desc varchar(30) NULL,
	network varchar(25) NULL,
	region varchar(25) NULL,
	product_id numeric NULL,
	created_date timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	updated_date timestamp NULL,
	updated_by numeric NULL DEFAULT 0,
	created_by_name varchar(30) NULL,
	updated_by_name varchar(30) NULL,
	CONSTRAINT pk_prd_usage_profile_id PRIMARY KEY (id),
	CONSTRAINT cons_prd_usage_product_fk FOREIGN KEY (product_id) REFERENCES cms_product(id)
);


-- prd_wallet_profile definition

-- Drop table

-- DROP TABLE prd_wallet_profile;

CREATE TABLE prd_wallet_profile (
	wallet_profile_id int4 NOT NULL,
	wallet_profile_name varchar(100) NULL,
	product_id numeric NULL,
	instrument_id numeric NULL DEFAULT 0,
	instrument_profile_id numeric NULL DEFAULT 0,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	CONSTRAINT prd_wallet_profile_pk PRIMARY KEY (wallet_profile_id),
	CONSTRAINT cons_wallet_profile_fk FOREIGN KEY (product_id) REFERENCES cms_product(id)
);


-- wallet_profile_mapping definition

-- Drop table

-- DROP TABLE wallet_profile_mapping;

CREATE TABLE wallet_profile_mapping (
	wallet_profile_id int4 NOT NULL,
	wallet_id int4 NOT NULL,
	priority_order int4 NOT NULL,
	created_by varchar(20) NULL,
	created_date timestamp(6) NULL,
	updated_by varchar(20) NULL,
	updated_date timestamp(6) NULL,
	created_by_name varchar(20) NULL,
	updated_by_name varchar(255) NULL,
	CONSTRAINT wallet_profile_mapping_pk PRIMARY KEY (wallet_profile_id, wallet_id, priority_order),
	CONSTRAINT wallet_profile_mapping_fk FOREIGN KEY (wallet_id) REFERENCES wallet_master(wallet_id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT wallet_profile_mapping_fk2 FOREIGN KEY (wallet_profile_id) REFERENCES prd_wallet_profile(wallet_profile_id)
);


-- cms_batch_summary_details definition

-- Drop table

-- DROP TABLE cms_batch_summary_details;

CREATE TABLE cms_batch_summary_details (
	batch_no varchar(20) NULL,
	created_on timestamp NULL,
	created_by numeric NULL DEFAULT 0,
	entry_mode varchar(20) NULL,
	upload_file_name varchar(255) NULL,
	total_records numeric NULL DEFAULT 0,
	rejected_records numeric NULL DEFAULT 0,
	successful_records numeric NULL DEFAULT 0,
	checker_verified_on timestamp NULL,
	checker_verified_by varchar(20) NULL,
	status varchar(20) NULL,
	process_status varchar(20) NULL,
	issuer_id numeric NULL DEFAULT 0,
	card_dispatch_flag varchar(20) NULL,
	pin_dispatch_falg varchar(20) NULL,
	card_dispatch_updated_by numeric NULL DEFAULT 0,
	pin_dispatch_updated_by numeric NULL DEFAULT 0,
	card_dispatch_date timestamp NULL,
	pin_dispatch_date timestamp NULL,
	pin_awb_no varchar(20) NULL,
	dispatch_status varchar(20) NULL,
	card_awb_no varchar(20) NULL,
	agency_name varchar(50) NULL,
	card_dispatch_to varchar(20) NULL,
	pin_dispatch_to varchar(20) NULL,
	updated_by numeric NULL DEFAULT 0,
	branch_id numeric NULL DEFAULT 0,
	instance_issuance_flag varchar(255) NULL,
	outlet_id varchar(20) NULL DEFAULT 0,
	card_ack_date timestamp NULL,
	product_id numeric NULL,
	created_by_name varchar(50) NULL,
	file_processing_date timestamp NULL,
	"comments" varchar(500) NULL,
	dispatch_address varchar(500) NULL,
	approve_reject_status varchar(5) NULL DEFAULT 'P'::character varying,
	approve_reject_id numeric NULL,
	approve_reject_date timestamp NULL,
	is_virtual_to_physical_conv varchar(2) NULL,
	is_perso varchar(2) NULL DEFAULT 'N'::character varying,
	generated_by varchar(50) NULL DEFAULT 'manual'::character varying,
	CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES cms_product(id)
);
