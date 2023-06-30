INSERT INTO user_group
(id, "name", priority, created_date, updated_date, created_by, updated_by)
VALUES(1, 'branch', 1, sysdate, sysdate, 1, 1);
INSERT INTO user_group
(id, "name", priority, created_date, updated_date, created_by, updated_by)
VALUES(2, 'zone', 2, sysdate, sysdate, 1, 1);
INSERT INTO user_group
(id, "name", priority, created_date, updated_date, created_by, updated_by)
VALUES(5, 'institution', 5, sysdate, sysdate, 1, 1);
INSERT INTO user_group
(id, "name", priority, created_date, updated_date, created_by, updated_by)
VALUES(3, 'Issuer', 3, sysdate, sysdate, 1, 1);
INSERT INTO user_group
(id, "name", priority, created_date, updated_date, created_by, updated_by)
VALUES(4, 'Partner', 4, sysdate, sysdate, 1, 1);
INSERT INTO user_group
(id, "name", priority, created_date, updated_date, created_by, updated_by)
VALUES(6, 'paycraftUser', 6, sysdate, sysdate, 1, 1);



INSERT INTO role
(id, role_name, user_group_id, issuer_id, created_date, updated_date, created_by, updated_by, created_by_name, outlet, customer, role_flag, institution_id, partner_id, updated_by_name)
VALUES(1, 'PaycraftUserRole', 5, 1, sysdate, NULL, 17, 0, NULL, NULL, NULL, 'BANK', 0, 0, NULL);
INSERT INTO role
(id, role_name, user_group_id, issuer_id, created_date, updated_date, created_by, updated_by, created_by_name, outlet, customer, role_flag, institution_id, partner_id, updated_by_name)
VALUES(4, 'HOUser', 1, 16, sysdate, NULL, 1, 0, 'PaycraftUser', 'No', 'No', NULL, 0, 0, NULL);
INSERT INTO role
(id, role_name, user_group_id, issuer_id, created_date, updated_date, created_by, updated_by, created_by_name, outlet, customer, role_flag, institution_id, partner_id, updated_by_name)
VALUES(5, 'PaycraftUserCheckerRole', 5, 16, sysdate, NULL, 1, 0, NULL, NULL, NULL, 'BANK', 0, 0, NULL);
INSERT INTO role
(id, role_name, user_group_id, issuer_id, created_date, updated_date, created_by, updated_by, created_by_name, outlet, customer, role_flag, institution_id, partner_id, updated_by_name)
VALUES(6, 'OutletUser', 1, 16, sysdate, NULL, 1, 0, 'PaycraftUser', 'Yes', 'No', '', 0, 0, NULL);





INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(1, 'AccessControl', NULL, 1, 0, 0, 1, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(2, 'Link Registration', 'registerLinkMenu', 1, 1, 0, 11, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(3, 'Add Role', 'NewRole_1', 1, 1, 0, 2, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(4, 'Customer Enquiry', 'customerEnquiryData', 1, 30, 8, 13, '2021-01-14 10:05:11.912', NULL, 1, 1, 0, '', '', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(5, 'Outlet User Unlock', 'outletUserUnlock', 4, 1, 0, 16, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6, 'test one', 'test', 5, 9, 0, 114, '2023-04-06 17:15:59.218', '2023-04-06 17:15:59.218', 1, 1, 0, 'No', 'No', NULL);
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(7, 'Employer View', NULL, 1, 0, 0, 16, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(8, 'NCMC-DCMS', NULL, 1, 0, 0, 3, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(9, 'Product Setup', NULL, 1, 0, 0, 2, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(10, 'Card Management', NULL, 1, 0, 0, 5, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(11, 'MO Dispatch File Upload', 'moDispatchUpload', 1, 30, 8, 3, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(12, 'Report Hub', 'generalizedCSReport', 3, 223, 0, 2, '2021-02-20 12:16:27.481', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(13, 'Customer Authentication', 'customerAuthData', 0, 30, 8, 14, '2021-02-24 15:06:38.286', NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(14, 'Account Closure', 'accountClosure', 3, 30, 8, 15, '2021-03-01 18:28:54.986', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(15, 'MCC Groups', 'mccGroup', 4, 9, 0, 9, '2021-08-04 14:09:23.494', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(16, 'Wallet Profile Group', 'getWalletProfileList', 5, 9, 0, 101, '2021-08-04 19:43:25.037', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(17, 'Sample Menu', 'sampleMenu', 5, 9, 0, 102, '2021-08-04 19:59:41.044', NULL, 1, 1, 0, 'No', 'No', NULL);
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(18, 'Test Menu', 'testMenu', 5, 9, 0, 103, '2021-08-04 20:15:37.121', NULL, 1, 1, 0, 'No', 'No', NULL);
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(19, 'Wallet Management', 'getWallets', 5, 9, 0, 104, '2021-08-25 08:42:23.517', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(20, 'MCC Master', 'getMCCList', 4, 9, 0, 5, '2021-10-08 15:00:11.517', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(21, 'Partner Master', 'editPartner', 1, 1, 0, 2, '2021-12-06 11:14:44.000', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(22, 'Transaction and Fee master', 'getFeeTxnList', 4, 9, 0, 4, '2021-12-06 10:29:53.736', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(23, 'Topup profile', 'getTopupProfileList', 6, 9, 0, 107, '2021-12-23 17:39:14.222', NULL, 1, 1, 0, 'No', 'No', NULL);
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(24, 'Topup Profile', 'getTopupProfileTemplateList', 6, 9, 0, 111, '2022-01-06 12:12:39.424', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(25, 'Card Image Code Master', 'cardImageMasterList', 4, 9, 0, 1, '2022-01-21 19:49:55.801', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(26, 'Embossa Vendor Onboarding', 'getEmbossaList', 4, 9, 0, 2, '2022-01-31 11:55:40.096', NULL, 2, 2, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(27, 'User Register Checker', 'newUserChecker', 1, 1, 0, 20, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(28, 'Incoming File Process', 'incomingFileProcessUpload', 1, 9, 0, 113, NULL, NULL, 10, 10, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(29, 'HO Indent Request', 'instaCard', 1, 30, 8, 1, NULL, NULL, 1, 1, 0, 'Yes', NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(30, 'Card issuance', NULL, 1, 8, 0, 2, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(31, 'MO registration maker', 'moList', 1, 1, 0, 6, '2022-03-07 14:50:36.727', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(32, 'Report Hub', 'generalizedCSReportList', 1, 222, 0, 113, NULL, NULL, 10, 10, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(33, 'CO registration maker', 'coList', 1, 1, 0, 7, '2022-03-14 13:07:47.601', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(34, 'Embossing File Generation', 'embossingGeneration', 1, 30, 8, 5, NULL, NULL, 1, 1, 0, 'Yes', NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(36, 'Query EMD account balance', 'emdAccountBalance', 5, 30, 8, 16, '2022-03-25 22:58:20.288', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(37, 'Fee Transaction Queue Clearance', '', 0, 0, 0, 46, '2022-10-21 11:39:19.028', NULL, 3, 3, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(38, 'Fee Transaction Queue Clearance', NULL, 1, 0, 0, 47, '2022-10-21 11:51:37.722', NULL, 3, 3, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(39, 'Fee Transaction Queue Clearance maker', 'getFeeTransactionMaker', 1, 38, 0, 2, '2022-10-21 11:52:54.948', NULL, 3, 3, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(40, 'Fee Transaction Queue Clearance Checker', 'getFeeTransactionChecker', 1, 38, 0, 3, '2022-10-21 11:53:52.064', NULL, 3, 3, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(41, 'Inventory Request', 'inventoryRequest', 1, 30, 8, 12, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(42, 'Instrument Profile', 'cardProfile', 1, 9, 0, 3, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(43, 'Customer Profile', 'customerProfile', 1, 9, 0, 4, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(44, 'Usage Profile', 'usageProfile', 1, 9, 0, 5, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(45, 'Balance Profile', 'balanceMgmt', 1, 9, 0, 6, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(46, 'Limit Profile', 'limitProfile', 1, 9, 0, 8, '2022-01-20 11:24:17.000', NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(47, 'Fee Profile', 'getFeeProfileList', 1, 9, 0, 8, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(48, 'Merchant Profile', 'merchantProfile', 1, 9, 0, 17, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(49, 'Transaction Profile', 'txnProfileTemp', 1, 9, 0, 7, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(50, 'Product Configuration', 'productManagement', 1, 9, 0, 11, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(51, 'Product Configuration Maker/Checker', 'productManagementChecker', 1, 9, 0, 12, '2021-12-29 19:30:13.000', NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(52, 'View Batchwise Fee Transactions', 'viewBatchwiseFeeTransactions', 1, 38, 0, 4, NULL, NULL, 3, 3, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(71, 'Branch Master', 'editBranch', 1, 1, 0, 5, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(72, 'Institution Master', 'editInstitution', 1, 1, 0, 1, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(73, 'Issuer Master', 'editBank', 1, 1, 0, 3, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(75, 'Zone Master', 'editZone', 1, 1, 0, 4, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(76, 'User Master', 'newUserChecker', 1, 1, 0, 13, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(101, 'User Unlock', 'userUnlock', 1, 1, 0, 15, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(116, 'Incoming File Process ', 'incomingFileProcessUpload', 1, 222, 0, 4, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(123, 'Edit Menus', 'editMenusList', 1, 1, 0, 29, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(124, 'TransactionMonitoring', 'transactionMonitoring', 1, 1, 0, 30, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(151, 'Channel Management', 'channelManagement', 1, 9, 0, 12, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(217, 'Link Registration Kunal', 'registerLinkMenuKunal', 3, 1, 0, 31, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(222, 'CS', NULL, 1, 0, 0, 9, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(223, 'Report', NULL, 1, 0, 0, 9, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(238, 'Search Authorization Transaction', 'searchTransaction', 1, 9, 0, 13, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(252, 'Instrument Register', 'instrumentList', 5, 9, 0, 1, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(253, 'Instrument Mapping', 'instrumentIssuerMapping', 5, 9, 0, 2, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(257, 'Instrument Configuration', 'instrumentProfileList', 4, 9, 0, 98, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(262, 'Bin Profile', 'binProfileList', 4, 9, 0, 10, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(263, 'Child Transaction Profile', 'childTxnProfile', 4, 9, 0, 18, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(264, 'Outlet Master', 'outlet', 1, 1, 0, 14, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(267, 'Role List', 'roleList', 4, 1, 0, 12, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(337, 'Card Request', 'cardRequest', 0, 10, 0, 6, NULL, NULL, 0, 0, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(404, 'Set Outlet Limit', 'outletLimit', 1, 1, 0, 34, NULL, NULL, 0, 0, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(414, 'Set Mo Limit', 'moLimit', 1, 1, 0, 35, NULL, NULL, 0, 0, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(418, 'MO Limit Checker', 'moLimitCheckerList', 1, 1, 0, 36, NULL, NULL, 0, 0, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(425, 'Role List', 'roleList', 4, 1, 0, 12, NULL, NULL, 0, 0, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(426, 'Edit Menus', 'editMenusList', 1, 1, 0, 29, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(456, 'CS Report', NULL, 1, 0, 0, 45, NULL, NULL, 127, 127, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(601, 'User Registration', 'userRegister', 3, 1, 0, 37, NULL, NULL, 127, 127, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(615, 'DashBoard', 'txnMonitor', 5, 1, 0, 38, NULL, NULL, 127, 127, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(620, 'TxnMonitor', 'txnMonitor', 5, 1, 0, 39, NULL, NULL, 127, 127, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(668, 'Password Policy', 'passwordPolicy', 1, 1, 0, 10, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(691, 'RepoetMonitor', 'reportIssuanceMonitor', 5, 1, 0, 40, '2017-11-02 12:44:05.000', NULL, 127, 127, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(692, 'ReportMonitor', 'reportIssuanceMonitor', 5, 1, 0, 41, '2017-11-02 12:44:37.000', NULL, 127, 127, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(723, 'Outlet Creation Checker', 'outletCreationChecker', 1, 1, 0, 32, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(767, 'Report Hub', 'generalizedCSReportList', 1, 456, 0, 18, '2018-04-11 15:16:32.000', NULL, 127, 127, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(2015, 'HO Indent Card Request', 'getHOCardRequestList', 1, 30, 8, 1, NULL, NULL, 1, 1, 0, 'Yes', NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(2017, 'HO Indent Request', 'instaCard', 1, 30, 0, 1, NULL, NULL, 1, 1, 0, 'Yes', NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(2018, 'Employer Details', 'corporateList', 1, 7, 0, 101, NULL, NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(2020, 'Card Block', 'cardHotList', 1, 30, 8, 10, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(2021, 'Card Unblock', 'cardDeHotList', 1, 30, 8, 11, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(2022, 'Pin Unblock', 'pinUnblock', 1, 30, 8, 10, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6000, 'GLCODE Mapping', NULL, 1, 0, 0, 2, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6002, 'Add Account Details Maker', 'accountDetailsMaker', 1, 6000, 0, 2, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6004, 'Transaction Scenario Checker', 'txnScenarioChecker', 1, 6000, 0, 4, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6005, 'Narration Details Maker', 'narrationMaker', 1, 6000, 0, 5, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6006, 'Debit/Credit Code Maker', 'drCrCodeMaker', 1, 6000, 0, 6, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6007, 'Debit/Credit Code Checker', 'drCrCodeChecker', 1, 6000, 0, 7, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6009, 'Add Account Details Checker Demo', 'accountDetailChecker', 1, 6000, 0, 3, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6010, 'Narration Details Checker', 'narrationChecker', 1, 6000, 0, 5, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6011, 'Transaction Scenario Maker', 'txnScenarioMaker', 1, 6000, 0, 1, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6013, 'Add Accounting Entry Maker', 'accEntryMaker', 1, 6000, 0, 1, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6014, 'Add Accounting Entry Checker', 'accEntryChecker', 1, 6000, 0, 2, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6015, 'Fee Waiver', NULL, 1, 0, 0, 2, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6016, 'Add Fee Waiver Profile', 'feeWaiver', 1, 6015, 0, 1, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6017, 'Product Setup View', NULL, 1, 0, 0, 8, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6018, 'Product Details', 'viewProductDetail', 1, 6017, 0, 1, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6050, 'Card Status View', NULL, 1, 0, 0, 9, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6051, 'Card HotlistDeHotlist View', 'viewCardHotListandDeHotListDetails', 1, 6050, 0, 1, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6052, 'Pin UnBlock View', 'viewPinUnblock', 1, 6050, 0, 1, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6060, 'Prepaid', NULL, 1, 0, 0, 1, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6061, 'Card issuance', NULL, 1, 6060, 0, 2, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6062, 'Request for Cards', 'persoFileUpload', 1, 6061, 6060, 3, NULL, NULL, 0, 0, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6063, 'View Batch Summary Details', 'persoFileUploadSummary', 1, 6061, 6060, 4, NULL, NULL, 0, 0, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6065, 'Approve/Reject Card Request', 'getCardRequestApprovalPage', 1, 30, 8, 5, '2022-02-11 19:27:00.000', NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6066, 'View Approved/Rejected Card Requests', 'homepage', 1, 30, 8, 6, '2022-02-11 19:27:00.000', NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6067, 'MO dispatch details', 'getMODispatchDetails', 1, 30, 8, 6, '2022-02-11 19:27:00.000', NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6068, 'MO Card Acknowledge', 'cardAck', 1, 6061, 6060, 5, '2022-02-11 19:27:00.000', NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6069, 'MO Registration Checker', 'moCheckerList', 1, 1, 0, 43, '2022-03-15 11:00:54.000', NULL, 1, 1, 0, NULL, 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6070, 'CO Registration Checker', 'coCheckerList', 1, 1, 0, 43, '2022-03-16 10:36:50.000', NULL, 1, 1, 0, NULL, 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6071, 'Release MO funds', 'getMoFund', 1, 8, 0, 11, '2022-03-15 15:31:26.000', NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6096, 'View available base plastic', 'viewBasePlasticCount', 1, 30, 8, 9, '2022-03-07 14:50:36.727', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6097, 'Add base plastic card inventory', 'addBasePlasticCount', 1, 30, 8, 11, '2022-03-15 15:31:26.000', NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6098, 'View Card Request', 'cardRequestView', 1, 30, 8, 15, '2022-06-03 15:14:25.000', NULL, 1, 1, 0, '', '', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6099, 'View Transaction Statement', 'getStatementEnquiry', 1, 222, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6100, 'Contact Center Onboarding', 'getContactCenterList', 1, 9, 0, 3, NULL, NULL, 1, 1, 0, NULL, NULL, 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6102, 'ACC Entry Maker', 'accEntryMaker', 1, 8, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6103, 'DR Cr CodeChecker', 'drCrCodeChecker', 1, 8, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6104, 'DR CR CodeMaker', 'drCrCodeMaker', 1, 8, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6105, 'Narration Checker', 'narrationChecker', 1, 8, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6106, 'Narration Maker', 'narrationMaker', 1, 8, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6107, 'Txn Scenario Checker', 'txnScenarioChecker', 1, 8, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6108, 'Txn Scenario Maker', 'txnScenarioMaker', 1, 8, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6109, 'Account Detail Checker', 'accountDetailChecker', 1, 8, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6110, 'Account Details Maker', 'accountDetailsMaker', 1, 8, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6111, 'ACC Entry Checker', 'accEntryChecker', 1, 8, 0, 11, NULL, NULL, 1, 1, 0, 'Yes', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6112, 'Transaction Statement', 'getCustomerAuthDetails', 1, 6113, 0, 1, NULL, NULL, 1, 1, 0, '', '', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6113, 'Enquiry', NULL, 1, 0, 0, 8, NULL, NULL, 1, 1, 0, '', '', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6114, 'View Card Details', 'CardDetail', 1, 222, 0, 2, NULL, NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6115, 'Block card', 'cardBlock', 1, 222, 0, 5, NULL, NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6116, 'MO maker/checker', 'moCheckerList', 1, 1, 0, 8, '2022-03-07 14:50:36.727', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6117, 'CO maker/checker', 'coCheckerList', 1, 1, 0, 9, '2022-03-07 14:50:36.727', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6118, 'View Dispatched and Issued Cards Summary', 'viewCardInventorySummary', 1, 30, 8, 18, '2023-03-09 10:37:49.000', NULL, 1, 1, 0, 'No', 'No', 'A');
INSERT INTO page_master
(id, page_name, page_link, user_group_id, parent_page_id, grand_parent_page_id, display_order, created_date, updated_date, created_by, updated_by, issuer_id, outlet, customer, status)
VALUES(6119, 'View Card Inventory Summary', 'viewCardInventorySummary', 1, 6061, 6060, 9, '2023-03-09 15:10:47.000', NULL, 1, 1, 0, 'Yes', 'No', 'A');



INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 49);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 9);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 101);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 45);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 73);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 76);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 34);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 75);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 71);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 29);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 72);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 50);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 267);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 5);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 262);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 2);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 668);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 41);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 1);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 15);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 17);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 18);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 20);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 21);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 22);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 46);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 25);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 26);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 32);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 31);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 33);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(5, 51);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(5, 9);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(5, 6069);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(5, 1);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(5, 6070);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 8);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 11);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 30);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 32);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 222);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 414);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 668);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 6065);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 6066);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 6067);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 6097);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 6098);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6060);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6061);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6062);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6063);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6068);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6016);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6017);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 32);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 222);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 116);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 51);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 6100);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 39);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 40);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 52);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 6114);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6020);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6021);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6022);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 222);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 264);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(5, 723);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 6117);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 6116);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 6096);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(1, 6114);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(4, 6118);
INSERT INTO role_page_link
(role_id, page_id)
VALUES(6, 6119);


INSERT INTO user_master
(id, user_name, "password", first_name, middle_name, last_name, email_id, status, address1, address2, phone_number, mobile_number, user_group_id, role_id, institution_id, partner_id, issuer_id, zone_id, branch_id, status_change_by, account_lock, lock_date, lock_counter, status_change_date, unlock_by, unlock_date, is_first_login, created_date, updated_date, created_by, updated_by, approved_status, approved_description, approved_status_change_by, approved_status_change_date, old_password, login_time, no_of_entries, user_name_prefix, created_by_name, approved_by_name, is_admin, captcha, previous_login_time, customer_type, acquired_id, merchant_id, new_password_enc_flag, customer_role_flag, employee_id)
VALUES(1, 'PaycraftUser', '789655cdae8c64115ib88g61413e8034046a201g', 'superadmin', 'Paycraft', 'Paycraft', 'prod.support@paycraftsol.com', 'A', 'Kamothe', 'mumbai', '8452000144', '9766298949', 6, 1, 0, 0, 0, 0, 0, NULL, 'N', sysdate, 0, NULL, NULL, NULL, 'N', sysdate, sysdate, 17, 17, 'Approved', NULL, NULL, NULL, NULL, sysdate, 0, NULL, 'ins', 'PaycraftUser', 'Yes', 'Yes', sysdate, 'SYSTEM', NULL, NULL, 'N', 'BANK', NULL);
INSERT INTO user_master
(id, user_name, "password", first_name, middle_name, last_name, email_id, status, address1, address2, phone_number, mobile_number, user_group_id, role_id, institution_id, partner_id, issuer_id, zone_id, branch_id, status_change_by, account_lock, lock_date, lock_counter, status_change_date, unlock_by, unlock_date, is_first_login, created_date, updated_date, created_by, updated_by, approved_status, approved_description, approved_status_change_by, approved_status_change_date, old_password, login_time, no_of_entries, user_name_prefix, created_by_name, approved_by_name, is_admin, captcha, previous_login_time, customer_type, acquired_id, merchant_id, new_password_enc_flag, customer_role_flag, employee_id)
VALUES(2, 'PaycraftChk', '789655cdae8c64115ib88g61413e8034046a201g', 'superadmin', 'Paycraft', 'Paycraft', 'prod.support@paycraftsol.com', 'A', 'Kamothe', 'mumbai', '8452000144', '9766298949', 6, 5, 0, 0, 0, 0, 0, NULL, 'N', sysdate, 0, NULL, NULL, NULL, 'N', sysdate,sysdate, 17, 17, 'Approved', NULL, NULL, NULL, NULL, sysdate, 0, NULL, 'ins', 'PaycraftUser', 'Yes', 'Yes', sysdate, 'SYSTEM', NULL, NULL, 'N', 'BANK', NULL);



INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(1, 23000, 'Offline Debit', 'Debit', 'TXN', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(2, 30001, 'Debit Adjustment', 'Debit', 'TXN', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(3, 30002, 'Credit Adjustment', 'Credit', 'TXN', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(4, 21001, 'ATM cash withdrawal', 'Debit', 'TXN', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(5, 10118, 'Credit Account Closure', 'Credit', 'TXN', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(6, 10119, 'Debit Account Closure', 'Debit', 'TXN', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(7, 95028, 'Balance Transfer', 'Debit', 'TXN', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(8, 21029, 'Money Add by Balance Sync', 'Debit', 'TXN', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(9, 93028, 'Instant Card Fee', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(10, 93029, 'Personlized Card Fee ', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(11, 30003, 'Replacement Card Fee', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(12, 10100, 'Int''l ATM withdrawal fee', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 21001010002, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(13, 10101, 'Int''l POS charges', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 21000010003, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(14, 10102, 'Int''l ATM Balance enquiry fee', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 21031010002, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(15, 10103, 'Domestic OFFUS ATM Withdrawal fee', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 21001000002, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(16, 10104, 'Decline charges POS', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 21000000103, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(17, 10105, 'Decline charges Int''l POS', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 21000010103, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(18, 10106, 'Domestic ATM Balance enquiry fee', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 21031000002, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(19, 10107, 'Decline charges Domestic ATM withdrawal', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 21001000102, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(20, 10108, 'Decline charges Int''l ATM withdrawal', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(21, 10109, 'Decline charges Ecom', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 21000000101, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(22, 10110, 'Dormant Card Fee', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(23, 10111, 'Card Closure Fee', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(24, 10112, 'Card Renewal Fee', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(25, 10113, 'Salary Statement Fee', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(26, 93133, 'Annual Fee', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(27, 10120, 'RePin Fee', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(28, 10121, 'SMS Fee', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, 21000000001, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(29, 10122, 'Inactive Card Fee', 'Debit', 'Fee', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(30, 21096, 'Set PIN / Change PIN', NULL, 'TXN', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(31, 20018, 'Card Account Verification', NULL, 'TXN', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(32, 21031, 'Balance enquiry', NULL, 'TXN', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(33, 21028, 'Topup', 'Credit', 'TXN', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(34, 21000, 'Purchase', 'Debit', 'TXN', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(35, 21083, 'Service creation', NULL, 'TXN', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(36, 93031, 'Domestic MiniStatement', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(37, 93032, 'Domestic Pos Purchase', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 21000000003, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(38, 21090, 'Mini Statement', 'D', 'Txn', 'Y', '12', '2022-01-26 17:34:18.118', 1, 'PaycraftUser', NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(39, 22028, 'Preload', 'Credit', 'TXN', 'Y', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(40, 41000, 'Reversal Purchase', 'Credit', 'TXN', 'Y', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(41, 41001, 'Reversal ATM cash withdrawal', 'Credit', 'TXN', 'Y', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(42, 41028, 'Reversal Topup', 'Credit', 'TXN', 'Y', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(43, 41029, 'Reversal Money Add by Balance Sync', 'Credit', 'TXN', 'Y', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(44, 98031, 'Surcharge Fee', 'Debit', 'Fee', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(45, 41031, 'Balance enquiry Reversal', NULL, 'TXN', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(46, 10114, 'Domestic ATM Balance enquiry reversal fee', 'Credit', 'Fee', 'Y', NULL, NULL, NULL, NULL, 41031000002, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(47, 21048, 'fund transfer debit', 'Debit', 'TXN', 'Y', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(48, 21049, 'fund transfer credit', 'Credit', 'TXN', 'Y', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(109, 10007, 'Card Activation Fee', 'D', 'Fee', 'N', '0', '2023-03-09 20:35:24.673', 1, 'PaycraftUser', NULL, '0', 0, '0');
INSERT INTO transaction_type
(id, txn_type, txn_name, drcr, txn_group, is_scheme, txn_mode, created_date, created_by, created_by_name, swt_txn_type, gst_flag, gst_percentage, queue_flag)
VALUES(118, 21002, 'Balance inquiry fee', 'D', 'Fee', 'N', NULL, '2022-08-15 14:32:52.771', 1, 'PaycraftUser', NULL, NULL, NULL, NULL);




INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(1, 'Ecomm Purchase', 21000, '2100081', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(2, 'POS Purchase Contact', 21000, '2100005', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(3, 'ATM Cash withdrawal', 21001, '2100100', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(4, 'Money Add by Account', 21028, '2102801', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(6, 'Money Add by Cash', 21028, '2102802', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(7, 'Money Add by Balance Sync', 21029, '2102900', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(8, 'Balance enquiry', 21031, '2103100', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(9, 'Service creation', 21083, '2108300', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(10, 'Set PIN / Change PIN', 21096, '2109600', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(11, 'Debit Adjustment', 30001, '3000100', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(12, 'Credit Adjustment', 30002, '3000200', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(13, 'ATM Mini Statement', 21090, '2109000', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(14, 'POS Purchase Contactless', 21000, '2100007', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(15, 'fund transfer debit', 21048, '2104800', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(16, 'fund transfer credit', 21049, '2104900', 'N');
INSERT INTO sub_transaction_type
(id, txn_name, txn_type, sub_txn_type, is_applicable_for_virtual)
VALUES(118, 'Balance inquiry fee', 21002, '21002', 'N');


INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(1, 'Damage', '01', 'PHL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(2, 'Defective', '02', 'PHL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(3, 'Lost/Stolen', '03', 'PHL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(4, 'Stolen', '04', 'PHL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(5, 'Dormant', '05', 'THL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(6, 'Incorrect PIN attempt', '06', 'THL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(7, 'Customer request', '07', 'THL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(8, 'Card Closure', '08', 'PHL', 'N', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(10, 'FRAUD', '09', 'PHL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(11, 'MISPLACED', '10', 'PHL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(12, 'EXPIRED', '11', 'PHL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(13, 'Passive Block', '12', 'THL', 'Y', NULL, 'Y');
INSERT INTO cms_hotlist_reason_code
(id, reason_message, reason_code, card_type, flag_hotlist_portal, card_flag, status)
VALUES(14, 'Customer initiated', '13', 'THL', 'Y', NULL, 'Y');




INSERT INTO cms_limit_transaction_type
(id, txn_type_name, txn_type, txn_type_status, txn_type_mode, enable_flag, card_usage, max_chip_amt)
VALUES(3, 'POS', '21000', 'A', '2100005', 'Y', NULL, NULL);
INSERT INTO cms_limit_transaction_type
(id, txn_type_name, txn_type, txn_type_status, txn_type_mode, enable_flag, card_usage, max_chip_amt)
VALUES(2, 'ECOM', '21000', 'A', '2100081', 'N', NULL, NULL);
INSERT INTO cms_limit_transaction_type
(id, txn_type_name, txn_type, txn_type_status, txn_type_mode, enable_flag, card_usage, max_chip_amt)
VALUES(4, 'CTLS', '21000', 'A', '2100007', 'N', NULL, 2000);
INSERT INTO cms_limit_transaction_type
(id, txn_type_name, txn_type, txn_type_status, txn_type_mode, enable_flag, card_usage, max_chip_amt)
VALUES(1, 'ATM', '21001', 'A', '2100100', 'Y', NULL, NULL);




INSERT INTO country_master
(id, "name", code, currency_code, created_by, updated_by, created_date, updated_date)
VALUES(1, 'India', 'IN', 'INR', 1, NULL, sysdate, NULL);



INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(1, 'Maharashtra', 'Mumbai', 1, 899, 899, sysdate, sysdate, 'MH');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(2, 'Gujarat', 'Gandhinagar', 1, 899, 899, sysdate, sysdate, 'GJ');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(3, 'Delhi', 'Delhi', 1, 899, 899, sysdate, sysdate, 'DL');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(10, 'Goa', 'Panaji', 1, 899, 899, sysdate, sysdate, 'GA');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(11, 'Kerala', 'Thiruvananthapuram', 1, 899, 899, sysdate, sysdate, 'KL');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(17, 'Odisha', 'Bhubaneswar', 1, 899, 899, sysdate, sysdate, 'OR');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(18, 'Uttar Pradesh', 'Uttar Pradesh', 1, 899, 899, sysdate, sysdate, 'UP');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(19, 'Karnataka', 'Bangalore', 1, 899, 899, sysdate, sysdate, 'KA');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(22, 'Chhattisgarh', 'Raipur', 1, 899, 899, sysdate, sysdate, 'CG');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(23, 'Andaman and Nicobar Islands', NULL, 1, 899, 899, sysdate, sysdate, 'AN');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(24, 'Andhra Pradesh', NULL, 1, 899, 899, sysdate, sysdate, 'AP');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(25, 'Arunachal Pradesh', NULL, 1, 899, 899, sysdate, sysdate, 'AR');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(26, 'Assam', NULL, 1, 899, 899, sysdate, sysdate, 'AS');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(27, 'Bihar', NULL, 1, 899, 899, sysdate, sysdate, 'BR');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(28, 'Chandigarh', NULL, 1, 899, 899, sysdate, sysdate, 'CH');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(29, 'Dadra and Nagar Haveli', NULL, 1, 899, 899, sysdate, sysdate, 'DN');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(30, 'Haryana', NULL, 1, 899, 899, sysdate, sysdate, 'HR');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(31, 'Himachal Pradesh', NULL, 1, 899, 899, sysdate, sysdate, 'HP');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(32, 'Jammu and Kashmir', NULL, 1, 899, 899, sysdate, sysdate, 'JK');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(33, 'Jharkhand', NULL, 1, 899, 899, sysdate, sysdate, 'JH');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(34, 'Madhya Pradesh', NULL, 1, 899, 899, sysdate, sysdate, 'MP');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(35, 'Manipur', NULL, 1, 899, 899, sysdate, sysdate, 'MN');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(36, 'Meghalaya', NULL, 1, 899, 899, sysdate, sysdate, 'ML');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(37, 'Mizoram', NULL, 1, 899, 899, sysdate, sysdate, 'MZ');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(38, 'Nagaland', NULL, 1, 899, 899, sysdate, sysdate, 'NL');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(39, 'Puducherry', NULL, 1, 899, 899, sysdate, sysdate, 'PY');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(40, 'Punjab', NULL, 1, 899, 899, sysdate, sysdate, 'PB');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(41, 'Rajasthan', NULL, 1, 899, 899, sysdate, sysdate, 'RJ');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(42, 'Tamil Nadu', NULL, 1, 899, 899, sysdate, sysdate, 'TN');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(43, 'Telangana', NULL, 1, 899, 899, sysdate, sysdate, 'TG');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(44, 'Tripura', NULL, 1, 899, 899, sysdate, sysdate, 'TR');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(45, 'Uttarakhand', NULL, 1, 899, 899, sysdate, sysdate, 'UK');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(46, 'West Bengal', NULL, 1, 899, 899, sysdate, sysdate, 'WB');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(47, 'Lakshadweep', NULL, 1, 899, 899, sysdate, sysdate, 'LD');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(48, 'Sikkim', NULL, 1, 899, 899, sysdate, sysdate, 'SK');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(48, 'Daman and Diu', NULL, 1, 899, 899, sysdate, sysdate, 'DD');
INSERT INTO state_master
(id, "name", capital, country_id, created_by, updated_by, created_date, updated_date, code)
VALUES(49, 'Ladakh', NULL, 1, 899, 899, sysdate, sysdate, 'LA');



INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(42, 'Agastinuagan', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(43, 'Anandpur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(44, 'Anjira', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(45, 'Anugul', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(46, 'Arjyapalli', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(47, 'Asika', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(48, 'Athagad', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(14, 'Noida', 18, 899, 899, sysdate, sysdate, 'NOI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(41, 'Bangalore', 19, 899, 899, sysdate, sysdate, 'BAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(49, 'Athmallik', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(50, 'Badagada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(51, 'Badakodanda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(52, 'Badamba', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(53, 'Badmal', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(54, 'Balagoda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(55, 'Balangir', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(56, 'Baleshwar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(57, 'Baliguda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(58, 'Balimela', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(59, 'Balipatapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(60, 'Balugaon', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(61, 'Banaigarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(62, 'Banapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(63, 'Bandhbahal', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(64, 'Bangomunda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(65, 'Banki', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(66, 'Barapali', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(67, 'Barbil', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(68, 'Bardol', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(69, 'Bargarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(70, 'Baripada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(71, 'Basudebpur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(72, 'Baudhgarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(73, 'Belagachhia', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(74, 'Bellaguntha', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(75, 'Belpahar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(76, 'Bhabinipur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(77, 'Bhadrak', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(78, 'Bhakarsahi', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(79, 'Bhanjanagar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(80, 'Bhapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(81, 'Bhatli', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(82, 'Bhawanipatna', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(83, 'Bhuban', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(84, 'Bijepur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(85, 'Binika', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(86, 'Biramitrapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(87, 'Birapratappur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(88, 'Bishamakatak', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(89, 'Borigam', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(90, 'Boriguma', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(91, 'Brahmabarada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(92, 'Brahmapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(93, 'Brajarajnagar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(94, 'Budhapanka', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(95, 'Buguda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(96, 'Bundia', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(97, 'Burla', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(98, 'Byasanagar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(99, 'Champua', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(100, 'Chandapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(101, 'Chandili', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(102, 'Charibatia', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(103, 'Chhatrapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(104, 'Chikiti', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(105, 'Chitrakonda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(106, 'Choudwar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(107, 'Cuttack', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(108, 'Dadhapatna', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(109, 'Daitari', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(110, 'Damanjodi', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(111, 'Danara', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(112, 'Daringbadi', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(113, 'Debagarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(114, 'Dhamanagar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(115, 'Dhenkanal', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(116, 'Digapahandi', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(117, 'Dungamal', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(118, 'Erei', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(119, 'Ganjam', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(120, 'Ghantapada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(121, 'Godiputamatiapara', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(122, 'Golabandha', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(123, 'Gopalpur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(124, 'Gotamara', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(125, 'Gudari', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(126, 'G. Udayagiri', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(127, 'Gunupur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(128, 'Hatibandha', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(129, 'Hinjilicut', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(130, 'Hirakud', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(131, 'Indipur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(132, 'Itamati', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(133, 'Jagatsinghapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(134, 'Jajanga', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(135, 'Jajapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(136, 'Jalda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(137, 'Jaleshwar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(138, 'Jashipur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(139, 'Jatani', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(140, 'Jeypur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(141, 'Jharsuguda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(142, 'Jhumpura', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(143, 'Joda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(144, 'Jorada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(145, 'Junagarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(146, 'Kabatabandha', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(147, 'Kabisurjyanagar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(148, 'Kaipadar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(149, 'Kalarangiata', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(150, 'Kaliapani', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(151, 'Kalyanasingpur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(152, 'Kamakshyanagar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(153, 'Kandasar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(154, 'Kanheipur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(155, 'Kantabanji', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(156, 'Kantilo', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(157, 'Karanjia', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(158, 'Kashinagar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(159, 'Kendrapara', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(160, 'Kendujhar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(161, 'Kesinga', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(162, 'Khaliapali', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(163, 'Khalikote', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(164, 'Khandapada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(165, 'Khariar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(166, 'Khariar Road', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(167, 'Khatiguda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(168, 'Khordha', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(169, 'Kochinda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(170, 'Kodala', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(171, 'Koida', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(172, 'Konark', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(173, 'Koraput', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(174, 'Kotpad', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(175, 'Krushnanandapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(176, 'Kuanrmunda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(177, 'Kukudakhandi', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(178, 'Kulad', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(179, 'Kullada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(180, 'Kunjabangarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(181, 'Kurumuli', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(182, 'Lalsingi', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(183, 'Lathikata', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(184, 'Lochapada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(185, 'Loisinga', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(186, 'Madanpur Rampur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(187, 'Majhihara', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(188, 'Makundapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(189, 'Malkangiri', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(190, 'Mohana', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(191, 'Mukhiguda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(192, 'Mundamarai', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(193, 'Nabarangapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(194, 'Nalco', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(195, 'Nayagarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(196, 'Nilagiri', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(197, 'Nimapada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(198, 'Nuahata', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(199, 'Nuapatna', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(200, 'Odagaon', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(201, 'Padmapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(202, 'Palalahada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(203, 'Palurgada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(204, 'Panposh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(205, 'Papadahandi', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(206, 'Paradip', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(207, 'Paradipgarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(208, 'Paralakhemundi', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(209, 'Pathar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(210, 'Patnagarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(211, 'Patrapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(212, 'Pattamundai', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(213, 'Phulabani (Phulbani)', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(214, 'Pipili', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(215, 'Pitala', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(216, 'Polasara', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(217, 'Pratapsasan', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(218, 'Puri', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(219, 'Purusottampur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(220, 'Raighar', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(221, 'Rairangpur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(222, 'Rajagangapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(223, 'Rajasunakhala', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(224, 'Rambha', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(225, 'Ramgarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(226, 'Ranapurgada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(227, 'Raurkela', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(228, 'Raurkela Industrial Township', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(229, 'Rayagada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(230, 'Rayagada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(231, 'Redhakhol', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(232, 'Remuna', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(233, 'Rengali', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(234, 'R. Udayagiri', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(235, 'Sambalpur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(236, 'Saranga', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(237, 'Sayadpur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(238, 'Sheragada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(239, 'Sohela', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(240, 'Sonapur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(241, 'Soro', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(242, 'Subalaya', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(243, 'Sunabeda', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(244, 'Sundargarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(245, 'Surada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(246, 'Surala', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(247, 'Suvani', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(248, 'Talcher', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(249, 'Tangi', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(250, 'Tarbha', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(251, 'Tensa', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(252, 'Tikarpada', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(253, 'Tipo', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(254, 'Titlagarh', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(255, 'Tushura', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(256, 'Udala', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(257, 'Umarkote', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(258, 'Venkatraipur', 17, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(16, 'Panchmahal', 2, 899, 899, sysdate, sysdate, 'PML', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(1, 'Mumbai', 1, 899, 899, sysdate, sysdate, 'MUM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(2, 'Pune', 1, 899, 899, sysdate, sysdate, 'PUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(3, 'Ahmedabad', 2, 899, 899, sysdate, sysdate, 'AHM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(15, 'Costa Del Sol', 6, 899, 899, sysdate, sysdate, 'CDS', 6);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(4, 'Rajkot', 2, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(6, 'Ajmer', 3, 899, 899, sysdate, sysdate, 'AJM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(8, 'Nashik', 1, 899, 899, sysdate, sysdate, 'NAS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(9, 'Vadodara', 2, 899, 899, sysdate, sysdate, 'VAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(5, 'Agra', 3, 899, 899, sysdate, sysdate, 'AGR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(7, 'Kochi', 11, 899, 899, sysdate, sysdate, 'KCH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(10, 'Alappuzha', 11, 899, 899, sysdate, sysdate, 'ALP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(11, 'Panaji', 10, 899, 899, sysdate, sysdate, 'PNJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(12, 'Mapusa', 10, 899, 899, sysdate, sysdate, 'MPS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(13, 'Gandhinagar', 2, 899, 899, sysdate, sysdate, 'GNG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(20, 'Amreli', 2, 899, 899, sysdate, sysdate, 'AMR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(21, 'Anand', 2, 899, 899, sysdate, sysdate, 'AND', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(22, 'Banas Kantha', 2, 899, 899, sysdate, sysdate, 'BNS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(23, 'Bharuch', 2, 899, 899, sysdate, sysdate, 'BRC', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(24, 'Bhaavnagar', 2, 899, 899, sysdate, sysdate, 'BNG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(25, 'Dohad (Dahod)', 2, 899, 899, sysdate, sysdate, 'DHD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(26, 'Jamnagar', 2, 899, 899, sysdate, sysdate, 'JMG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(27, 'Junagadh', 2, 899, 899, sysdate, sysdate, 'JNG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(28, 'Kachchh', 2, 899, 899, sysdate, sysdate, 'KCH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(29, 'Mehsana', 2, 899, 899, sysdate, sysdate, 'MHS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(30, 'Narmada', 2, 899, 899, sysdate, sysdate, 'NMD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(31, 'Navsari', 2, 899, 899, sysdate, sysdate, 'NVS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(32, 'Patan', 2, 899, 899, sysdate, sysdate, 'PTN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(33, 'Porbandar', 2, 899, 899, sysdate, sysdate, 'PBD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(34, 'Sabar Kantha', 2, 899, 899, sysdate, sysdate, 'SBK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(35, 'Surat', 2, 899, 899, sysdate, sysdate, 'SRT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(36, 'Tapi', 2, 899, 899, sysdate, sysdate, 'TPI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(37, 'The Dangs', 2, 899, 899, sysdate, sysdate, 'TDG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(38, 'Valsad', 2, 899, 899, sysdate, sysdate, 'VLS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(39, 'Raipur', 22, 899, 899, sysdate, sysdate, 'RPR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(40, 'Bhubaneswar', 17, 899, 899, sysdate, sysdate, 'BHU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(259, 'Nagpur', 1, 899, 899, sysdate, sysdate, NULL, 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(379, 'Bettiah', 27, 899, 899, sysdate, sysdate, 'BET', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(380, 'BhabUrban Agglomeration', 27, 899, 899, sysdate, sysdate, 'BHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(381, 'Bhagalpur', 27, 899, 899, sysdate, sysdate, 'BHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(382, 'Buxar', 27, 899, 899, sysdate, sysdate, 'BUX', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(383, 'Chhapra', 27, 899, 899, sysdate, sysdate, 'CHH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(384, 'Darbhanga', 27, 899, 899, sysdate, sysdate, 'DAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(385, 'Dehri-on-Sone', 27, 899, 899, sysdate, sysdate, 'DEH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(386, 'Dumraon', 27, 899, 899, sysdate, sysdate, 'DUM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(387, 'Forbesganj', 27, 899, 899, sysdate, sysdate, 'FOR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(388, 'Gaya', 27, 899, 899, sysdate, sysdate, 'GAY', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(389, 'Gopalganj', 27, 899, 899, sysdate, sysdate, 'GOP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(390, 'Hajipur', 27, 899, 899, sysdate, sysdate, 'HAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(391, 'Jamalpur', 27, 899, 899, sysdate, sysdate, 'JAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(392, 'Jamui', 27, 899, 899, sysdate, sysdate, 'JAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(393, 'Jehanabad', 27, 899, 899, sysdate, sysdate, 'JEH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(394, 'Katihar', 27, 899, 899, sysdate, sysdate, 'KAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(395, 'Kishanganj', 27, 899, 899, sysdate, sysdate, 'KIS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(396, 'Lakhisarai', 27, 899, 899, sysdate, sysdate, 'LAK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(397, 'Lalganj', 27, 899, 899, sysdate, sysdate, 'LAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(398, 'Madhepura', 27, 899, 899, sysdate, sysdate, 'MAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(399, 'Madhubani', 27, 899, 899, sysdate, sysdate, 'MAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(400, 'Maharajganj', 27, 899, 899, sysdate, sysdate, 'MAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(401, 'Mahnar Bazar', 27, 899, 899, sysdate, sysdate, 'MAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(402, 'Makhdumpur', 27, 899, 899, sysdate, sysdate, 'MAK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(403, 'Maner', 27, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(404, 'Manihari', 27, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(405, 'Marhaura', 27, 899, 899, sysdate, sysdate, 'MAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(406, 'Masaurhi', 27, 899, 899, sysdate, sysdate, 'MAS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(407, 'Mirganj', 27, 899, 899, sysdate, sysdate, 'MIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(408, 'Mokameh', 27, 899, 899, sysdate, sysdate, 'MOK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(409, 'Motihari', 27, 899, 899, sysdate, sysdate, 'MOT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(410, 'Motipur', 27, 899, 899, sysdate, sysdate, 'MOT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(411, 'Munger', 27, 899, 899, sysdate, sysdate, 'MUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(412, 'Murliganj', 27, 899, 899, sysdate, sysdate, 'MUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(413, 'Muzaffarpur', 27, 899, 899, sysdate, sysdate, 'MUZ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(414, 'Narkatiaganj', 27, 899, 899, sysdate, sysdate, 'NAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(415, 'Naugachhia', 27, 899, 899, sysdate, sysdate, 'NAU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(416, 'Nawada', 27, 899, 899, sysdate, sysdate, 'NAW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(417, 'Nokha', 27, 899, 899, sysdate, sysdate, 'NOK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(418, 'Patna', 27, 899, 899, sysdate, sysdate, 'PAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(419, 'Piro', 27, 899, 899, sysdate, sysdate, 'PIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(420, 'Purnia', 27, 899, 899, sysdate, sysdate, 'PUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(421, 'Rafiganj', 27, 899, 899, sysdate, sysdate, 'RAF', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(422, 'Rajgir', 27, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(423, 'Ramnagar', 27, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(424, 'Raxaul Bazar', 27, 899, 899, sysdate, sysdate, 'RAX', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(425, 'Revelganj', 27, 899, 899, sysdate, sysdate, 'REV', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(426, 'Rosera', 27, 899, 899, sysdate, sysdate, 'ROS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(427, 'Saharsa', 27, 899, 899, sysdate, sysdate, 'SAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(428, 'Samastipur', 27, 899, 899, sysdate, sysdate, 'SAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(429, 'Sasaram', 27, 899, 899, sysdate, sysdate, 'SAS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(430, 'Sheikhpura', 27, 899, 899, sysdate, sysdate, 'SHE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(431, 'Sheohar', 27, 899, 899, sysdate, sysdate, 'SHE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(432, 'Sherghati', 27, 899, 899, sysdate, sysdate, 'SHE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(433, 'Silao', 27, 899, 899, sysdate, sysdate, 'SIL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(434, 'Sitamarhi', 27, 899, 899, sysdate, sysdate, 'SIT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(435, 'Siwan', 27, 899, 899, sysdate, sysdate, 'SIW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(436, 'Sonepur', 27, 899, 899, sysdate, sysdate, 'SON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(437, 'Sugauli', 27, 899, 899, sysdate, sysdate, 'SUG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(438, 'Sultanganj', 27, 899, 899, sysdate, sysdate, 'SUL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(439, 'Supaul', 27, 899, 899, sysdate, sysdate, 'SUP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(440, 'Warisaliganj', 27, 899, 899, sysdate, sysdate, 'WAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(441, 'Chandigarh', 28, 899, 899, sysdate, sysdate, 'CHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(442, 'Silvassa', 29, 899, 899, sysdate, sysdate, 'SIL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(443, 'Bahadurgarh', 30, 899, 899, sysdate, sysdate, 'BAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(444, 'Bhiwani', 30, 899, 899, sysdate, sysdate, 'BHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(445, 'Charkhi Dadri', 30, 899, 899, sysdate, sysdate, 'CHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(446, 'Faridabad', 30, 899, 899, sysdate, sysdate, 'FAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(447, 'Fatehabad', 30, 899, 899, sysdate, sysdate, 'FAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(448, 'Gohana', 30, 899, 899, sysdate, sysdate, 'GOH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(449, 'Gurugram', 30, 899, 899, sysdate, sysdate, 'GUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(450, 'Hansi', 30, 899, 899, sysdate, sysdate, 'HAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(451, 'Hisar', 30, 899, 899, sysdate, sysdate, 'HIS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(452, 'Jind', 30, 899, 899, sysdate, sysdate, 'JIN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(453, 'Kaithal', 30, 899, 899, sysdate, sysdate, 'KAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(454, 'Karnal', 30, 899, 899, sysdate, sysdate, 'KAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(455, 'Ladwa', 30, 899, 899, sysdate, sysdate, 'LAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(456, 'Mahendragarh', 30, 899, 899, sysdate, sysdate, 'MAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(457, 'Mandi Dabwali', 30, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(458, 'Narnaul', 30, 899, 899, sysdate, sysdate, 'NAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(459, 'Narwana', 30, 899, 899, sysdate, sysdate, 'NAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(460, 'Palwal', 30, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(461, 'Panchkula', 30, 899, 899, sysdate, sysdate, 'PAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(462, 'Panipat', 30, 899, 899, sysdate, sysdate, 'PAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(463, 'Pehowa', 30, 899, 899, sysdate, sysdate, 'PEH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(464, 'Pinjore', 30, 899, 899, sysdate, sysdate, 'PIN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(465, 'Rania', 30, 899, 899, sysdate, sysdate, 'RAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(466, 'Ratia', 30, 899, 899, sysdate, sysdate, 'RAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(467, 'Rewari', 30, 899, 899, sysdate, sysdate, 'REW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(468, 'Rohtak', 30, 899, 899, sysdate, sysdate, 'ROH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(469, 'Safidon', 30, 899, 899, sysdate, sysdate, 'SAF', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(470, 'Samalkha', 30, 899, 899, sysdate, sysdate, 'SAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(471, 'Sarsod', 30, 899, 899, sysdate, sysdate, 'SAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(472, 'Shahbad', 30, 899, 899, sysdate, sysdate, 'SHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(473, 'Sirsa', 30, 899, 899, sysdate, sysdate, 'SIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(474, 'Sohna', 30, 899, 899, sysdate, sysdate, 'SOH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(475, 'Sonipat', 30, 899, 899, sysdate, sysdate, 'SON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(476, 'Taraori', 30, 899, 899, sysdate, sysdate, 'TAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(477, 'Thanesar', 30, 899, 899, sysdate, sysdate, 'THA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(478, 'Tohana', 30, 899, 899, sysdate, sysdate, 'TOH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(479, 'Yamunanagar', 30, 899, 899, sysdate, sysdate, 'YAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(480, 'Mandi', 31, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(481, 'Nahan', 31, 899, 899, sysdate, sysdate, 'NAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(482, 'Palampur', 31, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(483, 'Shimla', 31, 899, 899, sysdate, sysdate, 'SHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(484, 'Solan', 31, 899, 899, sysdate, sysdate, 'SOL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(485, 'Sundarnagar', 31, 899, 899, sysdate, sysdate, 'SUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(486, 'Anantnag', 32, 899, 899, sysdate, sysdate, 'ANA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(487, 'Baramula', 32, 899, 899, sysdate, sysdate, 'BAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(488, 'Jammu', 32, 899, 899, sysdate, sysdate, 'JAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(489, 'KathUrban Agglomeration', 32, 899, 899, sysdate, sysdate, 'KAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(490, 'Punch', 32, 899, 899, sysdate, sysdate, 'PUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(491, 'Rajauri', 32, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(492, 'Sopore', 32, 899, 899, sysdate, sysdate, 'SOP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(493, 'Srinagar', 32, 899, 899, sysdate, sysdate, 'SRI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(494, 'Udhampur', 32, 899, 899, sysdate, sysdate, 'UDH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(495, 'Adityapur', 33, 899, 899, sysdate, sysdate, 'ADI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(496, 'Bokaro Steel City', 33, 899, 899, sysdate, sysdate, 'BOK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(497, 'Chaibasa', 33, 899, 899, sysdate, sysdate, 'CHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(498, 'Chatra', 33, 899, 899, sysdate, sysdate, 'CHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(499, 'Chirkunda', 33, 899, 899, sysdate, sysdate, 'CHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(500, 'Deoghar', 33, 899, 899, sysdate, sysdate, 'DEO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(501, 'Dhanbad', 33, 899, 899, sysdate, sysdate, 'DHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(502, 'Dumka', 33, 899, 899, sysdate, sysdate, 'DUM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(503, 'Giridih', 33, 899, 899, sysdate, sysdate, 'GIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(504, 'Gumia', 33, 899, 899, sysdate, sysdate, 'GUM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(505, 'Hazaribag', 33, 899, 899, sysdate, sysdate, 'HAZ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(506, 'Jamshedpur', 33, 899, 899, sysdate, sysdate, 'JAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(507, 'Jhumri Tilaiya', 33, 899, 899, sysdate, sysdate, 'JHU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(508, 'Lohardaga', 33, 899, 899, sysdate, sysdate, 'LOH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(509, 'Madhupur', 33, 899, 899, sysdate, sysdate, 'MAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(510, 'Medininagar (Daltonganj)', 33, 899, 899, sysdate, sysdate, 'MED', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(511, 'Mihijam', 33, 899, 899, sysdate, sysdate, 'MIH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(512, 'Musabani', 33, 899, 899, sysdate, sysdate, 'MUS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(513, 'Pakaur', 33, 899, 899, sysdate, sysdate, 'PAK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(514, 'Patratu', 33, 899, 899, sysdate, sysdate, 'PAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(515, 'Phusro', 33, 899, 899, sysdate, sysdate, 'PHU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(516, 'Ramgarh', 33, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(517, 'Ranchi', 33, 899, 899, sysdate, sysdate, 'RAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(518, 'Sahibganj', 33, 899, 899, sysdate, sysdate, 'SAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(519, 'Saunda', 33, 899, 899, sysdate, sysdate, 'SAU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(520, 'Simdega', 33, 899, 899, sysdate, sysdate, 'SIM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(521, 'Tenu dam-cum-Kathhara', 33, 899, 899, sysdate, sysdate, 'TEN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(522, 'Alirajpur', 34, 899, 899, sysdate, sysdate, 'ALI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(523, 'Ashok Nagar', 34, 899, 899, sysdate, sysdate, 'ASH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(524, 'Balaghat', 34, 899, 899, sysdate, sysdate, 'BAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(525, 'Bhopal', 34, 899, 899, sysdate, sysdate, 'BHO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(526, 'Ganjbasoda', 34, 899, 899, sysdate, sysdate, 'GAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(527, 'Gwalior', 34, 899, 899, sysdate, sysdate, 'GWA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(528, 'Indore', 34, 899, 899, sysdate, sysdate, 'IND', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(529, 'Itarsi', 34, 899, 899, sysdate, sysdate, 'ITA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(530, 'Jabalpur', 34, 899, 899, sysdate, sysdate, 'JAB', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(531, 'Lahar', 34, 899, 899, sysdate, sysdate, 'LAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(532, 'Maharajpur', 34, 899, 899, sysdate, sysdate, 'MAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(533, 'Mahidpur', 34, 899, 899, sysdate, sysdate, 'MAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(534, 'Maihar', 34, 899, 899, sysdate, sysdate, 'MAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(535, 'Malaj Khand', 34, 899, 899, sysdate, sysdate, 'MAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(536, 'Manasa', 34, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(537, 'Manawar', 34, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(538, 'Mandideep', 34, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(539, 'Mandla', 34, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(540, 'Mandsaur', 34, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(541, 'Mauganj', 34, 899, 899, sysdate, sysdate, 'MAU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(542, 'Mhow Cantonment', 34, 899, 899, sysdate, sysdate, 'MHO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(543, 'Mhowgaon', 34, 899, 899, sysdate, sysdate, 'MHO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(544, 'Morena', 34, 899, 899, sysdate, sysdate, 'MOR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(545, 'Multai', 34, 899, 899, sysdate, sysdate, 'MUL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(546, 'Mundi', 34, 899, 899, sysdate, sysdate, 'MUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(547, 'Murwara (Katni)', 34, 899, 899, sysdate, sysdate, 'MUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(548, 'Nagda', 34, 899, 899, sysdate, sysdate, 'NAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(549, 'Nainpur', 34, 899, 899, sysdate, sysdate, 'NAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(550, 'Narsinghgarh', 34, 899, 899, sysdate, sysdate, 'NAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(551, 'Narsinghgarh', 34, 899, 899, sysdate, sysdate, 'NAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(552, 'Neemuch', 34, 899, 899, sysdate, sysdate, 'NEE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(553, 'Nepanagar', 34, 899, 899, sysdate, sysdate, 'NEP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(554, 'Niwari', 34, 899, 899, sysdate, sysdate, 'NIW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(555, 'Nowgong', 34, 899, 899, sysdate, sysdate, 'NOW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(556, 'Nowrozabad (Khodargama)', 34, 899, 899, sysdate, sysdate, 'NOW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(557, 'Pachore', 34, 899, 899, sysdate, sysdate, 'PAC', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(558, 'Pali', 34, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(559, 'Panagar', 34, 899, 899, sysdate, sysdate, 'PAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(560, 'Pandhurna', 34, 899, 899, sysdate, sysdate, 'PAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(561, 'Panna', 34, 899, 899, sysdate, sysdate, 'PAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(562, 'Pasan', 34, 899, 899, sysdate, sysdate, 'PAS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(563, 'Pipariya', 34, 899, 899, sysdate, sysdate, 'PIP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(564, 'Pithampur', 34, 899, 899, sysdate, sysdate, 'PIT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(565, 'Porsa', 34, 899, 899, sysdate, sysdate, 'POR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(566, 'Prithvipur', 34, 899, 899, sysdate, sysdate, 'PRI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(567, 'Raghogarh-Vijaypur', 34, 899, 899, sysdate, sysdate, 'RAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(568, 'Rahatgarh', 34, 899, 899, sysdate, sysdate, 'RAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(569, 'Raisen', 34, 899, 899, sysdate, sysdate, 'RAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(570, 'Rajgarh', 34, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(571, 'Ratlam', 34, 899, 899, sysdate, sysdate, 'RAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(572, 'Rau', 34, 899, 899, sysdate, sysdate, 'RAU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(573, 'Rehli', 34, 899, 899, sysdate, sysdate, 'REH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(574, 'Rewa', 34, 899, 899, sysdate, sysdate, 'REW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(575, 'Sabalgarh', 34, 899, 899, sysdate, sysdate, 'SAB', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(576, 'Sagar', 34, 899, 899, sysdate, sysdate, 'SAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(577, 'Sanawad', 34, 899, 899, sysdate, sysdate, 'SAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(578, 'Sarangpur', 34, 899, 899, sysdate, sysdate, 'SAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(579, 'Sarni', 34, 899, 899, sysdate, sysdate, 'SAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(580, 'Satna', 34, 899, 899, sysdate, sysdate, 'SAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(581, 'Sausar', 34, 899, 899, sysdate, sysdate, 'SAU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(582, 'Sehore', 34, 899, 899, sysdate, sysdate, 'SEH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(583, 'Sendhwa', 34, 899, 899, sysdate, sysdate, 'SEN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(584, 'Seoni', 34, 899, 899, sysdate, sysdate, 'SEO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(585, 'Seoni-Malwa', 34, 899, 899, sysdate, sysdate, 'SEO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(586, 'Shahdol', 34, 899, 899, sysdate, sysdate, 'SHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(587, 'Shajapur', 34, 899, 899, sysdate, sysdate, 'SHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(588, 'Shamgarh', 34, 899, 899, sysdate, sysdate, 'SHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(589, 'Sheopur', 34, 899, 899, sysdate, sysdate, 'SHE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(590, 'Shivpuri', 34, 899, 899, sysdate, sysdate, 'SHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(591, 'Shujalpur', 34, 899, 899, sysdate, sysdate, 'SHU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(592, 'Sidhi', 34, 899, 899, sysdate, sysdate, 'SID', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(593, 'Sihora', 34, 899, 899, sysdate, sysdate, 'SIH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(594, 'Singrauli', 34, 899, 899, sysdate, sysdate, 'SIN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(595, 'Sironj', 34, 899, 899, sysdate, sysdate, 'SIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(596, 'Sohagpur', 34, 899, 899, sysdate, sysdate, 'SOH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(597, 'Tarana', 34, 899, 899, sysdate, sysdate, 'TAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(598, 'Tikamgarh', 34, 899, 899, sysdate, sysdate, 'TIK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(599, 'Ujjain', 34, 899, 899, sysdate, sysdate, 'UJJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(600, 'Umaria', 34, 899, 899, sysdate, sysdate, 'UMA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(601, 'Vidisha', 34, 899, 899, sysdate, sysdate, 'VID', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(602, 'Vijaypur', 34, 899, 899, sysdate, sysdate, 'VIJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(603, 'Wara Seoni', 34, 899, 899, sysdate, sysdate, 'WAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(604, 'Imphal', 35, 899, 899, sysdate, sysdate, 'IMP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(605, 'Lilong', 35, 899, 899, sysdate, sysdate, 'LIL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(606, 'Mayang Imphal', 35, 899, 899, sysdate, sysdate, 'MAY', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(607, 'Thoubal', 35, 899, 899, sysdate, sysdate, 'THO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(608, 'Nongstoin', 36, 899, 899, sysdate, sysdate, 'NON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(609, 'Shillong', 36, 899, 899, sysdate, sysdate, 'SHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(610, 'Tura', 36, 899, 899, sysdate, sysdate, 'TUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(611, 'Aizawl', 37, 899, 899, sysdate, sysdate, 'AIZ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(612, 'Lunglei', 37, 899, 899, sysdate, sysdate, 'LUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(613, 'Saiha', 37, 899, 899, sysdate, sysdate, 'SAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(614, 'Dimapur', 38, 899, 899, sysdate, sysdate, 'DIM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(615, 'Kohima', 38, 899, 899, sysdate, sysdate, 'KOH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(616, 'Mokokchung', 38, 899, 899, sysdate, sysdate, 'MOK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(617, 'Tuensang', 38, 899, 899, sysdate, sysdate, 'TUE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(618, 'Wokha', 38, 899, 899, sysdate, sysdate, 'WOK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(619, 'Zunheboto', 38, 899, 899, sysdate, sysdate, 'ZUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(620, 'Karaikal', 39, 899, 899, sysdate, sysdate, 'KAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(260, 'Port Blair', 23, 899, 899, sysdate, sysdate, 'POR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(261, 'Adoni', 24, 899, 899, sysdate, sysdate, 'ADO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(262, 'Amalapuram', 24, 899, 899, sysdate, sysdate, 'AMA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(263, 'Anakapalle', 24, 899, 899, sysdate, sysdate, 'ANA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(264, 'Anantapur', 24, 899, 899, sysdate, sysdate, 'ANA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(265, 'Bapatla', 24, 899, 899, sysdate, sysdate, 'BAP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(266, 'Bheemunipatnam', 24, 899, 899, sysdate, sysdate, 'BHE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(267, 'Bhimavaram', 24, 899, 899, sysdate, sysdate, 'BHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(268, 'Bobbili', 24, 899, 899, sysdate, sysdate, 'BOB', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(269, 'Chilakaluripet', 24, 899, 899, sysdate, sysdate, 'CHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(270, 'Chirala', 24, 899, 899, sysdate, sysdate, 'CHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(271, 'Chittoor', 24, 899, 899, sysdate, sysdate, 'CHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(272, 'Dharmavaram', 24, 899, 899, sysdate, sysdate, 'DHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(273, 'Eluru', 24, 899, 899, sysdate, sysdate, 'ELU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(274, 'Gooty', 24, 899, 899, sysdate, sysdate, 'GOO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(275, 'Gudivada', 24, 899, 899, sysdate, sysdate, 'GUD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(276, 'Gudur', 24, 899, 899, sysdate, sysdate, 'GUD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(277, 'Guntakal', 24, 899, 899, sysdate, sysdate, 'GUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(278, 'Guntur', 24, 899, 899, sysdate, sysdate, 'GUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(279, 'Hindupur', 24, 899, 899, sysdate, sysdate, 'HIN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(280, 'Jaggaiahpet', 24, 899, 899, sysdate, sysdate, 'JAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(281, 'Jammalamadugu', 24, 899, 899, sysdate, sysdate, 'JAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(282, 'Kadapa', 24, 899, 899, sysdate, sysdate, 'KAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(283, 'Kadiri', 24, 899, 899, sysdate, sysdate, 'KAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(284, 'Kakinada', 24, 899, 899, sysdate, sysdate, 'KAK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(285, 'Kandukur', 24, 899, 899, sysdate, sysdate, 'KAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(286, 'Kavali', 24, 899, 899, sysdate, sysdate, 'KAV', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(287, 'Kovvur', 24, 899, 899, sysdate, sysdate, 'KOV', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(288, 'Kurnool', 24, 899, 899, sysdate, sysdate, 'KUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(289, 'Macherla', 24, 899, 899, sysdate, sysdate, 'MAC', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(290, 'Machilipatnam', 24, 899, 899, sysdate, sysdate, 'MAC', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(291, 'Madanapalle', 24, 899, 899, sysdate, sysdate, 'MAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(292, 'Mandapeta', 24, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(293, 'Markapur', 24, 899, 899, sysdate, sysdate, 'MAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(294, 'Nagari', 24, 899, 899, sysdate, sysdate, 'NAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(295, 'Naidupet', 24, 899, 899, sysdate, sysdate, 'NAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(296, 'Nandyal', 24, 899, 899, sysdate, sysdate, 'NAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(297, 'Narasapuram', 24, 899, 899, sysdate, sysdate, 'NAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(298, 'Narasaraopet', 24, 899, 899, sysdate, sysdate, 'NAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(299, 'Narsipatnam', 24, 899, 899, sysdate, sysdate, 'NAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(300, 'Nellore', 24, 899, 899, sysdate, sysdate, 'NEL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(301, 'Nidadavole', 24, 899, 899, sysdate, sysdate, 'NID', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(302, 'Nuzvid', 24, 899, 899, sysdate, sysdate, 'NUZ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(303, 'Ongole', 24, 899, 899, sysdate, sysdate, 'ONG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(304, 'Palacole', 24, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(305, 'Palasa Kasibugga', 24, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(306, 'Parvathipuram', 24, 899, 899, sysdate, sysdate, 'PAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(307, 'Pedana', 24, 899, 899, sysdate, sysdate, 'PED', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(308, 'Peddapuram', 24, 899, 899, sysdate, sysdate, 'PED', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(309, 'Pithapuram', 24, 899, 899, sysdate, sysdate, 'PIT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(310, 'Ponnur', 24, 899, 899, sysdate, sysdate, 'PON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(311, 'Proddatur', 24, 899, 899, sysdate, sysdate, 'PRO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(312, 'Punganur', 24, 899, 899, sysdate, sysdate, 'PUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(313, 'Puttur', 24, 899, 899, sysdate, sysdate, 'PUT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(314, 'Rajahmundry', 24, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(315, 'Rajam', 24, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(316, 'Rajampet', 24, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(317, 'Ramachandrapuram', 24, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(318, 'Rayachoti', 24, 899, 899, sysdate, sysdate, 'RAY', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(319, 'Rayadurg', 24, 899, 899, sysdate, sysdate, 'RAY', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(320, 'Renigunta', 24, 899, 899, sysdate, sysdate, 'REN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(321, 'Repalle', 24, 899, 899, sysdate, sysdate, 'REP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(322, 'Salur', 24, 899, 899, sysdate, sysdate, 'SAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(323, 'Samalkot', 24, 899, 899, sysdate, sysdate, 'SAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(324, 'Sattenapalle', 24, 899, 899, sysdate, sysdate, 'SAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(325, 'Srikakulam', 24, 899, 899, sysdate, sysdate, 'SRI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(326, 'Srikalahasti', 24, 899, 899, sysdate, sysdate, 'SRI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(327, 'Srisailam Project (Right Flank Colony) Township', 24, 899, 899, sysdate, sysdate, 'SRI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(328, 'Sullurpeta', 24, 899, 899, sysdate, sysdate, 'SUL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(329, 'Tadepalligudem', 24, 899, 899, sysdate, sysdate, 'TAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(330, 'Tadpatri', 24, 899, 899, sysdate, sysdate, 'TAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(331, 'Tanuku', 24, 899, 899, sysdate, sysdate, 'TAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(332, 'Tenali', 24, 899, 899, sysdate, sysdate, 'TEN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(333, 'Tirupati', 24, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(334, 'Tiruvuru', 24, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(335, 'Tuni', 24, 899, 899, sysdate, sysdate, 'TUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(336, 'Uravakonda', 24, 899, 899, sysdate, sysdate, 'URA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(337, 'Venkatagiri', 24, 899, 899, sysdate, sysdate, 'VEN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(338, 'Vijayawada', 24, 899, 899, sysdate, sysdate, 'VIJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(339, 'Vinukonda', 24, 899, 899, sysdate, sysdate, 'VIN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(340, 'Visakhapatnam', 24, 899, 899, sysdate, sysdate, 'VIS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(341, 'Vizianagaram', 24, 899, 899, sysdate, sysdate, 'VIZ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(342, 'Yemmiganur', 24, 899, 899, sysdate, sysdate, 'YEM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(343, 'Yerraguntla', 24, 899, 899, sysdate, sysdate, 'YER', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(344, 'Naharlagun', 25, 899, 899, sysdate, sysdate, 'NAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(345, 'Pasighat', 25, 899, 899, sysdate, sysdate, 'PAS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(346, 'Barpeta', 26, 899, 899, sysdate, sysdate, 'BAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(347, 'Bongaigaon City', 26, 899, 899, sysdate, sysdate, 'BON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(348, 'Dhubri', 26, 899, 899, sysdate, sysdate, 'DHU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(349, 'Dibrugarh', 26, 899, 899, sysdate, sysdate, 'DIB', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(350, 'Diphu', 26, 899, 899, sysdate, sysdate, 'DIP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(351, 'Goalpara', 26, 899, 899, sysdate, sysdate, 'GOA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(352, 'Guwahati', 26, 899, 899, sysdate, sysdate, 'GUW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(353, 'Jorhat', 26, 899, 899, sysdate, sysdate, 'JOR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(354, 'Karimganj', 26, 899, 899, sysdate, sysdate, 'KAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(355, 'Lanka', 26, 899, 899, sysdate, sysdate, 'LAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(356, 'Lumding', 26, 899, 899, sysdate, sysdate, 'LUM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(357, 'Mangaldoi', 26, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(358, 'Mankachar', 26, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(359, 'Margherita', 26, 899, 899, sysdate, sysdate, 'MAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(360, 'Mariani', 26, 899, 899, sysdate, sysdate, 'MAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(361, 'Marigaon', 26, 899, 899, sysdate, sysdate, 'MAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(362, 'Nagaon', 26, 899, 899, sysdate, sysdate, 'NAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(363, 'Nalbari', 26, 899, 899, sysdate, sysdate, 'NAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(364, 'North Lakhimpur', 26, 899, 899, sysdate, sysdate, 'NOR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(365, 'Rangia', 26, 899, 899, sysdate, sysdate, 'RAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(366, 'Sibsagar', 26, 899, 899, sysdate, sysdate, 'SIB', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(367, 'Silapathar', 26, 899, 899, sysdate, sysdate, 'SIL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(368, 'Silchar', 26, 899, 899, sysdate, sysdate, 'SIL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(369, 'Tezpur', 26, 899, 899, sysdate, sysdate, 'TEZ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(370, 'Tinsukia', 26, 899, 899, sysdate, sysdate, 'TIN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(371, 'Araria', 27, 899, 899, sysdate, sysdate, 'ARA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(372, 'Arrah', 27, 899, 899, sysdate, sysdate, 'ARR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(373, 'Arwal', 27, 899, 899, sysdate, sysdate, 'ARW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(374, 'Asarganj', 27, 899, 899, sysdate, sysdate, 'ASA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(375, 'Aurangabad', 27, 899, 899, sysdate, sysdate, 'AUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(376, 'Bagaha', 27, 899, 899, sysdate, sysdate, 'BAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(377, 'Barh', 27, 899, 899, sysdate, sysdate, 'BAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(378, 'Begusarai', 27, 899, 899, sysdate, sysdate, 'BEG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(621, 'Mahe', 39, 899, 899, sysdate, sysdate, 'MAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(622, 'Pondicherry', 39, 899, 899, sysdate, sysdate, 'PON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(623, 'Yanam', 39, 899, 899, sysdate, sysdate, 'YAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(624, 'Amritsar', 40, 899, 899, sysdate, sysdate, 'AMR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(625, 'Barnala', 40, 899, 899, sysdate, sysdate, 'BAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(626, 'Batala', 40, 899, 899, sysdate, sysdate, 'BAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(627, 'Bathinda', 40, 899, 899, sysdate, sysdate, 'BAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(628, 'Dhuri', 40, 899, 899, sysdate, sysdate, 'DHU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(629, 'Faridkot', 40, 899, 899, sysdate, sysdate, 'FAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(630, 'Fazilka', 40, 899, 899, sysdate, sysdate, 'FAZ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(631, 'Firozpur', 40, 899, 899, sysdate, sysdate, 'FIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(632, 'Firozpur Cantt.', 40, 899, 899, sysdate, sysdate, 'FIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(633, 'Gobindgarh', 40, 899, 899, sysdate, sysdate, 'GOB', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(634, 'Gurdaspur', 40, 899, 899, sysdate, sysdate, 'GUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(635, 'Hoshiarpur', 40, 899, 899, sysdate, sysdate, 'HOS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(636, 'Jagraon', 40, 899, 899, sysdate, sysdate, 'JAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(637, 'Jalandhar', 40, 899, 899, sysdate, sysdate, 'JAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(638, 'Jalandhar Cantt.', 40, 899, 899, sysdate, sysdate, 'JAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(639, 'Kapurthala', 40, 899, 899, sysdate, sysdate, 'KAP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(640, 'Khanna', 40, 899, 899, sysdate, sysdate, 'KHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(641, 'Kharar', 40, 899, 899, sysdate, sysdate, 'KHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(642, 'Kot Kapura', 40, 899, 899, sysdate, sysdate, 'KOT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(643, 'Longowal', 40, 899, 899, sysdate, sysdate, 'LON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(644, 'Ludhiana', 40, 899, 899, sysdate, sysdate, 'LUD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(645, 'Malerkotla', 40, 899, 899, sysdate, sysdate, 'MAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(646, 'Malout', 40, 899, 899, sysdate, sysdate, 'MAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(647, 'Mansa', 40, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(648, 'Moga', 40, 899, 899, sysdate, sysdate, 'MOG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(649, 'Mohali', 40, 899, 899, sysdate, sysdate, 'MOH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(650, 'Morinda, India', 40, 899, 899, sysdate, sysdate, 'MOR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(651, 'Mukerian', 40, 899, 899, sysdate, sysdate, 'MUK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(652, 'Muktsar', 40, 899, 899, sysdate, sysdate, 'MUK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(653, 'Nabha', 40, 899, 899, sysdate, sysdate, 'NAB', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(654, 'Nakodar', 40, 899, 899, sysdate, sysdate, 'NAK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(655, 'Nangal', 40, 899, 899, sysdate, sysdate, 'NAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(656, 'Nawanshahr', 40, 899, 899, sysdate, sysdate, 'NAW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(657, 'Pathankot', 40, 899, 899, sysdate, sysdate, 'PAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(658, 'Patiala', 40, 899, 899, sysdate, sysdate, 'PAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(659, 'Patti', 40, 899, 899, sysdate, sysdate, 'PAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(660, 'Pattran', 40, 899, 899, sysdate, sysdate, 'PAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(661, 'Phagwara', 40, 899, 899, sysdate, sysdate, 'PHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(662, 'Phillaur', 40, 899, 899, sysdate, sysdate, 'PHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(663, 'Qadian', 40, 899, 899, sysdate, sysdate, 'QAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(664, 'Raikot', 40, 899, 899, sysdate, sysdate, 'RAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(665, 'Rajpura', 40, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(666, 'Rampura Phul', 40, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(667, 'Rupnagar', 40, 899, 899, sysdate, sysdate, 'RUP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(668, 'Samana', 40, 899, 899, sysdate, sysdate, 'SAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(669, 'Sangrur', 40, 899, 899, sysdate, sysdate, 'SAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(670, 'Sirhind Fatehgarh Sahib', 40, 899, 899, sysdate, sysdate, 'SIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(671, 'Sujanpur', 40, 899, 899, sysdate, sysdate, 'SUJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(672, 'Sunam', 40, 899, 899, sysdate, sysdate, 'SUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(673, 'Talwara', 40, 899, 899, sysdate, sysdate, 'TAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(674, 'Tarn Taran', 40, 899, 899, sysdate, sysdate, 'TAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(675, 'Urmar Tanda', 40, 899, 899, sysdate, sysdate, 'URM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(676, 'Zira', 40, 899, 899, sysdate, sysdate, 'ZIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(677, 'Zirakpur', 40, 899, 899, sysdate, sysdate, 'ZIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(678, 'Ajmer', 41, 899, 899, sysdate, sysdate, 'AJM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(679, 'Alwar', 41, 899, 899, sysdate, sysdate, 'ALW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(680, 'Barmer', 41, 899, 899, sysdate, sysdate, 'BAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(681, 'Bharatpur', 41, 899, 899, sysdate, sysdate, 'BHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(682, 'Bhilwara', 41, 899, 899, sysdate, sysdate, 'BHI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(683, 'Bikaner', 41, 899, 899, sysdate, sysdate, 'BIK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(684, 'Jaipur', 41, 899, 899, sysdate, sysdate, 'JAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(685, 'Jodhpur', 41, 899, 899, sysdate, sysdate, 'JOD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(686, 'Lachhmangarh', 41, 899, 899, sysdate, sysdate, 'LAC', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(687, 'Ladnu', 41, 899, 899, sysdate, sysdate, 'LAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(688, 'Lakheri', 41, 899, 899, sysdate, sysdate, 'LAK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(689, 'Lalsot', 41, 899, 899, sysdate, sysdate, 'LAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(690, 'Losal', 41, 899, 899, sysdate, sysdate, 'LOS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(691, 'Makrana', 41, 899, 899, sysdate, sysdate, 'MAK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(692, 'Malpura', 41, 899, 899, sysdate, sysdate, 'MAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(693, 'Mandalgarh', 41, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(694, 'Mandawa', 41, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(695, 'Mangrol', 41, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(696, 'Merta City', 41, 899, 899, sysdate, sysdate, 'MER', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(697, 'Mount Abu', 41, 899, 899, sysdate, sysdate, 'MOU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(698, 'Nadbai', 41, 899, 899, sysdate, sysdate, 'NAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(699, 'Nagar', 41, 899, 899, sysdate, sysdate, 'NAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(700, 'Nagaur', 41, 899, 899, sysdate, sysdate, 'NAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(701, 'Nasirabad', 41, 899, 899, sysdate, sysdate, 'NAS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(702, 'Nathdwara', 41, 899, 899, sysdate, sysdate, 'NAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(703, 'Neem-Ka-Thana', 41, 899, 899, sysdate, sysdate, 'NEE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(704, 'Nimbahera', 41, 899, 899, sysdate, sysdate, 'NIM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(705, 'Nohar', 41, 899, 899, sysdate, sysdate, 'NOH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(706, 'Nokha', 41, 899, 899, sysdate, sysdate, 'NOK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(707, 'Pali', 41, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(708, 'Phalodi', 41, 899, 899, sysdate, sysdate, 'PHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(709, 'Phulera', 41, 899, 899, sysdate, sysdate, 'PHU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(710, 'Pilani', 41, 899, 899, sysdate, sysdate, 'PIL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(711, 'Pilibanga', 41, 899, 899, sysdate, sysdate, 'PIL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(712, 'Pindwara', 41, 899, 899, sysdate, sysdate, 'PIN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(713, 'Pipar City', 41, 899, 899, sysdate, sysdate, 'PIP', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(714, 'Prantij', 41, 899, 899, sysdate, sysdate, 'PRA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(715, 'Pratapgarh', 41, 899, 899, sysdate, sysdate, 'PRA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(716, 'Raisinghnagar', 41, 899, 899, sysdate, sysdate, 'RAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(717, 'Rajakhera', 41, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(718, 'Rajaldesar', 41, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(719, 'Rajgarh (Alwar)', 41, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(720, 'Rajgarh (Churu)', 41, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(721, 'Rajsamand', 41, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(722, 'Ramganj Mandi', 41, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(723, 'Ramngarh', 41, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(724, 'Ratangarh', 41, 899, 899, sysdate, sysdate, 'RAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(725, 'Rawatbhata', 41, 899, 899, sysdate, sysdate, 'RAW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(726, 'Rawatsar', 41, 899, 899, sysdate, sysdate, 'RAW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(727, 'Reengus', 41, 899, 899, sysdate, sysdate, 'REE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(728, 'Sadri', 41, 899, 899, sysdate, sysdate, 'SAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(729, 'Sadulpur', 41, 899, 899, sysdate, sysdate, 'SAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(730, 'Sadulshahar', 41, 899, 899, sysdate, sysdate, 'SAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(731, 'Sagwara', 41, 899, 899, sysdate, sysdate, 'SAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(732, 'Sambhar', 41, 899, 899, sysdate, sysdate, 'SAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(733, 'Sanchore', 41, 899, 899, sysdate, sysdate, 'SAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(734, 'Sangaria', 41, 899, 899, sysdate, sysdate, 'SAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(735, 'Sardarshahar', 41, 899, 899, sysdate, sysdate, 'SAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(736, 'Sawai Madhopur', 41, 899, 899, sysdate, sysdate, 'SAW', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(737, 'Shahpura', 41, 899, 899, sysdate, sysdate, 'SHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(738, 'Shahpura', 41, 899, 899, sysdate, sysdate, 'SHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(739, 'Sheoganj', 41, 899, 899, sysdate, sysdate, 'SHE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(740, 'Sikar', 41, 899, 899, sysdate, sysdate, 'SIK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(741, 'Sirohi', 41, 899, 899, sysdate, sysdate, 'SIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(742, 'Sojat', 41, 899, 899, sysdate, sysdate, 'SOJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(743, 'Sri Madhopur', 41, 899, 899, sysdate, sysdate, 'SRI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(744, 'Sujangarh', 41, 899, 899, sysdate, sysdate, 'SUJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(745, 'Sumerpur', 41, 899, 899, sysdate, sysdate, 'SUM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(746, 'Suratgarh', 41, 899, 899, sysdate, sysdate, 'SUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(747, 'Takhatgarh', 41, 899, 899, sysdate, sysdate, 'TAK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(748, 'Taranagar', 41, 899, 899, sysdate, sysdate, 'TAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(749, 'Todabhim', 41, 899, 899, sysdate, sysdate, 'TOD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(750, 'Todaraisingh', 41, 899, 899, sysdate, sysdate, 'TOD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(751, 'Tonk', 41, 899, 899, sysdate, sysdate, 'TON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(752, 'Udaipur', 41, 899, 899, sysdate, sysdate, 'UDA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(753, 'Udaipurwati', 41, 899, 899, sysdate, sysdate, 'UDA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(754, 'Vijainagar, Ajmer', 41, 899, 899, sysdate, sysdate, 'VIJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(755, 'Arakkonam', 42, 899, 899, sysdate, sysdate, 'ARA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(756, 'Aruppukkottai', 42, 899, 899, sysdate, sysdate, 'ARU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(757, 'Chennai', 42, 899, 899, sysdate, sysdate, 'CHE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(758, 'Coimbatore', 42, 899, 899, sysdate, sysdate, 'COI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(759, 'Erode', 42, 899, 899, sysdate, sysdate, 'ERO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(760, 'Gobichettipalayam', 42, 899, 899, sysdate, sysdate, 'GOB', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(761, 'Kancheepuram', 42, 899, 899, sysdate, sysdate, 'KAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(762, 'Karur', 42, 899, 899, sysdate, sysdate, 'KAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(763, 'Lalgudi', 42, 899, 899, sysdate, sysdate, 'LAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(764, 'Madurai', 42, 899, 899, sysdate, sysdate, 'MAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(765, 'Manachanallur', 42, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(766, 'Nagapattinam', 42, 899, 899, sysdate, sysdate, 'NAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(767, 'Nagercoil', 42, 899, 899, sysdate, sysdate, 'NAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(768, 'Namagiripettai', 42, 899, 899, sysdate, sysdate, 'NAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(769, 'Namakkal', 42, 899, 899, sysdate, sysdate, 'NAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(770, 'Nandivaram-Guduvancheri', 42, 899, 899, sysdate, sysdate, 'NAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(771, 'Nanjikottai', 42, 899, 899, sysdate, sysdate, 'NAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(772, 'Natham', 42, 899, 899, sysdate, sysdate, 'NAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(773, 'Nellikuppam', 42, 899, 899, sysdate, sysdate, 'NEL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(774, 'Neyveli (TS)', 42, 899, 899, sysdate, sysdate, 'NEY', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(775, 'O'' Valley', 42, 899, 899, sysdate, sysdate, 'O'' ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(776, 'Oddanchatram', 42, 899, 899, sysdate, sysdate, 'ODD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(777, 'P.N.Patti', 42, 899, 899, sysdate, sysdate, 'P.N', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(778, 'Pacode', 42, 899, 899, sysdate, sysdate, 'PAC', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(779, 'Padmanabhapuram', 42, 899, 899, sysdate, sysdate, 'PAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(780, 'Palani', 42, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(781, 'Palladam', 42, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(782, 'Pallapatti', 42, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(783, 'Pallikonda', 42, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(784, 'Panagudi', 42, 899, 899, sysdate, sysdate, 'PAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(785, 'Panruti', 42, 899, 899, sysdate, sysdate, 'PAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(786, 'Paramakudi', 42, 899, 899, sysdate, sysdate, 'PAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(787, 'Parangipettai', 42, 899, 899, sysdate, sysdate, 'PAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(788, 'Pattukkottai', 42, 899, 899, sysdate, sysdate, 'PAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(789, 'Perambalur', 42, 899, 899, sysdate, sysdate, 'PER', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(790, 'Peravurani', 42, 899, 899, sysdate, sysdate, 'PER', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(791, 'Periyakulam', 42, 899, 899, sysdate, sysdate, 'PER', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(792, 'Periyasemur', 42, 899, 899, sysdate, sysdate, 'PER', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(793, 'Pernampattu', 42, 899, 899, sysdate, sysdate, 'PER', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(794, 'Pollachi', 42, 899, 899, sysdate, sysdate, 'POL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(795, 'Polur', 42, 899, 899, sysdate, sysdate, 'POL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(796, 'Ponneri', 42, 899, 899, sysdate, sysdate, 'PON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(797, 'Pudukkottai', 42, 899, 899, sysdate, sysdate, 'PUD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(798, 'Pudupattinam', 42, 899, 899, sysdate, sysdate, 'PUD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(799, 'Puliyankudi', 42, 899, 899, sysdate, sysdate, 'PUL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(800, 'Punjaipugalur', 42, 899, 899, sysdate, sysdate, 'PUN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(801, 'Rajapalayam', 42, 899, 899, sysdate, sysdate, 'RAJ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(802, 'Ramanathapuram', 42, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(803, 'Rameshwaram', 42, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(804, 'Ranipet', 42, 899, 899, sysdate, sysdate, 'RAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(805, 'Rasipuram', 42, 899, 899, sysdate, sysdate, 'RAS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(806, 'Salem', 42, 899, 899, sysdate, sysdate, 'SAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(807, 'Sankarankovil', 42, 899, 899, sysdate, sysdate, 'SAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(808, 'Sankari', 42, 899, 899, sysdate, sysdate, 'SAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(809, 'Sathyamangalam', 42, 899, 899, sysdate, sysdate, 'SAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(810, 'Sattur', 42, 899, 899, sysdate, sysdate, 'SAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(811, 'Shenkottai', 42, 899, 899, sysdate, sysdate, 'SHE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(812, 'Sholavandan', 42, 899, 899, sysdate, sysdate, 'SHO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(813, 'Sholingur', 42, 899, 899, sysdate, sysdate, 'SHO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(814, 'Sirkali', 42, 899, 899, sysdate, sysdate, 'SIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(815, 'Sivaganga', 42, 899, 899, sysdate, sysdate, 'SIV', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(816, 'Sivagiri', 42, 899, 899, sysdate, sysdate, 'SIV', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(817, 'Sivakasi', 42, 899, 899, sysdate, sysdate, 'SIV', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(818, 'Srivilliputhur', 42, 899, 899, sysdate, sysdate, 'SRI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(819, 'Surandai', 42, 899, 899, sysdate, sysdate, 'SUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(820, 'Suriyampalayam', 42, 899, 899, sysdate, sysdate, 'SUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(821, 'Tenkasi', 42, 899, 899, sysdate, sysdate, 'TEN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(822, 'Thammampatti', 42, 899, 899, sysdate, sysdate, 'THA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(823, 'Thanjavur', 42, 899, 899, sysdate, sysdate, 'THA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(824, 'Tharamangalam', 42, 899, 899, sysdate, sysdate, 'THA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(825, 'Tharangambadi', 42, 899, 899, sysdate, sysdate, 'THA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(826, 'Theni Allinagaram', 42, 899, 899, sysdate, sysdate, 'THE', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(827, 'Thirumangalam', 42, 899, 899, sysdate, sysdate, 'THI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(828, 'Thirupuvanam', 42, 899, 899, sysdate, sysdate, 'THI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(829, 'Thiruthuraipoondi', 42, 899, 899, sysdate, sysdate, 'THI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(830, 'Thiruvallur', 42, 899, 899, sysdate, sysdate, 'THI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(831, 'Thiruvarur', 42, 899, 899, sysdate, sysdate, 'THI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(832, 'Thuraiyur', 42, 899, 899, sysdate, sysdate, 'THU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(833, 'Tindivanam', 42, 899, 899, sysdate, sysdate, 'TIN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(834, 'Tiruchendur', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(835, 'Tiruchengode', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(836, 'Tiruchirappalli', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(837, 'Tirukalukundram', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(838, 'Tirukkoyilur', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(839, 'Tirunelveli', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(840, 'Tirupathur', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(841, 'Tirupathur', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(842, 'Tiruppur', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(843, 'Tiruttani', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(844, 'Tiruvannamalai', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(845, 'Tiruvethipuram', 42, 899, 899, sysdate, sysdate, 'TIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(846, 'Tittakudi', 42, 899, 899, sysdate, sysdate, 'TIT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(847, 'Udhagamandalam', 42, 899, 899, sysdate, sysdate, 'UDH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(848, 'Udumalaipettai', 42, 899, 899, sysdate, sysdate, 'UDU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(849, 'Unnamalaikadai', 42, 899, 899, sysdate, sysdate, 'UNN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(850, 'Usilampatti', 42, 899, 899, sysdate, sysdate, 'USI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(851, 'Uthamapalayam', 42, 899, 899, sysdate, sysdate, 'UTH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(852, 'Uthiramerur', 42, 899, 899, sysdate, sysdate, 'UTH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(853, 'Vadakkuvalliyur', 42, 899, 899, sysdate, sysdate, 'VAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(854, 'Vadalur', 42, 899, 899, sysdate, sysdate, 'VAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(855, 'Vadipatti', 42, 899, 899, sysdate, sysdate, 'VAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(856, 'Valparai', 42, 899, 899, sysdate, sysdate, 'VAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(857, 'Vandavasi', 42, 899, 899, sysdate, sysdate, 'VAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(858, 'Vaniyambadi', 42, 899, 899, sysdate, sysdate, 'VAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(859, 'Vedaranyam', 42, 899, 899, sysdate, sysdate, 'VED', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(860, 'Vellakoil', 42, 899, 899, sysdate, sysdate, 'VEL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(861, 'Vellore', 42, 899, 899, sysdate, sysdate, 'VEL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(862, 'Vikramasingapuram', 42, 899, 899, sysdate, sysdate, 'VIK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(863, 'Viluppuram', 42, 899, 899, sysdate, sysdate, 'VIL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(864, 'Virudhachalam', 42, 899, 899, sysdate, sysdate, 'VIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(865, 'Virudhunagar', 42, 899, 899, sysdate, sysdate, 'VIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(866, 'Viswanatham', 42, 899, 899, sysdate, sysdate, 'VIS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(867, 'Adilabad', 43, 899, 899, sysdate, sysdate, 'ADI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(868, 'Bellampalle', 43, 899, 899, sysdate, sysdate, 'BEL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(869, 'Bhadrachalam', 43, 899, 899, sysdate, sysdate, 'BHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(870, 'Bhainsa', 43, 899, 899, sysdate, sysdate, 'BHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(871, 'Bhongir', 43, 899, 899, sysdate, sysdate, 'BHO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(872, 'Bodhan', 43, 899, 899, sysdate, sysdate, 'BOD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(873, 'Farooqnagar', 43, 899, 899, sysdate, sysdate, 'FAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(874, 'Gadwal', 43, 899, 899, sysdate, sysdate, 'GAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(875, 'Hyderabad', 43, 899, 899, sysdate, sysdate, 'HYD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(876, 'Jagtial', 43, 899, 899, sysdate, sysdate, 'JAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(877, 'Jangaon', 43, 899, 899, sysdate, sysdate, 'JAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(878, 'Kagaznagar', 43, 899, 899, sysdate, sysdate, 'KAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(879, 'Kamareddy', 43, 899, 899, sysdate, sysdate, 'KAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(880, 'Karimnagar', 43, 899, 899, sysdate, sysdate, 'KAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(881, 'Khammam', 43, 899, 899, sysdate, sysdate, 'KHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(882, 'Koratla', 43, 899, 899, sysdate, sysdate, 'KOR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(883, 'Kothagudem', 43, 899, 899, sysdate, sysdate, 'KOT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(884, 'Kyathampalle', 43, 899, 899, sysdate, sysdate, 'KYA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(885, 'Mahbubnagar', 43, 899, 899, sysdate, sysdate, 'MAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(886, 'Mancherial', 43, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(887, 'Mandamarri', 43, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(888, 'Manuguru', 43, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(889, 'Medak', 43, 899, 899, sysdate, sysdate, 'MED', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(890, 'Miryalaguda', 43, 899, 899, sysdate, sysdate, 'MIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(891, 'Nagarkurnool', 43, 899, 899, sysdate, sysdate, 'NAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(892, 'Narayanpet', 43, 899, 899, sysdate, sysdate, 'NAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(893, 'Nirmal', 43, 899, 899, sysdate, sysdate, 'NIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(894, 'Nizamabad', 43, 899, 899, sysdate, sysdate, 'NIZ', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(895, 'Palwancha', 43, 899, 899, sysdate, sysdate, 'PAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(896, 'Ramagundam', 43, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(897, 'Sadasivpet', 43, 899, 899, sysdate, sysdate, 'SAD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(898, 'Sangareddy', 43, 899, 899, sysdate, sysdate, 'SAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(899, 'Siddipet', 43, 899, 899, sysdate, sysdate, 'SID', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(900, 'Sircilla', 43, 899, 899, sysdate, sysdate, 'SIR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(901, 'Suryapet', 43, 899, 899, sysdate, sysdate, 'SUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(902, 'Tandur', 43, 899, 899, sysdate, sysdate, 'TAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(903, 'Vikarabad', 43, 899, 899, sysdate, sysdate, 'VIK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(904, 'Wanaparthy', 43, 899, 899, sysdate, sysdate, 'WAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(905, 'Warangal', 43, 899, 899, sysdate, sysdate, 'WAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(906, 'Yellandu', 43, 899, 899, sysdate, sysdate, 'YEL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(907, 'Agartala', 44, 899, 899, sysdate, sysdate, 'AGA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(908, 'Belonia', 44, 899, 899, sysdate, sysdate, 'BEL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(909, 'Dharmanagar', 44, 899, 899, sysdate, sysdate, 'DHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(910, 'Kailasahar', 44, 899, 899, sysdate, sysdate, 'KAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(911, 'Khowai', 44, 899, 899, sysdate, sysdate, 'KHO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(912, 'Pratapgarh', 44, 899, 899, sysdate, sysdate, 'PRA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(913, 'Udaipur', 44, 899, 899, sysdate, sysdate, 'UDA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(914, 'Bageshwar', 45, 899, 899, sysdate, sysdate, 'BAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(915, 'Dehradun', 45, 899, 899, sysdate, sysdate, 'DEH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(916, 'Haldwani-cum-Kathgodam', 45, 899, 899, sysdate, sysdate, 'HAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(917, 'Hardwar', 45, 899, 899, sysdate, sysdate, 'HAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(918, 'Kashipur', 45, 899, 899, sysdate, sysdate, 'KAS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(919, 'Manglaur', 45, 899, 899, sysdate, sysdate, 'MAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(920, 'Mussoorie', 45, 899, 899, sysdate, sysdate, 'MUS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(921, 'Nagla', 45, 899, 899, sysdate, sysdate, 'NAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(922, 'Nainital', 45, 899, 899, sysdate, sysdate, 'NAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(923, 'Pauri', 45, 899, 899, sysdate, sysdate, 'PAU', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(924, 'Pithoragarh', 45, 899, 899, sysdate, sysdate, 'PIT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(925, 'Ramnagar', 45, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(926, 'Rishikesh', 45, 899, 899, sysdate, sysdate, 'RIS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(927, 'Roorkee', 45, 899, 899, sysdate, sysdate, 'ROO', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(928, 'Rudrapur', 45, 899, 899, sysdate, sysdate, 'RUD', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(929, 'Sitarganj', 45, 899, 899, sysdate, sysdate, 'SIT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(930, 'Srinagar', 45, 899, 899, sysdate, sysdate, 'SRI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(931, 'Tehri', 45, 899, 899, sysdate, sysdate, 'TEH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(932, 'Adra', 46, 899, 899, sysdate, sysdate, 'ADR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(933, 'AlipurdUrban Agglomerationr', 46, 899, 899, sysdate, sysdate, 'ALI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(934, 'Arambagh', 46, 899, 899, sysdate, sysdate, 'ARA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(935, 'Asansol', 46, 899, 899, sysdate, sysdate, 'ASA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(936, 'Baharampur', 46, 899, 899, sysdate, sysdate, 'BAH', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(937, 'Balurghat', 46, 899, 899, sysdate, sysdate, 'BAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(938, 'Bankura', 46, 899, 899, sysdate, sysdate, 'BAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(939, 'Darjiling', 46, 899, 899, sysdate, sysdate, 'DAR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(940, 'English Bazar', 46, 899, 899, sysdate, sysdate, 'ENG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(941, 'Gangarampur', 46, 899, 899, sysdate, sysdate, 'GAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(942, 'Habra', 46, 899, 899, sysdate, sysdate, 'HAB', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(943, 'Hugli-Chinsurah', 46, 899, 899, sysdate, sysdate, 'HUG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(944, 'Jalpaiguri', 46, 899, 899, sysdate, sysdate, 'JAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(945, 'Jhargram', 46, 899, 899, sysdate, sysdate, 'JHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(946, 'Kalimpong', 46, 899, 899, sysdate, sysdate, 'KAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(947, 'Kharagpur', 46, 899, 899, sysdate, sysdate, 'KHA', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(948, 'Kolkata', 46, 899, 899, sysdate, sysdate, 'KOL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(949, 'Mainaguri', 46, 899, 899, sysdate, sysdate, 'MAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(950, 'Malda', 46, 899, 899, sysdate, sysdate, 'MAL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(951, 'Mathabhanga', 46, 899, 899, sysdate, sysdate, 'MAT', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(952, 'Medinipur', 46, 899, 899, sysdate, sysdate, 'MED', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(953, 'Memari', 46, 899, 899, sysdate, sysdate, 'MEM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(954, 'Monoharpur', 46, 899, 899, sysdate, sysdate, 'MON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(955, 'Murshidabad', 46, 899, 899, sysdate, sysdate, 'MUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(956, 'Nabadwip', 46, 899, 899, sysdate, sysdate, 'NAB', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(957, 'Naihati', 46, 899, 899, sysdate, sysdate, 'NAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(958, 'Panchla', 46, 899, 899, sysdate, sysdate, 'PAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(959, 'PandUrban Agglomeration', 46, 899, 899, sysdate, sysdate, 'PAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(960, 'Paschim Punropara', 46, 899, 899, sysdate, sysdate, 'PAS', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(961, 'Purulia', 46, 899, 899, sysdate, sysdate, 'PUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(962, 'Raghunathganj', 46, 899, 899, sysdate, sysdate, 'RAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(963, 'Raghunathpur', 46, 899, 899, sysdate, sysdate, 'RAG', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(964, 'Raiganj', 46, 899, 899, sysdate, sysdate, 'RAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(965, 'Rampurhat', 46, 899, 899, sysdate, sysdate, 'RAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(966, 'Ranaghat', 46, 899, 899, sysdate, sysdate, 'RAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(967, 'Sainthia', 46, 899, 899, sysdate, sysdate, 'SAI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(968, 'Santipur', 46, 899, 899, sysdate, sysdate, 'SAN', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(969, 'Siliguri', 46, 899, 899, sysdate, sysdate, 'SIL', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(970, 'Sonamukhi', 46, 899, 899, sysdate, sysdate, 'SON', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(971, 'Srirampore', 46, 899, 899, sysdate, sysdate, 'SRI', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(972, 'Suri', 46, 899, 899, sysdate, sysdate, 'SUR', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(973, 'Taki', 46, 899, 899, sysdate, sysdate, 'TAK', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(974, 'Tamluk', 46, 899, 899, sysdate, sysdate, 'TAM', 1);
INSERT INTO city_master
(id, "name", state_id, created_by, updated_by, created_date, updated_date, code, country_id)
VALUES(975, 'Tarakeswar', 46, 899, 899, sysdate, sysdate, 'TAR', 1);



INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(1, 'Afghanistan', 'Kabul', 'Afghanistan Afghani', 'AFN');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(2, 'Albania', 'Tirana', 'Albanian Lek', 'ALL');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(3, 'Algeria', 'Algiers', 'Algerian Dinar', 'DZD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(4, 'American Samoa', 'Pago Pago', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(5, 'Andorra', 'Andorra', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(6, 'Angola', 'Luanda', 'Angolan Kwanza', 'AOA');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(7, 'Anguilla', 'The Valley', 'East Caribbean Dollar', 'XCD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(8, 'Antarctica', 'None', 'East Caribbean Dollar', 'XCD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(9, 'Antigua and Barbuda', 'St. Johns', 'East Caribbean Dollar', 'XCD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(10, 'Argentina', 'Buenos Aires', 'Argentine Peso', 'ARS');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(11, 'Armenia', 'Yerevan', 'Armenian Dram', 'AMD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(12, 'Aruba', 'Oranjestad', 'Aruban Guilder', 'AWG');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(13, 'Australia', 'Canberra', 'Australian Dollar', 'AUD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(14, 'Austria', 'Vienna', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(15, 'Azerbaijan', 'Baku', 'Azerbaijan New Manat', 'AZN');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(16, 'Bahamas', 'Nassau', 'Bahamian Dollar', 'BSD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(17, 'Bahrain', 'Al-Manamah', 'Bahraini Dinar', 'BHD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(18, 'Bangladesh', 'Dhaka', 'Bangladeshi Taka', 'BDT');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(19, 'Barbados', 'Bridgetown', 'Barbados Dollar', 'BBD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(20, 'Belarus', 'Minsk', 'Belarussian Ruble', 'BYR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(21, 'Belgium', 'Brussels', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(22, 'Belize', 'Belmopan', 'Belize Dollar', 'BZD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(23, 'Benin', 'Porto-Novo', 'CFA Franc BCEAO', 'XOF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(24, 'Bermuda', 'Hamilton', 'Bermudian Dollar', 'BMD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(25, 'Bhutan', 'Thimphu', 'Bhutan Ngultrum', 'BTN');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(26, 'Bolivia', 'La Paz', 'Boliviano', 'BOB');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(27, 'Bosnia-Herzegovina', 'Sarajevo', 'Marka', 'BAM');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(28, 'Botswana', 'Gaborone', 'Botswana Pula', 'BWP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(29, 'Bouvet Island', 'None', 'Norwegian Krone', 'NOK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(30, 'Brazil', 'Brasilia', 'Brazilian Real', 'BRL');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(31, 'British Indian Ocean Territory', 'None', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(32, 'Brunei Darussalam', 'Bandar Seri Begawan', 'Brunei Dollar', 'BND');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(33, 'Bulgaria', 'Sofia', 'Bulgarian Lev', 'BGN');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(34, 'Burkina Faso', 'Ouagadougou', 'CFA Franc BCEAO', 'XOF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(35, 'Burundi', 'Bujumbura', 'Burundi Franc', 'BIF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(36, 'Cambodia', 'Phnom Penh', 'Kampuchean Riel', 'KHR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(37, 'Cameroon', 'Yaounde', 'CFA Franc BEAC', 'XAF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(38, 'Canada', 'Ottawa', 'Canadian Dollar', 'CAD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(39, 'Cape Verde', 'Praia', 'Cape Verde Escudo', 'CVE');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(40, 'Cayman Islands', 'Georgetown', 'Cayman Islands Dollar', 'KYD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(41, 'Central African Republic', 'Bangui', 'CFA Franc BEAC', 'XAF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(42, 'Chad', 'N''Djamena', 'CFA Franc BEAC', 'XAF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(43, 'Chile', 'Santiago', 'Chilean Peso', 'CLP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(44, 'China', 'Beijing', 'Yuan Renminbi', 'CNY');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(45, 'Christmas Island', 'The Settlement', 'Australian Dollar', 'AUD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(46, 'Cocos (Keeling) Islands', 'West Island', 'Australian Dollar', 'AUD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(47, 'Colombia', 'Bogota', 'Colombian Peso', 'COP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(48, 'Comoros', 'Moroni', 'Comoros Franc', 'KMF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(49, 'Congo', 'Brazzaville', 'CFA Franc BEAC', 'XAF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(50, 'Congo, Dem. Republic', 'Kinshasa', 'Francs', 'CDF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(51, 'Cook Islands', 'Avarua', 'New Zealand Dollar', 'NZD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(52, 'Costa Rica', 'San Jose', 'Costa Rican Colon', 'CRC');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(53, 'Croatia', 'Zagreb', 'Croatian Kuna', 'HRK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(54, 'Cuba', 'Havana', 'Cuban Peso', 'CUP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(55, 'Cyprus', 'Nicosia', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(56, 'Czech Rep.', 'Prague', 'Czech Koruna', 'CZK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(57, 'Denmark', 'Copenhagen', 'Danish Krone', 'DKK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(58, 'Djibouti', 'Djibouti', 'Djibouti Franc', 'DJF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(59, 'Dominica', 'Roseau', 'East Caribbean Dollar', 'XCD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(60, 'Dominican Republic', 'Santo Domingo', 'Dominican Peso', 'DOP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(61, 'Ecuador', 'Quito', 'Ecuador Sucre', 'ECS');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(62, 'Egypt', 'Cairo', 'Egyptian Pound', 'EGP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(63, 'El Salvador', 'San Salvador', 'El Salvador Colon', 'SVC');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(64, 'Equatorial Guinea', 'Malabo', 'CFA Franc BEAC', 'XAF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(65, 'Eritrea', 'Asmara', 'Eritrean Nakfa', 'ERN');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(66, 'Estonia', 'Tallinn', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(67, 'Ethiopia', 'Addis Ababa', 'Ethiopian Birr', 'ETB');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(68, 'European Union', 'Brussels', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(69, 'Falkland Islands (Malvinas)', 'Stanley', 'Falkland Islands Pound', 'FKP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(70, 'Faroe Islands', 'Torshavn', 'Danish Krone', 'DKK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(71, 'Fiji', 'Suva', 'Fiji Dollar', 'FJD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(72, 'Finland', 'Helsinki', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(73, 'France', 'Paris', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(74, 'French Guiana', 'Cayenne', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(75, 'French Southern Territories', 'None', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(76, 'Gabon', 'Libreville', 'CFA Franc BEAC', 'XAF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(77, 'Gambia', 'Banjul', 'Gambian Dalasi', 'GMD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(78, 'Georgia', 'Tbilisi', 'Georgian Lari', 'GEL');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(79, 'Germany', 'Berlin', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(80, 'Ghana', 'Accra', 'Ghanaian Cedi', 'GHS');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(81, 'Gibraltar', 'Gibraltar', 'Gibraltar Pound', 'GIP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(82, 'Great Britain', 'London', 'Pound Sterling', 'GBP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(83, 'Greece', 'Athens', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(84, 'Greenland', 'Godthab', 'Danish Krone', 'DKK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(85, 'Grenada', 'St. George''s', 'East Carribean Dollar', 'XCD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(86, 'Guadeloupe (French)', 'Basse-Terre', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(87, 'Guam (USA)', 'Agana', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(88, 'Guatemala', 'Guatemala City', 'Guatemalan Quetzal', 'QTQ');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(89, 'Guernsey', 'St. Peter Port', 'Pound Sterling', 'GGP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(90, 'Guinea', 'Conakry', 'Guinea Franc', 'GNF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(91, 'Guinea Bissau', 'Bissau', 'Guinea-Bissau Peso', 'GWP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(92, 'Guyana', 'Georgetown', 'Guyana Dollar', 'GYD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(93, 'Haiti', 'Port-au-Prince', 'Haitian Gourde', 'HTG');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(94, 'Heard Island and McDonald Islands', 'None', 'Australian Dollar', 'AUD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(95, 'Honduras', 'Tegucigalpa', 'Honduran Lempira', 'HNL');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(96, 'Hong Kong', 'Victoria', 'Hong Kong Dollar', 'HKD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(97, 'Hungary', 'Budapest', 'Hungarian Forint', 'HUF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(98, 'Iceland', 'Reykjavik', 'Iceland Krona', 'ISK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(99, 'India', 'New Delhi', 'Indian Rupee', 'INR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(100, 'Indonesia', 'Jakarta', 'Indonesian Rupiah', 'IDR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(101, 'International', NULL, NULL, NULL);
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(102, 'Iran', 'Tehran', 'Iranian Rial', 'IRR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(103, 'Iraq', 'Baghdad', 'Iraqi Dinar', 'IQD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(104, 'Ireland', 'Dublin', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(105, 'Isle of Man', 'Douglas', 'Pound Sterling', 'GBP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(106, 'Israel', 'Jerusalem', 'Israeli New Shekel', 'ILS');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(107, 'Italy', 'Rome', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(108, 'Ivory Coast', 'Abidjan', 'CFA Franc BCEAO', 'XOF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(109, 'Jamaica', 'Kingston', 'Jamaican Dollar', 'JMD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(110, 'Japan', 'Tokyo', 'Japanese Yen', 'JPY');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(111, 'Jersey', 'Saint Helier', 'Pound Sterling', 'GBP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(112, 'Jordan', 'Amman', 'Jordanian Dinar', 'JOD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(113, 'Kazakhstan', 'Astana', 'Kazakhstan Tenge', 'KZT');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(114, 'Kenya', 'Nairobi', 'Kenyan Shilling', 'KES');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(115, 'Kiribati', 'Tarawa', 'Australian Dollar', 'AUD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(116, 'Korea-North', 'Pyongyang', 'North Korean Won', 'KPW');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(117, 'Korea-South', 'Seoul', 'Korean Won', 'KRW');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(118, 'Kuwait', 'Kuwait City', 'Kuwaiti Dinar', 'KWD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(119, 'Kyrgyzstan', 'Bishkek', 'Som', 'KGS');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(120, 'Laos', 'Vientiane', 'Lao Kip', 'LAK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(121, 'Latvia', 'Riga', 'Latvian Lats', 'LVL');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(122, 'Lebanon', 'Beirut', 'Lebanese Pound', 'LBP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(123, 'Lesotho', 'Maseru', 'Lesotho Loti', 'LSL');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(124, 'Liberia', 'Monrovia', 'Liberian Dollar', 'LRD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(125, 'Libya', 'Tripoli', 'Libyan Dinar', 'LYD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(126, 'Liechtenstein', 'Vaduz', 'Swiss Franc', 'CHF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(127, 'Lithuania', 'Vilnius', 'Lithuanian Litas', 'LTL');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(128, 'Luxembourg', 'Luxembourg', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(129, 'Macau', 'Macau', 'Macau Pataca', 'MOP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(130, 'Macedonia', 'Skopje', 'Denar', 'MKD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(131, 'Madagascar', 'Antananarivo', 'Malagasy Franc', 'MGF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(132, 'Malawi', 'Lilongwe', 'Malawi Kwacha', 'MWK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(133, 'Malaysia', 'Kuala Lumpur', 'Malaysian Ringgit', 'MYR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(134, 'Maldives', 'Male', 'Maldive Rufiyaa', 'MVR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(135, 'Mali', 'Bamako', 'CFA Franc BCEAO', 'XOF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(136, 'Malta', 'Valletta', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(137, 'Marshall Islands', 'Majuro', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(138, 'Martinique (French)', 'Fort-de-France', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(139, 'Mauritania', 'Nouakchott', 'Mauritanian Ouguiya', 'MRO');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(140, 'Mauritius', 'Port Louis', 'Mauritius Rupee', 'MUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(141, 'Mayotte', 'Dzaoudzi', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(142, 'Mexico', 'Mexico City', 'Mexican Nuevo Peso', 'MXN');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(143, 'Micronesia', 'Palikir', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(144, 'Moldova', 'Kishinev', 'Moldovan Leu', 'MDL');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(145, 'Monaco', 'Monaco', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(146, 'Mongolia', 'Ulan Bator', 'Mongolian Tugrik', 'MNT');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(147, 'Montenegro', 'Podgorica', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(148, 'Montserrat', 'Plymouth', 'East Caribbean Dollar', 'XCD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(149, 'Morocco', 'Rabat', 'Moroccan Dirham', 'MAD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(150, 'Mozambique', 'Maputo', 'Mozambique Metical', 'MZN');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(151, 'Myanmar', 'Naypyidaw', 'Myanmar Kyat', 'MMK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(152, 'Namibia', 'Windhoek', 'Namibian Dollar', 'NAD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(153, 'Nauru', 'Yaren', 'Australian Dollar', 'AUD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(154, 'Nepal', 'Kathmandu', 'Nepalese Rupee', 'NPR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(155, 'Netherlands', 'Amsterdam', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(156, 'Netherlands Antilles', 'Willemstad', 'Netherlands Antillean Guilder', 'ANG');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(157, 'New Caledonia (French)', 'Noumea', 'CFP Franc', 'XPF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(158, 'New Zealand', 'Wellington', 'New Zealand Dollar', 'NZD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(159, 'Nicaragua', 'Managua', 'Nicaraguan Cordoba Oro', 'NIO');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(160, 'Niger', 'Niamey', 'CFA Franc BCEAO', 'XOF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(161, 'Nigeria', 'Lagos', 'Nigerian Naira', 'NGN');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(162, 'Niue', 'Alofi', 'New Zealand Dollar', 'NZD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(163, 'Norfolk Island', 'Kingston', 'Australian Dollar', 'AUD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(164, 'Northern Mariana Islands', 'Saipan', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(165, 'Norway', 'Oslo', 'Norwegian Krone', 'NOK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(166, 'Oman', 'Muscat', 'Omani Rial', 'OMR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(167, 'Pakistan', 'Islamabad', 'Pakistan Rupee', 'PKR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(168, 'Palau', 'Koror', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(169, 'Panama', 'Panama City', 'Panamanian Balboa', 'PAB');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(170, 'Papua New Guinea', 'Port Moresby', 'Papua New Guinea Kina', 'PGK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(171, 'Paraguay', 'Asuncion', 'Paraguay Guarani', 'PYG');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(172, 'Peru', 'Lima', 'Peruvian Nuevo Sol', 'PEN');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(173, 'Philippines', 'Manila', 'Philippine Peso', 'PHP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(174, 'Pitcairn Island', 'Adamstown', 'New Zealand Dollar', 'NZD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(175, 'Poland', 'Warsaw', 'Polish Zloty', 'PLN');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(176, 'Polynesia (French)', 'Papeete', 'CFP Franc', 'XPF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(177, 'Portugal', 'Lisbon', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(178, 'Puerto Rico', 'San Juan', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(179, 'Qatar', 'Doha', 'Qatari Rial', 'QAR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(180, 'Reunion (French)', 'Saint-Denis', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(181, 'Romania', 'Bucharest', 'Romanian New Leu', 'RON');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(182, 'Russia', 'Moscow', 'Russian Ruble', 'RUB');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(183, 'Rwanda', 'Kigali', 'Rwanda Franc', 'RWF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(184, 'Saint Helena', 'Jamestown', 'St. Helena Pound', 'SHP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(185, 'Saint Kitts & Nevis Anguilla', 'Basseterre', 'East Caribbean Dollar', 'XCD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(186, 'Saint Lucia', 'Castries', 'East Caribbean Dollar', 'XCD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(187, 'Saint Pierre and Miquelon', 'St. Pierre', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(188, 'Saint Vincent & Grenadines', 'Kingstown', 'East Caribbean Dollar', 'XCD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(189, 'Samoa', 'Apia', 'Samoan Tala', 'WST');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(190, 'San Marino', 'San Marino', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(191, 'Sao Tome and Principe', 'Sao Tome', 'Dobra', 'STD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(192, 'Saudi Arabia', 'Riyadh', 'Saudi Riyal', 'SAR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(193, 'Senegal', 'Dakar', 'CFA Franc BCEAO', 'XOF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(194, 'Serbia', 'Belgrade', 'Dinar', 'RSD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(195, 'Seychelles', 'Victoria', 'Seychelles Rupee', 'SCR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(196, 'Sierra Leone', 'Freetown', 'Sierra Leone Leone', 'SLL');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(197, 'Singapore', 'Singapore', 'Singapore Dollar', 'SGD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(198, 'Slovakia', 'Bratislava', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(199, 'Slovenia', 'Ljubljana', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(200, 'Solomon Islands', 'Honiara', 'Solomon Islands Dollar', 'SBD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(201, 'Somalia', 'Mogadishu', 'Somali Shilling', 'SOS');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(202, 'South Africa', 'Pretoria', 'South African Rand', 'ZAR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(203, 'South Georgia & South Sandwich Islands', 'None', 'Pound Sterling', 'GBP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(204, 'South Sudan', 'Ramciel', 'South Sudan Pound', 'SSP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(205, 'Spain', 'Madrid', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(206, 'Sri Lanka', 'Colombo', 'Sri Lanka Rupee', 'LKR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(207, 'Sudan', 'Khartoum', 'Sudanese Pound', 'SDG');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(208, 'Suriname', 'Paramaribo', 'Surinam Dollar', 'SRD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(209, 'Svalbard and Jan Mayen Islands', 'Longyearbyen', 'Norwegian Krone', 'NOK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(210, 'Swaziland', 'Mbabane', 'Swaziland Lilangeni', 'SZL');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(211, 'Sweden', 'Stockholm', 'Swedish Krona', 'SEK');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(212, 'Switzerland', 'Bern', 'Swiss Franc', 'CHF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(213, 'Syria', 'Damascus', 'Syrian Pound', 'SYP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(214, 'Taiwan', 'Taipei', 'Taiwan Dollar', 'TWD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(215, 'Tajikistan', 'Dushanbe', 'Tajik Somoni', 'TJS');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(216, 'Tanzania', 'Dodoma', 'Tanzanian Shilling', 'TZS');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(217, 'Thailand', 'Bangkok', 'Thai Baht', 'THB');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(218, 'Togo', 'Lome', 'CFA Franc BCEAO', 'XOF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(219, 'Tokelau', 'None', 'New Zealand Dollar', 'NZD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(220, 'Tonga', 'Nuku''alofa', 'Tongan Pa''anga', 'TOP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(221, 'Trinidad and Tobago', 'Port of Spain', 'Trinidad and Tobago Dollar', 'TTD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(222, 'Tunisia', 'Tunis', 'Tunisian Dollar', 'TND');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(223, 'Turkey', 'Ankara', 'Turkish Lira', 'TRY');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(224, 'Turkmenistan', 'Ashgabat', 'Manat', 'TMT');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(225, 'Turks and Caicos Islands', 'Grand Turk', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(226, 'Tuvalu', 'Funafuti', 'Australian Dollar', 'AUD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(227, 'U.K.', 'London', 'Pound Sterling', 'GBP');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(228, 'USA', 'Washington', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(229, 'USA Minor Outlying Islands', 'None', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(230, 'Uganda', 'Kampala', 'Uganda Shilling', 'UGX');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(231, 'Ukraine', 'Kiev', 'Ukraine Hryvnia', 'UAH');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(232, 'United Arab Emirates', 'Abu Dhabi', 'Arab Emirates Dirham', 'AED');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(233, 'Uruguay', 'Montevideo', 'Uruguayan Peso', 'UYU');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(234, 'Uzbekistan', 'Tashkent', 'Uzbekistan Sum', 'UZS');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(235, 'Vanuatu', 'Port Vila', 'Vanuatu Vatu', 'VUV');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(236, 'Vatican', 'Vatican City', 'Euro', 'EUR');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(237, 'Venezuela', 'Caracas', 'Venezuelan Bolivar', 'VEF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(238, 'Vietnam', 'Hanoi', 'Vietnamese Dong', 'VND');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(239, 'Virgin Islands (British)', 'Road Town', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(240, 'Virgin Islands (USA)', 'Charlotte Amalie', 'US Dollar', 'USD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(241, 'Wallis and Futuna Islands', 'Mata-Utu', 'CFP Franc', 'XPF');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(242, 'Western Sahara', 'El Aaiun', 'Moroccan Dirham', 'MAD');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(243, 'Yemen', 'San''a', 'Yemeni Rial', 'YER');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(244, 'Zambia', 'Lusaka', 'Zambian Kwacha', 'ZMW');
INSERT INTO currency_code
(id, country, capital, currency_name, currency_code)
VALUES(245, 'Zimbabwe', 'Harare', 'Zimbabwe Dollar', 'ZWD');


INSERT INTO password_policy
(issuer_id, pwd_min_length, pwd_max_length, login_duration, pwd_expiry_days, pwd_attemp_count, pwd_regexp, pwd_regxp_msg, created_by, created_date, remarks, updated_date, updated_by, id, prev_passwords, institution_id)
VALUES('0', 7, 12, 60, 6000, 3, '(?=.*[@!#$%&*]+?).*[^_\W]+?.*[0-9]+?.*$', 'Password must contain combination of Alphabets and Number and Special Characters', 127, '2021-01-06 20:12:43.000', NULL, '2021-01-06 20:12:43.000', 970, 1, 2, 0);



INSERT INTO cms_embossing_format
(bin, product_id, id, pan_no, pan_no_length, pass_type, pass_type_length, application_ref_no, application_ref_no_length, filler_1, filler_1_length, validity, validity_length, card_ref_no, card_ref_no_length, photo_id, photo_id_length, filler_2, filler_2_length, name_address, name_address_length, filler_3_3_1, filler_3_3_1_length, cvd_2, cvd_2_length, filler_4, filler_4_length, track1, track1_length, filler_5, filler_5_length, track2, track2_length, outlet_details, outlet_details_length, i_cvd, i_cvd_length, line1_start, line2_start, line3_start, line4_start, intenddata_start, track1_start, track2_start, sp1_char, sp2_char, sp3_char, sp4_char, sp5_char, format_code, track3_start, address1, address2, city, pincode, state, address1_length, address2_length, city_length, pincode_length, state_length, outlet_address, outlet_address_length, delivery_dest, delivery_dest_length, mobile_number, mobile_number_length, embossa_name1, embossa_name1_length, embossa_name2, embossa_name2_length, embossa_name3, embossa_name3_length, employer_name, employer_name_length, employer_id, employer_id_length, employee_id, employee_id_length, product_id_length, card_design_code, card_design_code_length, "name")
VALUES('0', '0', 1, '\P', '16', '\G', '10', '\B', '20', '\', '3', '\F\" "\T\" "', '10', '\C', '12', '\H', '18', '\', '11', '\N', '26', '\', '14', '\V', '3', '\', '8', '\P\"^"\5\"^"\X\Z\Q\A\"00000000"?"\Y', '79', '\', '13', '\P\"="\X\Z\Q\"0000000000"\"?"\Y', '40', '\U', '15', '\R', '3', '$', '*', ')', '#', ':', '"', ';', '=', '?', '^', '/', '%', 'B', '?', '\D', '\S', '\I', '\O', '\E', '40', '40', '18', '6', '18', '\L', '61', '\M', 2, '\W', 15, '\J', 26, '\K', 26, '\4', 26, '\3', 200, '\2', 35, '\1', 35, 2, '\6', 4, 'Default');




INSERT INTO cms_embossing_master
("DEVICE_CTL_LINE", "CARD_SIZE", "LEFT_MARGIN_SIZE", "SP1", "FONT1", "BOTTOM_HEIGHT1", "SP2", "FONT2", "BOTTOM_HEIGHT2", "SP3", "FONT3", "BOTTOM_HEIGHT3", "END_DCL", "HEADER_LENGTH", "ID")
VALUES('#DCL', '#08', '400', ' 1', '#FC2', '#0580', ' 2', '#FC1', '#0400', ' 3', '#FC1', '#0270', '#END#@@@@@@', '61', 1);



INSERT INTO prd_network_scheme_master
(id, network_scheme_name, created_date, created_by, updated_date, updated_by)
VALUES(70157, 'RuPay', sysdate, 1, sysdate, 0);
INSERT INTO prd_network_scheme_master
(id, network_scheme_name, created_date, created_by, updated_date, updated_by)
VALUES(70156, 'VISA', sysdate, 1, sysdate, 0);
INSERT INTO prd_network_scheme_master
(id, network_scheme_name, created_date, created_by, updated_date, updated_by)
VALUES(70158, 'MasterCard', sysdate, 1, sysdate, 0);




INSERT INTO prd_card_activation_master
(id, activation_type, created_date, created_by, updated_date, updated_by)
VALUES(70164, 'issuance', sysdate, 0, sysdate, 0);


INSERT INTO prd_card_activation_master
(id, activation_type, created_date, created_by, updated_date, updated_by)
VALUES(70165, 'pin based', sysdate, 0, sysdate, 0);



INSERT INTO prd_interface_master
(id, interface_name, created_date, created_by, updated_date, updated_by)
VALUES(70162, 'chip-dual', sysdate, 0,sysdate, 0);
INSERT INTO prd_interface_master
(id, interface_name, created_date, created_by, updated_date, updated_by)
VALUES(70163, 'magnetic',sysdate, 0,sysdate, 0);



INSERT INTO prd_pin_generation_master
(id, pin_gen_type, created_date, created_by, updated_date, updated_by)
VALUES(70166, 'physical', '2021-12-09 16:09:48.889', 0, '2021-12-09 16:09:48.889', 0);
INSERT INTO prd_pin_generation_master
(id, pin_gen_type, created_date, created_by, updated_date, updated_by)
VALUES(70167, 'virtual', '2021-12-09 16:10:03.695', 0, '2021-12-09 16:10:03.695', 0);



INSERT INTO prd_card_type_master
(id, card_type_name, created_date, created_by, updated_date, updated_by)
VALUES(70159, 'Physical Card', sysdate, 0,sysdate, 0);
INSERT INTO prd_card_type_master
(id, card_type_name, created_date, created_by, updated_date, updated_by)
VALUES(70160, 'Virtual Card', sysdate, 0, sysdate, 0);




INSERT INTO cms_mail_config_detail
(id, mail_from, user_name, "password", host, port, connection_type, institution_id, app_id, sub_app_id, alert_from, self_id, alert, dlrreq, content_type, dcode, pwd, c_type, msg_type, priority, sender, config_id, vendor)
VALUES('EMAIL', 'no-reply-local@paycraftsol.com', 'no-reply-local@paycraftsol.com', 'Asdf@1234', 'smtp.office365.com', '587', 'smtp', 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO cms_mail_config_detail
(id, mail_from, user_name, "password", host, port, connection_type, institution_id, app_id, sub_app_id, alert_from, self_id, alert, dlrreq, content_type, dcode, pwd, c_type, msg_type, priority, sender, config_id, vendor)
VALUES('EMAIL', 'Alerts_info@Paycraftsol.in', '2000702121', 'cP8XVE', 'enterpriseemail.webaroo.com', '587', 'smtp', 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL);


INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2043', 'SetUpdate limit contactless', 'SMS', 'Dear Customer, As per your request, your contactless transaction limit has been set to INR <Amount> on your Debit Card ending with <last_4>. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Set/Update limit contactless', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2013', 'Card Status', 'SMS', 'Your wish is our command. Your <Product_name> card ending with <last_4> has been <card_status>. Call <contact_centre> for support - Team Paycraft.', 'Card Status', 'Y', NULL, 0, 0, 0, 0, NULL, '1207166399411026560');
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2044', 'SetUpdate limit ATM', 'SMS', 'Dear Customer, As per your request, your domestic daily transaction limit for ATM has been set to INR <Amount> on your Debit Card ending with <last_4>. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Set/Update limit ATM', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2033', 'OTP Generation', 'EMAIL', 'Dear Customer,

Greetings from <Issuer_Name>

Use OTP <OTP> for <OTP_TYPE> of your card ending <last_4>. OTP valid for 5 mins. Please do not share with anyone.Call <contact centre toll free> for assistance.

Sincerely,

Customer Service Team

<Issuer_Name>

This is a system generated email. Please do not reply to this email.', 'OTP Generation Alert', 'Y', NULL, 0, 2, 0, 0, NULL, '1207165000954734932');
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('1008', 'PasswordGen', 'EMAIL', 'Dear <userName>,

 

Your password is <randPassword> .

 

Regards,

Team Paycraft

This is a system generated email. Please do not reply to this email.', 'Login Credential', 'Y', NULL, 186, 2, 256, 204, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2045', 'SetUpdate limit POS', 'SMS', 'Dear Customer, As per your request, your domestic daily transaction limit for POS has been set to INR <Amount> on your Debit Card ending with <last_4>. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Set/Update limit POS', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2001', 'Card Activation', 'EMAIL', 'Dear Customer,

Greetings from <Issuer_name>

Your <Product_name> card ending with XX<last_4> has been succesfully activated.Call <contact_centre> for assistance.

NEVER SHARE your Card number, CVV, PIN, or OTP with anyone. Sharing these details can lead to unauthorized access to your Card.


Sincerely,

Customer Service Team

<Issuer_name>

This is a system generated email. Please do not reply to this email.', 'Card Activation', 'Y', NULL, 0, 2, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('1013', 'EmbossingFileCvvValidationSuccess', 'EMAIL', 'Dear Sir/Ma''am, \n\n CVV validation Successful for file <file>. \n\n\n\Sincerely,\nCustomer Service Team\n<productName>', 'Successful CVV validation', 'Y', NULL, 1, 2, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('1012', 'EmbossingFileCvvValidationFailed', 'EMAIL', 'Dear Sir/Ma''am, \n\n CVV validation failed for file <file>. \n\n\n\Sincerely,\nCustomer Service Team\n<productName>', 'CVV validation failed', 'Y', NULL, 1, 2, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('1011', 'EmbossingFileCopyFailed', 'EMAIL', 'Dear Sir/Ma''am, \n\n <productName> Card embossing file process failed due to error in placing file to SFTP location.  \n\n\n\Sincerely,\nCustomer Service Team\n<productName>', 'Failed to place embossa file on SFTP', 'Y', NULL, 1, 2, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('1003', 'FileProceessingRejectedRecords', 'EMAIL', 'Hi Team,\n\n Kindly find the attached document for rejected customer data for Batch No <batchNo> and Product Name <productName> . \n\n\n\nRegards,\nPaycraft Solution', 'Customer Rejected Details', 'Y', NULL, 1, 2, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('1010', 'EmbossingFileCopy', 'EMAIL', 'Dear Customer,\n\nGreetings from <issuerName>\n\nDear Sir/Ma''am,\n\n<productName> Card emboss file has been placed on SFTP. Request you to process it further.\n\n\Sincerely,\nCustomer Service Team\n<issuerName>\n', 'Embossa file successfully placed on SFTP alert', 'Y', NULL, 1, 2, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2046', 'SetUpdate limit ECOM', 'SMS', 'Dear Customer, As per your request, your domestic daily transaction limit for ECOM has been set to INR <Amount> on your Debit Card ending with <last_4>. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'SetUpdate limit ECOM', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2019', 'Unblocking of card', 'SMS', 'Dear Customer, Your Debit Card ending with <last_4> has been unblocked. If not requested by you, please call at 1800-202-5333 - Shivalik Bank', 'Unblocking of card', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2001', 'Card Activation', 'SMS', 'Dear Customer, Your Debit Card ending with <last_4> has been activated. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Physical card  activation', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2023', 'Pin Set Success', 'SMS', 'Dear Customer, PIN for your Debit Card Number <last_4> has been generated successfully. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Pin Set', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2020', 'Permanent Blocking of virtual card', 'SMS', 'Dear Customer, Your Debit Card ending with <last_4> has been blocked. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Permanent Blocking of  virtual card', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2008', 'CMS Txn Decline', 'SMS', 'Dear Customer, Your <txn_type> for card no. ending <Last_4> has been declined on <Date_time> at <Time>. Pls call 1800-202-5333 for assistance - Shivalik Bank', 'CMS Txn Decline', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2018', 'Temporary Blocking', 'SMS', 'Dear Customer, Your Debit Card ending with <last_4> has been temporarily blocked. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Temporary Blocking', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2015', 'Transaction Enable Card', 'SMS', 'Dear Customer, We''ve activated domestic usage on your Debit Card ending with <last_4> for <cust_txn_type>. If not requested by you, please call at 1800-202-5333 - Shivalik Bank', 'Transaction Enabled on Card', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2017', 'Transaction Disable Card', 'SMS', 'Dear Customer, As per your request, we''ve deactivated domestic usage on your Debit Card ending with <last_4> for <cust_txn_type>. If not requested by you, please call at 1800-202-5333 - Shivalik Bank', 'Transaction Disable on Card', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2002', 'Virtual Card Activation', 'SMS', 'Dear Customer, Your Virtual Debit Card ending with <last_4> has been activated. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Virtual card activation', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2032', 'Card Linking', 'SMS', 'Dear Customer, We''ve issued your Debit Card ending with <last_4> on your Shivalik Bank account <Last_4_acc_no>. To activate your card, click - <Link> - Shivalik Bank', 'Physical card Linking', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2030', 'Virtual Card Linking', 'SMS', 'Dear Customer, We''ve issued your Virtual Debit Card ending with <last_4> on your Shivalik Bank account <Last_4_acc_no>. To activate your card, click - <Link> - Shivalik Bank', 'Virtual card Linking', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2047', 'Card Replacement', 'SMS', 'Dear Customer, Your new Debit Card ending with <last_4> has been issued. You will receive the same in 7 working days. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Card Replacement', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2048', 'Contactless txn  decline', 'SMS', 'Dear Customer, Your contactless transaction has been declined as it exceeds the limit for this transaction type. You can reset the limits through Shivalik Bank Net Banking/Mobile App - Shivalik Bank', 'Contactless txn  decline', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2049', 'CVV validation Failed', 'SMS', 'Dear Customer, Your transaction cannot be processed due to technical issue on <date_time>. If not initiated by you, please call at 1800-202-5333 - Shivalik Bank', 'CVV validation Failed', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2050', 'CVV validation incorrect', 'SMS', 'Dear Customer, Due to incorrect CVV entered transaction cannot be processed. If not initiated by you, please call at 1800-202-5333 - Shivalik Bank', 'CVV validation incorrect', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2051', 'Fuel surcharge Txn', 'SMS', 'Dear Customer, A surcharge of INR <Amount> has been debited against your fuel transaction on <date_time>. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Fuel surcharge Txn', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2052', 'Fuel Surcharge waiver', 'SMS', 'Dear Customer, A surcharge of INR <Amount> has been credited against your fuel transaction on <date_time>. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Fuel Surcharge waiver', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2053', 'Refund received from merchant', 'SMS', 'Dear Customer, A refund of INR <Amount> for your purchase transaction from <Merchant_name> has been successfully processed and shall reflect in your account in 24 hour - Shivalik Bank', 'Refund received from merchant', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2054', 'Unsuccessful ATM Txn refund', 'SMS', 'Dear Customer, A refund of INR <Amount> for your <txn_type> has been successfully processed and shall reflect in your account in 24 hours - Shivalik Bank', 'Unsuccessful ATM Txn refund', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2033', 'OTP Generation', 'SMS', 'Dear Customer, Your OTP is <OTP> for <OTP_TYPE> which is valid for 3 minutes only. Please Do not share with anyone for security reasons - Shivalik Bank', 'OTP Generations', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2027', 'Permanent Blocking of Physical card', 'SMS', 'Dear Customer, The card number ending with <last_4> has been blocked successfully - Shivalik Bank', 'Permanent Blocking of  Physical card', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2012', 'Wrong PIN attempt', 'SMS', 'Dear Customer, your card ending with <last_4> has been temporarily blocked due to wrong PIN attempts. Card will be auto activated after 24 hours. Please call 1800-202-5333 for assistance - Shivalik Bank', 'Wrong PIN attempt', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2007', 'Txn Decline', 'SMS', 'Dear Customer, Your transaction for INR <Amount> on card ending with <last_4> was declined due to <decline_reason> on <date_time> <Time>. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Txn declined on Card', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2014', 'Txn Decline ATM', 'SMS', 'Dear Customer, Your transaction for INR <Amount> on card ending with <last_4> was declined due to <decline_reason> on <date_time> <Time>. For any queries, please reach us at 1800-202-5333 - Shivalik Bank', 'Txn Decline at ATM', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);
INSERT INTO alert_engine
(action_id, action_name, alert_type, display_msg, subject, send_flag, place_holder_fetch_query, institution_id, mail_config_id, issuerid, productid, adhoc_queries, template_id)
VALUES('2042', 'SetUpdate limit', 'SMS', 'Dear customer, as per your request for <card_usage> <frequency> transaction limit for <txn_type> has been set to <Amount> on your card ending with <last_4>. Pls call 1800-202-5333 for assistance - Shivalik Bank', 'Set/Update limit', 'Y', NULL, 0, 0, 0, 0, NULL, NULL);



INSERT INTO cms_wallet_type_master
(id, wallet_name, wallet_type, status)
VALUES(2, 'Fuel wallet', 'FUEL', 'A');
INSERT INTO cms_wallet_type_master
(id, wallet_name, wallet_type, status)
VALUES(4, 'Expense wallet', 'EXPENSE', 'A');
INSERT INTO cms_wallet_type_master
(id, wallet_name, wallet_type, status)
VALUES(3, 'Reimbursement', 'REIMBURSE', 'A');
INSERT INTO cms_wallet_type_master
(id, wallet_name, wallet_type, status)
VALUES(1, 'Meal wallet', 'MEAL', 'A');
INSERT INTO cms_wallet_type_master
(id, wallet_name, wallet_type, status)
VALUES(6, 'Gift', 'GIFT', 'A');
INSERT INTO cms_wallet_type_master
(id, wallet_name, wallet_type, status)
VALUES(5, 'Offline Wallet', 'TRANSIT', 'A');



INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('00', 'Member generated outgoing file', 'OG', 'Outgoing', 'RuPay', NULL, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('02', 'Network generated acknowledgement file', 'ACK', 'Acknowledgement', 'RuPay', 5, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('03', 'Network generated web acknowledgement', 'WEBACK', 'Web Acknowledgement', 'RuPay', 5, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('04', 'Network generated acknowledgement', 'ACK', 'Acknowledgement', 'RuPay', 5, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('80', 'Onus Transaction File', 'OG', 'Outgoing', 'RuPay', NULL, 'N');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('81', 'BIN Management File', 'BIN', 'BIN', 'RuPay', 1, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('82', 'Acquirer ID Management File', 'ACQID', 'Acquirer ID', 'RuPay', 2, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('83', 'SMS response file to Acquirer', 'AUTOSET', 'Auto Settlement from network', 'RuPay', 5, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('84', 'SMS Incoming file to Issuer', 'INC', 'Incoming', 'RuPay', 5, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('85', 'RAW Data to Acquirer', 'RAW', 'RAW Data', 'RuPay', 3, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('87', 'DMS response file to Acquirer', 'SETAUTH', 'Settle Authorization', 'RuPay', 4, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('88', 'DMS incoming file to Issuer', 'SETAUTH', 'Settle Authorization', 'RuPay', 4, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('TL', 'Hitachi TLF File', 'INC', 'Incoming', 'Rupay', NULL, 'N');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('01', 'Network generated incoming file', 'INC', 'Incoming', 'RuPay', 1, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('05', 'Network Generated incoming file : Offline presentment', 'INC', 'Incoming', 'RuPay', 1, 'N');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('001', 'Network generated incoming file', 'INC', 'Incoming', 'MasterCard', NULL, 'Y');
INSERT INTO cs_config_filenamemaster
(file_code, file_name_description, file_type, file_type_description, network, file_seq, seq_flag)
VALUES('86', 'Raw Data to Issuer', 'RAW', 'RAW DATE', 'RuPay', 3, 'Y');




INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'Local Presentment', 'FP', '1', 'Local Presentment', '100001', 'ASDF0000001', '01.00', 'POS01', 'ASDF01', '123456.INR.PD.RD', '111111', 'ASDF0000001', 'T', '2', 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'L', -1, 'ISS');
INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'ONUS Presentment', 'ONUS', '1', 'ONUS Presentment', '100001', 'PAYC0000001', '01.00', 'POS01', 'PAY011', '123456.INR.CB.RD', NULL, 'PAYC0000001', 'T', '1', 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'P', -1, 'ACQ');
INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'ONUS Presentment', 'ONUS', '1', 'ONUS Presentment', '100001', 'PAYC0000001', '01.00', 'POS01', 'PAY011', '123455.INR.PD.RD', NULL, 'PAYC0000001', 'T', '1', 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'P', -1, 'ACQ');
INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'Local Presentment', 'FP', '1', 'Local Presentment', '100001', 'PAYC0000001', '01.00', 'POS01', 'PAY011', '123455.INR.LD.RD', '100001', 'PAYC0000001', 'T', '1', 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'L', -1, 'ACQ');
INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'Local Presentment', 'FP', '1', 'Local Presentment', '100001', 'PAYC0000001', '01.00', 'POS01', 'PAY011', '123456.INR.LD.RD', '100001', 'PAYC0000001', 'T', '1', 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'L', -1, 'ACQ');
INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'International Presentment', 'FP', '1', 'International Presentment', '100001', 'PAYC0000001', '01.00', 'POS01', 'PAY011', '123456.INR.RD.FD', '100002', 'PAYC0000001', 'T', '1', 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'F', -1, 'ACQ');
INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'Refund', 'REF', '2', 'Refund', '100001', 'PAYC0000001', '01.00', 'POS01', 'PAY011', '123456.INR.RD.LC', '100001', 'PAYC0000001', 'T', '1', 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'L', -1, 'ACQ');
INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'Online  Presentment', 'FP', NULL, 'OFFUS ONLINE PRESENTMENT', '720469', 'HDFC0000001', '01.00', 'POS01', 'UTIB01', 'ACQ ID.INR.OD.FP', NULL, NULL, 'T', NULL, 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'L', NULL, 'ACQ');
INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'Online  Presentment', 'ONUS', NULL, 'ONUS ONLINE PRESENTMENT', '720469', 'HDFC0000001', '01.00', 'POS01', 'UTIB01', 'ACQ ID.INR.PD.FP', NULL, NULL, 'T', NULL, 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'L', NULL, 'ACQ');
INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'Offline  Presentment', 'ONUS', NULL, 'ONUS OFFLINE PRESENTMENT', '720469', 'HDFC0000001', '01.00', 'POS01', 'UTIB01', '400001.INR.PD.OF', NULL, NULL, 'T', NULL, 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'L', NULL, 'ACQ');
INSERT INTO cs_config_rupay_txncode
(bank_name, txn_desc, txn_code, txn_code_id, txn_desc_1, acq_id, pid, version_number, product_code, set_bin, og_gen, iss_bin, main_pid, file_category, iss_acq_flag, network_code, network_name, iss_bin_type, lofo_ind, org_id, iss_acq_flag_desc)
VALUES('PayCraft', 'Offline  Presentment', 'FP_OFFLINE', NULL, 'OFFUS OFFLINE PRESENTMENT', '720390', 'HDFC0000001', '01.00', 'POS01', 'UTIB01', 'ACQ ID.INR.OD.OF', NULL, NULL, 'T', NULL, 'NETWORK.01', 'RUPAY', 'PREPAID CARD', 'L', NULL, 'ACQ');





INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Arbitration', 'ARB', 1, '', '8642', 479, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'SMS Authorization', 'SMS_AUTH', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nTxnOrgInstCd,nATD', '0200', 200, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'DMS Authorization', 'DMS_AUTH', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nTxnOrgInstCd,nATD', '0100', 100, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Authorization Reversal Transaction', 'SMS_REV', 2, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nTxnOrgInstCd,nATD', '0400', 400, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Header Message', 'HDR', 1, 'nMTI,nFunCd,nRecNum,nDtTmFlGen,nDtSet,nMemInstCd,nMemInstCd,nUnFlNm,nProdCd,nSetBIN,nFlCatg,nVerNum,nFlRejInd,nFlRejRsnCd,nATD', '1644', 670, NULL, 1, 'HEADER');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Trailer Message', 'TLR', 1, 'nMTI,nFunCd,nRecNum,nUnFlNm,nTxnCnt,nRnTtlAmt,nATD', '1644', 671, NULL, 3, 'TRAILER');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Void', 'VOID', 1, 'nSetBIN,nFlCatg,nVerNum,nMemInstCd,nUnFlNm,nProdCd,nMTI,nFunCd,nRecNum,nDtTmFlGen,nATD', '8144', 266, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Authorization Cancellation Request', 'AUTH_CAN_REQ', 1, 'nMTI,nFunCd,nUnFlNm,nTxnCnt,nRnTtlAmt,nRecNum,nATD', '8144', 267, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Authorization Cancellation Acceptance', 'AUTH_CAN_ACCPT', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nTxnOrgInstCd,nATD', '8144', 268, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Offline Presentment (Without Auth)', 'FP_OFFLINE', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nCcyCdTxn,nAmtAdd,nTxnOrgInstCd,nCrdAcpZipCd,nMerTelNum,nProcCd,nPosEntMode,nPosCondCd,nPosDataCd,nCrdAcpBussCd,nServCd,nActnCd,nTxnDesInstCd,nUnFlNm,nCrdAcpIDCd,nCrdAcpNm,nCrdAcpLoc,nCrdAcpCity,nCrdAcpStNm,nCrdAcpCtryCd,nDtSet,nSetDCInd,nAmtSet,nCcyCdSet,nConvRtSet,nAmtBil,nConvRtBil,nCcyCdBil,nFeeTpCd,nIntrchngCtg,nFeeAmt,nFeeDCInd,nFeeCcy,nProcSts,nRGCSRejRsnCd,nAddData,nATD', '1240', 260, 'nICCData', 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'SMS Tip and Surcharge Adjustment', 'SMS_TIP_SURCH', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nTxnOrgInstCd,nTxnDesInstCd,nTxnDesInstCd,nDtSet,nSetDCInd,nAmtSet,nCcyCdSet,nConvRtSet,nCaseNum,nMsgRsnCd,nIntrnTrackNum,nMemMsgTxt,nFulParInd,nOrgSetDt,nATD', '1240', 265, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Re-presentment (Full/Partial)', 'REP', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nTxnOrgInstCd,nATD', '1240', 205, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Refund', 'REF', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nTxnOrgInstCd,nFulParInd,nMemMsgTxt,nDocInd,nATD', '1240', 262, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Offline Refund', 'REF_OFFLINE', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nTxnOrgInstCd,nTxnDesInstCd,nDtSet,nCaseNum,nMsgRsnCd,nMemMsgTxt,nOrgSetDt,nATD', '1240', 263, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'ONUS Transaction', 'ONUS', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nAcqInstCd,nAmtTxn,nCcyCdTxn,nTxnOrgInstCd,nMsgRsnCd,nATD', '1240', 999, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Reversal of Presentment (With Auth)', 'REV_FP', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nAcqInstCd,nAmtTxn,nCcyCdTxn,nTxnOrgInstCd,nMsgRsnCd,nATD', '1420', 420, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Chargeback (Full/Partial)', 'CB', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nTxnOrgInstCd,nFulParInd,nContNum,nATD', '1442', 450, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Chargeback Acceptance', 'CB_ACCPT', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nCrdAcptTrmId,nPosDataCd,nAmtTxn,nCcyCdTxn,nCrdAcpStNm nTxnOrgInstCd,nCrdAcpZipCd,nMerTelNum,nPosEntMode,nPosCondCd,nCrdAcpBussCd,nActnCd,nCrdAcpIDCd,nCrdAcpNm,nCrdAcpLoc,nCrdAcpCity,nCrdAcpCtryCd,nATD', '1442', 470, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Refund Chargeback (Full/Partial)', 'CB_REF', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nCrdAcpStNm,nActnCd nTxnOrgInstCd,nProcCd,nPosEntMode,nPosCondCd,nPosDataCd,nCrdAcpBussCd,nCrdAcpIDCd,nCrdAcpNm,nCrdAcpLoc,nCrdAcpCity,nCrdAcpCtryCd,nATD', '1442', 264, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Retrieval Request', 'RQ', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nTxnOrgInstCd,nRRN,nATD', '1644', 603, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Retrieval Request Fulfilment', 'RQ_FUL', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nCrdAcpStNm,nCrdAcpCtryCd,nProdCd nTxnOrgInstCd,nProcCd,nPosEntMode,nPosCondCd,nPosDataCd,nCrdAcpBussCd,nCrdAcpIDCd,nCrdAcpNm,nCrdAcpLoc,nCrdAcpCity,nDtTmTrns,nATD', '1644', 605, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Re-presentment Acceptance', 'REP_ACCPT', 1, '', '1240', 261, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Retrieval Request Non Fulfilment', 'RQ_NONFUL', 1, '', '1644', 630, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Pre-Arbitration (Full/Partial)', 'PRE_ARB', 1, '', '8642', 471, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Pre-Arbitration Declined', 'PRE_ARB_DEC', 1, '', '8642', 473, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Pre-Arbitration Acceptance (Full/Partial)', 'PRE_ARB_ACCPT', 1, '', '8642', 474, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Arbitrations Acceptance', 'ARB_ACCPT', 1, '', '8642', 480, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Arbitrations Continuation', 'ARB_CONT', 1, '', '8642', 481, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Arbitrations Withdrawn', 'ARB_WITH', 1, '', '8642', 482, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Arbitrations Verdict', 'ARB_VER', 1, '', '8642', 483, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Pre-compliance (Single/Bulk)', 'PRE_COM', 1, '', '8644', 672, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Pre-compliance Acceptance (Full/Partial)', 'PRE_COM_ACCPT', 1, '', '8644', 673, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Pre-compliance Declined', 'PRE_COM_DEC', 1, NULL, '8644', 674, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Compliance (Single/ Bulk)', 'COM', 1, NULL, '8644', 675, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Presentment (With Auth)', 'FP', 1, 'nMTI,nFunCd,nRecNum,nDtTmLcTxn,nPAN,nARD,nAcqInstCd,nApprvlCd,nCrdAcptTrmId,nAmtTxn,nCcyCdTxn,nTxnOrgInstCd,nATD', '1240', 200, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Compliance Acceptance', 'COM_ACCPT', 1, NULL, '8644', 676, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Compliance Continuation', 'COM_CONT', NULL, NULL, '8644', 677, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Compliance Withdrawn', 'COM_WITH', NULL, NULL, '8644', 678, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Compliance Verdict', 'COM_VER', NULL, NULL, '8644', 679, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Good Faith (Single/ Bulk)', 'GF', NULL, NULL, '8744', 680, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Good Faith Acceptance (Full/Partial)', 'GF_ACCPT', NULL, NULL, '8744', 681, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Good Faith Declined', 'GF_DEC', NULL, NULL, '8744', 682, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Member Fund Collection', 'MFC', NULL, NULL, '1740', 700, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Member Fund Disbursement', 'MFD', NULL, NULL, '1740', 701, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'NPCI Fee Collection', 'FC', NULL, NULL, '1740', 760, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'NPCI Fee Disbursement', 'FD', NULL, NULL, '1740', 761, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Credit Adjustment', 'CRA', NULL, NULL, '1740', 762, NULL, 2, 'TRANSACTION');
INSERT INTO cs_config_rupay_xmltag
(org_id, txn_desc, txn_code, txn_code_id, req_tag, mti, function_code, sub_tag, xmltag_block, xmltag_block_desc)
VALUES(1, 'Debit Adjustment', 'DRA', NULL, NULL, '1740', 763, NULL, 2, 'TRANSACTION');


INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Himachal Pradesh', '31', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Punjab', '40', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Chandigarh', '28', 9, NULL, 9, NULL, 8, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Uttarakhand', '45', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Haryana', '30', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Delhi', '3', 9, NULL, 9, NULL, 8, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Uttar Pradesh', '18', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Bihar', '27', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Sikkim', NULL, 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Arunachal Pradesh', '25', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Nagaland', '38', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Manipur', '35', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Mizoram', '37', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Tripura', '44', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Meghalaya', '36', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Assam', '26', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('West Bengal', '46', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Jharkhand', '33', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Chhattisgarh', '22', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Gujarat', '2', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Karnataka', '19', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Goa', '10', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Lakshdweep', NULL, 9, NULL, 9, NULL, 8, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Kerala', '11', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Tamil Nadu', '42', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Telangana', '43', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Jammu and Kashmir', '32', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Daman and Diu', NULL, 9, NULL, 9, NULL, 8, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Dadra and Nagar Haveli', '29', 9, NULL, 9, NULL, 10, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Andaman and Nicobar Islands', '23', 9, NULL, 9, NULL, 10, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Madhya Pradesh', '34', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Andhra Pradesh', '24', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Odisha', '17', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Puducherry', '39', 9, NULL, 9, NULL, 8, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Rajasthan', '41', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);
INSERT INTO config_cs_gst_rate
(state_name, state_code, cgst, c_cess, sgst, s_cess, utgst, u_cess, igst, i_cess)
VALUES('Maharashtra', '1', 9, NULL, 9, NULL, NULL, NULL, 18, NULL);


INSERT INTO cms_tax_master
(id, tax_type, tax_name)
VALUES(1, 'GST', 'IGST');



INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('12', 'File Not Uploaded Successfully!', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('11', 'File already processed!', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('06', 'Exception report generated successfully!', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('00', 'There is some internal problem please try after some time.', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('01', 'Switch file uploaded successfully!', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('02', 'Outgoing created successfully!', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('03', 'Outgoing file downloaded successfully!', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('04', 'Earlier process is incomplete please rollback.', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('05', 'Rollback done successfully!', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('07', 'Outgoing already created successfully!', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('08', 'Outgoing not created successfully!Please rollBack', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('09', 'There is no data for given date.', 'T');
INSERT INTO cs_config_alert_msg
(alert_code, alert_msg, display_source)
VALUES('10', 'File uploaded Successfully!', 'P');



INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('2', 'Switching Fee', '2101,2102,2103,2104,2109,2110,3101,3102,3105,3106,4101,4102,4105,4106,2118,2119,4111,4112,3111,3112,2220,2221,4113,4114,3113,3114,6003,9002', 'International', 11);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('5', 'Assesement Fee', '3531,3533,3535,3537,3539,3541,3543,3545,3547,3549,3551,3553,3555,3557,3559,3561,3563,3565,3567,6004,3596,3597,3598,3599,3596,3600,3601,
3569,3571,3573,3575,3577,3579,3581,3583,3585,3602,3603,3604,3605,3606,3607,3608,3609,3614,3615,3616,3617,6009,6043,7004', NULL, NULL);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('1', 'Interchange Fees', '0001,1101,6006', 'Local', 2);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('3', 'Retrieval Request Fees', '0021,5106,5107,5108,5109,5110', 'Local', 4);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('3', 'Arbitration Filing Fee', '1908', 'Local', 5);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('3', 'Arbitration Review Fee', '1909,5103,5104', 'Local', 6);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('3', 'Compliance Filing Fee', '1910,1911', 'Local', 7);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('3', 'Compliance Review Fee', '1912', 'Local', 8);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('4', 'PLATINUM FEES', '1066,1067,1068,1069,1070,1071,2114,2115,4107,4108,3107,3108,2116,2117,4109', 'Local', 9);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('5', 'GST', '9003', 'Local', 12);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('5', 'Member Audit Charges', '1951', NULL, 13);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('5', 'Training Fees', '1952', NULL, 14);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('5', 'Certification Fees', '1950', NULL, 15);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('5', 'Miscellaneous (With GST)', '1072', NULL, 16);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('3', 'Chargeback Deemed Acceptance Fee', '3039', NULL, 17);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('3', 'Customer Compensation', '3040', NULL, 18);
INSERT INTO cs_config_feemaster
(fee_block, fee_code_description, fee_code, lofo, id)
VALUES('2', 'Processing Fee', '1900,1901,1985,1986,1800,1801,1802,1803,2005,2006,2007,2008,2009,2010,3500,3501,3502,3503,3504,3505,3506,3507,3508,3509,3510,3511,3512,3513,3514,3515,3516,3517,3518,3519,3520,3521,3522,3523,3524,3525,3526,3527,3528,3529,3530,3532,3534,3536,3538,3540,3542,3544,3546,3548,3550,3552,3554,3556,3558,3560,3562,3564,3566,6005,3590,3591,3592,3593,3594,3595,1075,
1073,1074,1076,1700,1701,1702,1703,3568,3570,3572,3574,3576,3578,3580,3582,3584,3586,3587,3610,3611,3612,3613,3618,3619,3620,3621,6010,6042,6044,6045,7005', 'Local', 3);



INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('31', 'Suspected malfunction');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('50', 'Acquirer time out');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('68', 'Acquirer time out');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('08', 'Issuer or switch is inoperative');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('91', 'Issuer or switch is inoperative');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('89', 'System malfunction');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('96', 'System malfunction');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('40', 'Unable to process reversal');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('CR', 'Unable to process reversal');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('07', 'Invalid Response');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('28', 'No action taken');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('21', 'No action taken');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('21', 'Unable to process , store , forward');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('CS', 'Unable to process , store , forward');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('20', 'Invalid Response');
INSERT INTO cs_config_declined_resp_code
(response_code, response_msg)
VALUES('22', 'Suspected malfunction');


INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('02', 'refer to card issuer special cond.');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('04', 'CAPTURE');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('06', 'unable to process tranx.');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('08', 'approved - honour with identification');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('55', 'Wrong PIN');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('62', 'restricted card');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('68', 'response recieved to late');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('71', 'Merchant Acquirer/High Risk Score');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('74', 'Deemed Response');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('91', 'Host Not Available');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('94', 'duplicate transaction');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('N0', 'unable to authorize');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('N1', 'invalid pan length');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('N8', 'overfloor limit');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('N9', 'max number of refund credit');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('O0', 'referral file full!');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('O1', 'neg file problem');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('O2', 'advance less than min');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('O3', 'delinquent');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('O4', 'over limit table');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('O5', 'private pin required');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('O6', 'mod 10 check');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('O7', 'force post');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('O8', 'bad pbf');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('O9', 'neg file problem');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('P0', 'caf file problem');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('P1', 'over daily limit');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('P2', 'capf no found');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('P3', 'advance less than min');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('P4', 'num of times used exceeded');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('P5', 'delinquent');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('P6', 'over limit table');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('P7', 'advance less amount');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('P8', 'admin card needed');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('P9', 'enter lesser amount');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('Q0', 'invalid tran date');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('Q1', 'invalid expiration date');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('Q2', 'invalid trancode');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('Q3', 'advance less than min');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('Q4', 'number of times used exceeded');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('Q5', 'delinquent');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('Q6', 'over limit table');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('Q7', 'amount over max');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('R2', 'Time Out Transaction');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('R8', 'private card on NATION NEG FILE');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('T1', 'invalid amount');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('T2', 'format error');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('T3', 'no card record');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('T5', 'CAF status 0 or 9!');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('T6', 'Bad UAF!');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('T8', 'private (no accounts)');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('89', 'Merhcnat BIN not fount');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('M1', 'International Transaction not allowed');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('M0', 'Card is not yet activated for without pin CNP transactions');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('D2', 'Deemed Acceptance ( Transaction Status is unknown)');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('D1', 'International Not allowed.');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('95', 'Batch reconciliation mismatch.');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('96', 'System Malfunction.');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('56', 'CARD AND BIN IS NOT VALID');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('88', 'Decryption error');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('81', 'Batch number Invalid');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('05', 'Do not honour');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('15', 'Invalid Issuer');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('26', 'Card Inactive');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('31', 'Bank not supported by switch ');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('60', 'Card acceptor contact Acquirer');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('63', 'Security violation');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('65', 'Exceeds transaction count limit');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('66', 'Card Acceptor call Acquirer');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('76', 'Unable to locate previous message');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('86', 'Cannot verify PIN');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('E2 ', 'Terminal does not receive AAC And TC');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('E3 ', 'ARQC validation failed by Issuer ');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('E4 ', 'TVR validation failed by Issuer ');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('E5 ', 'CVR validation failed by Issuer ');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('NK', 'Key Injection not performed on device');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('E1 ', 'AAC GENERATED ');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('F3', 'Top Up is rejected. KYC details are not present');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('61', 'Limit exceeded');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('41', 'Card Permanently Blocked');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('57', 'Transaction Not Permitted to Cardholder');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('58', 'Transaction Not Permitted to Terminal');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('34', 'Suspected Fraud');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('00', 'Approved');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('03', 'Invalid Merchant');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('12', 'Invalid Transaction');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('13', 'Invalid Amount');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('14', 'Invalid Card Number');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('22', 'Suspected Malfunction');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('30', 'Format Error');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('33', 'Expired Card');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('36', 'Restricted Card');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('43', 'Stolen Card');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('51', 'In-Sufficient Fund');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('54', 'Expired Card');
INSERT INTO aswt_error_code
(response_code, response_reason)
VALUES('75', 'Temporary Hotlisted');



INSERT INTO cms_channels_master
(channel_name, channel_id, status, created_by, updated_by, request_type, channel_details, channel_ip, encryption, created_date, updated_date, issuer_id, service_assigned, soft_delete, id, session_expiry_time, org_id, is_validate_browser, is_validate_ip, txn_id_prefix, txn_seq_name, pymt_mode)
VALUES('Shivalik Channel', 'SVK0000001', 'A', 3, 3, 'PORTAL', 'GPR', '192.168.2.77', 'Y', sysdate,sysdate, 0, NULL, 'A', 6, 15, 'GR0001', 0, 0, 'TXN', 'TXNID_SEQ', NULL);



INSERT INTO encryption_key_configuration
(id, issuer_id, channel_id, encryption_key, created_by, created_date, modified_by, modified_date, status, json_enc_client_public_key, json_enc_client_private_key, json_enc_server_public_key, json_enc_server_private_key, payload_enc_password, cardtoken_enc_password, password_enc, payload_enc_crmnextsalt, cardtoken_enc_crmnextsalt, password_enc_crmnextsalt, key_flag)
VALUES(2, 0, 'SVK0000001', 'P1a3y2C5r4a6f7tS', '4', sysdate, '4', sysdate, 'A', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzAeStpS/rXyghhBigKN+
zN2O3oaJqjzGT2/3IpHwl1M33uxiF4QSUpclKVgmiSIiPrJwjwAvRpJ5CijNPTBP
NCtEuJoMBzJLQ5K5Iw6YfD6c4Ef6sJY7z2FAqT69ZhOQ/1CTuls3PUgQ6pvqNdhr
R0gWYKnRLAH3sq44C5zeZfhaC8P8K2qkro6FI8nNoGnx5+TlTkxtTgYe6C0JRimJ
PfHL6CFdXGAVoh7VkcnwbxAZojk5UuKlCVFIlSmcbjw7zsknXbEPa7bkLLtKVmAc
y8P37XzFG1WQHqPUS2qoWMRdLUrTM5bl1qCA/RNjtvWdfR35P9sErIomEfjFPX6D
mQIDAQAB', NULL, 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQECAheWfEUj9SZdrlH1/r3bk1sEs7t7Nzjz
0g2JOZbwmFAf3GVA9ZQtgB0o5TU+ShYBmFGYnDfG7xixpUILjrt9EKA6vOVZaF5lDMOhEJ75Q77H
QAcFPnutMB1ehXY/GIgST55s4uKrhyBdrO4Ibs6+5cXCwnTq76TQ3nkfPGJR2x3zNWW4pVzEfqsU
biKBWyAUbFeifGJUtIp10fuZ3xZs1A5vF3EgZtXR9CHt6qamnjlZmr/ohQW2GEZ4GkQQXdtQZyFW
tEic9aL1+SAkBj5GCyooepS3Xq7S+GYkuj6SfpavGQnLukZyg84OEKhc1zVZgC1ve2ji/0Ceji6j
BSpQ9wIDAQAB', 'MIIEwAIBADANBgkqhkiG9w0BAQEFAASCBKowggSmAgEAAoIBAQICF5Z8RSP1Jl2uUfX+vduTWwSz
u3s3OPPSDYk5lvCYUB/cZUD1lC2AHSjlNT5KFgGYUZicN8bvGLGlQguOu30QoDq85VloXmUMw6EQ
nvlDvsdABwU+e60wHV6Fdj8YiBJPnmzi4quHIF2s7ghuzr7lxcLCdOrvpNDeeR88YlHbHfM1Zbil
XMR+qxRuIoFbIBRsV6J8YlS0inXR+5nfFmzUDm8XcSBm1dH0Ie3qpqaeOVmav+iFBbYYRngaRBBd
21BnIVa0SJz1ovX5ICQGPkYLKih6lLdertL4ZiS6PpJ+lq8ZCcu6RnKDzg4QqFzXNVmALW97aOL/
QJ6OLqMFKlD3AgMBAAECggEBAR4i/NpsLUhcs1W8Prwr9lP9HA/hsQIai/MFH7TTI1TTe/hSzyYg
9HZTRJjW2rWnq/mYqOWCUhJwXygJK5+lEUY4uJi82texenLxS+uRYFHplMM5ZRzS/6FBJ4QHPbUs
v2xbVGWwHiKWzCzdTApIvo3rVaygIMeDp9G7/rvASak3TcDc3v/lC6BJDjhQ9kc0XUAJYyMk/zYm
yfk8sJs/qmFwAx4IA6SVd74/G44eWZ4bmWkGrfkWYMm83OHzGtmjpxaRnr/TMqaCTs15hbReSq1w
P92n6f2lgEbS7ORFM8YLThyGRn1Py7UmuyaFdI+tdTNOUous/cb3kQSRW6UZkVkCgYEB3xkk25t5
b4vJWUc3lFjFLGCJob8AIWkgGvA4p55mBnWgs2xGDKaAAca5gl6JkyN3UaQsDpRMCZ3xy1Nb+nTY
00SChVR+wocSHrrHNTbgesXNC+YUPMnimj7RNyc1+CVu/T8Um3MKjc1Zm8f9OXmQ0ANDqG11EamM
Kq6S6lqhAN0CgYEBErLUbWrEDjCSwnZY9XGdqqfiG8xEoWo2AYboQ0NnNeMPtRlvoef60/ZPRovT
lYzXlIK+KeDco46YMuwzcpRKWzVFAwKdxONpKHyhhR/5/vt8Bjpgb8MrhzhnoMfbvFs5j9CQlzrf
f+0Ehr1q75BpY6JEWPJ8ms+xA4wpAjhJceMCgYEB3gBtOLpvN26ljnCysEy9NOCAkSNK0wra4GWq
cPpl2q4DjuBJJ5f7gUovjjYaVvZ8trTwy/8DuliehPl/fGyWZHsnKjW6XwV6e7RoytwcrgGp6eQ9
bsUSVEi2Xqu9ef6HNR55xfrKnd4zOG0ZZf23EQMgvuuucNfTpEYXCMExf/UCgYEA7UKSYfMuZUck
61tG2LAKSyT4EaRrvrM69DSulbI5Cf0VSwkuNzxjlAIRVNBerrPYW8hVMVyrlYULBiinAxb75i1r
bv8qf60f3b1P0Ojeh5J0+/gd5UpAZWmdb+xPaS+t1v6AdG6ALkDsgOhH3aTwsgKsX9sJLrmmnXbI
0McHAJsCgYEBfolbjH35Xcov1clH60/oT7GnavNG/EVrZTC+58TNdRffV4yax7g1Xk0bCriPwZH9
rphOXosKpH4vDxSy04HnwfalFk6sT8KLDaaNSd5S88+njw1lZsPk10UYq7UhJlS61QG7J1UVz7EW
9Wn3E22zThTrG7gzNYfKC1bmj5vLecM=', NULL, NULL, NULL, NULL, NULL, NULL, NULL);



INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1234', 'test', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'Y', 'Flat', '11.00');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1222', 'Demo', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'Y', 'Percentage', '23.00');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7767', 'dummy mcc', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'Y', 'Percentage', '10.00');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('0098', 'dummy two', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'Y', 'Flat', '40.00');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('0097', 'dummy threee', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7641', 'Furniture, Furniture Repair, and Furniture Refinishing', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7933', 'Bowling Alleys', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7941', 'Commercial Sports, Athletic Fields, Professional Sport Clubs, and Sport Promoters', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7991', 'Tourist Attractions and Exhibits', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7992', 'Golf Courses - Public', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7993', 'Video Amusement Game Supplies', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5542', 'Automated Fuel Dispensers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'Y', 'Percentage', '1.18');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5172', 'Petroleum and Petroleum Products', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'Y', 'Percentage', '1.18');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5983', 'Fuel - Fuel Oil, Wood, Coal, Liquefied Petroleum', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'Y', 'Percentage', '1.18');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9752', 'UK PETRO STATIONS ELECTRONIC HOT FILE', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'Y', 'Percentage', '1.18');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5541', 'Service Stations ( with or without ancillary services)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'Y', 'Percentage', '1.18');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5122', 'DRUGS, DRUG PROPRIETARIES AND DRUGGIST SUNDRIES', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5993', 'Cigar Stores and Stands', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7841', 'Video Tape Rental Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7995', 'Betting (including Lottery Tickets, Casino Gaming Chips, Off - track Betting and Wagers)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7994', 'Video Game Arcades Establishments', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7999', 'Recreation Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7801', 'GOVERNMENT LICENSED CASINOS (ONLINE GAMBLING)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7802', 'GOVERNMENT LICENSED HORSE &amp; DOG RACING', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7800', 'GOVERNMENT OWNED LOTTERIES', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7676', 'jhhyuhy', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4011', 'Fuel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'Y', 'Percentage', '1');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4009', 'demo mcc', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4215', 'Courier Services-Air and Ground, Freight Forwarders', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3333', 'Dummy fuel mcc', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'Y', 'Flat', '5.00');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3331', 'Dummy fuel mcc', '12', sysdate, NULL, NULL, 'PaycraftUser5', NULL, 'Y', 'Percentage', '2.00');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8989', 'Alphabetic with spmmmmmaces Allow special characters like ampersand, comma, apostrophe, Hiphen, colon, open and close bracesjjjjjjjjjjjjjjjjjjjjjjjjjj', '7', sysdate, NULL, NULL, 'PaycraftUser3', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('0742', 'Veterinary Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('0763', 'Agricultural Cooperatives', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1740', 'Insulation, Masonry, Plastering, Stonework and Tile
Setting Contractors', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('0780', 'Horticultural and Landscaping Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1520', 'General Contractors–Residential and Commercial', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1711', 'Air Conditioning, Heating and Plumbing Contractors', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1731', 'Electrical Contractors', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1750', 'Carpentry Contractors', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1761', 'Roofing and Siding, Sheet Metal Work Contractors', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1771', 'Concrete Work Contractors', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1799', 'Contractors, Special Trade Contractors–not
elsewhere classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('2741', 'Miscellaneous Publishing and Printing', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('2791', 'Typesetting, Plate Making and Related Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('2842', 'Sanitation, Polishing and Specialty Cleaning
Preparations', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4111', 'Transportation–Suburban and Local Commuter
Passenger, including Ferries', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4112', 'Passenger Railways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4119', 'Ambulance Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4121', 'Taxicabs and Limousines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4131', 'Bus Lines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4214', 'Motor Freight Carriers,Trucking–Local/Long Distance,
Moving and Storage Companies, Local Delivery', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4225', 'Public Warehousing–Farm Products, Refrigerated
Goods, Household Goods Storage', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4411', 'Cruise Lines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4457', 'Boat Leases and Boat Rentals', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4468', 'Marinas, Marine Service/Supplies', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4511', 'Air Carriers, Airlines–not elsewhere classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4582', 'Airports, Airport Terminals, Flying Fields', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4722', 'Travel Agencies and Tour Operators', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4723', 'Package Tour Operators (Germany Only)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4761', 'Telemarketing of Travel Related Services and
Vitamins', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4784', 'Bridge and Road Fees, Tolls', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4789', 'Transportation Services Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4812', 'Telecommunication Equipment Including Telephone
Sales', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4814', 'Telecommunication Services including but not
limited to prepaid phone services and recurring
phone services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4816', 'Computer Network/Information Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4821', 'Telegraph Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4829', 'Wire Transfer Money Orders (V, D, G, X)
Money Transfer (M)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4899', 'Cable, Satellite, and Other Pay Television and Radio
Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4900', 'Utilities–Electric, Gas, Heating Oil, Sanitary, Water', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5013', 'Motor Vehicle Supplies and New Parts', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5021', 'Office and Commercial Furniture', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5039', 'Construction Materials Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5044', 'Office, Photographic, Photocopy and Microfilm
Equipment', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5045', 'Computers, Computer Peripheral Equipment,
Software', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5046', 'Commercial Equipment Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5047', 'Dental/Laboratory/Medical/Ophthalmic Hospital
Equipment and Supplies', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5051', 'Metal Service Centers and Offices', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5065', 'Electrical Parts and Equipment', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5072', 'Hardware Equipment and Supplies', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5074', 'Plumbing and Heating Equipment', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5085', 'Industrial Supplies Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5094', 'Precious Stones and Metals, Watches and Jewelry', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5099', 'Durable Goods Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5111', 'Stationery, Office Supplies, Printing and Writing
Paper', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5131', 'Piece Goods, Notions, and Other Dry Goods', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5137', 'Men’s, Women’s and Children’s Uniforms and
Commercial Clothing', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5139', 'Commercial Footware', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5169', 'Chemicals and Allied Products Not Elsewhere
Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5192', 'Books, Periodicals and Newspapers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5193', 'Florists Supplies, Nursery Stock and Flowers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5198', 'Paints, Varnishes and Supplies', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5199', 'Non-Durable Goods Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5200', 'Home Supply Warehouse Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5211', 'Building Materials, Lumber Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5231', 'Glass, Paint, Wallpaper Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5251', 'Hardware Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5261', 'Lawn and Garden Supply Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5271', 'Mobile Home Dealers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5299', 'Warehouse Club Gas', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5300', 'Wholesale Clubs', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5309', 'Duty Free Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5310', 'Discount Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5311', 'Department Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5331', 'Variety Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5399', 'Miscellaneous General Merchandise Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5411', 'Grocery Stores, Supermarkets', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5422', 'Freezer and Locker Meat Provisioners', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5441', 'Candy, Nut and Confectionery Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5451', 'Dairy Products Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5462', 'Bakeries', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5499', 'Miscellaneous Food Stores–Convenience Stores,
Markets, Specialty Stores, and Vending Machines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5511', 'Automobile and Truck Dealers–Sales, Service,
Repairs, Parts and Leasing', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5521', 'Automobile and Truck Dealers–(Used Only)–Sales', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5532', 'Automotive Tire Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5533', 'Automotive Parts and Accessories Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5551', 'Boat Dealers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5561', 'Camper Dealers, Recreational and Utility Trailers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5571', 'Motorcycle Shops and Dealers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5592', 'Motor Home Dealers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5598', 'Snowmobile Dealers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5599', 'Miscellaneous Automotive, Aircraft, and Farm
Equipment Dealers–Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5611', 'Men’s and Boys’ Clothing and Accessories Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5621', 'Women’s Ready to Wear Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5631', 'Women’s Accessory and Specialty Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5641', 'Children’s and Infants’ Wear Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5651', 'Family Clothing Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5655', 'Sports Apparel, and Riding Apparel Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5661', 'Shoe Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5681', 'Furriers and Fur Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5691', 'Men’s and Women’s Clothing Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5697', 'Alterations, Mending, Seamstresses, Tailors', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5698', 'Wig and Toupee Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5699', 'Accessory and Apparel Stores–Miscellaneous', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5712', 'Equipment, Furniture and Home Furnishings Stores
(except Appliances)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5713', 'Floor Covering Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5714', 'Drapery, Upholstery and Window Coverings Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5718', 'Fireplace, Fireplace Screens and Accessories Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5719', 'Miscellaneous House Furnishing Specialty Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5722', 'Household Appliance Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5732', 'Electronics Sales', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5733', 'Music Stores–Musical Instruments, Pianos and
Sheet Music', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5734', 'Computer Software Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5735', 'Record Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5811', 'Caterers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5812', 'Eating Places and Restaurants', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5813', 'Bars, Cocktail Lounges, Discotheques, Nightclubs
and Taverns–Drinking Places (Alcoholic Beverages)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5814', 'Fast Food Restaurants', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5815', 'Digital Goods: Books, Movies, Music', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5816', 'Digital Goods: Games', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5817', 'Digital Goods: Applications (Excludes Games)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5818', 'Digital Goods: Large Digital Goods Merchant (V)
Digital Goods: Multi-Category (M)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5912', 'Drug Stores and Pharmacies', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5921', 'Package Stores–Beer, Wine and Liquor', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5931', 'Second Hand Stores, Used Merchandise Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5932', 'Antique Shops–Sales, Repairs and Restoration
Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5933', 'Pawn Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5935', 'Wrecking and Salvage Yards', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5937', 'Antique Reproduction Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5940', 'Bicycle Shops–Sales and Service', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5941', 'Sporting Goods Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5942', 'Book Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5943', 'Office, School Supply and Stationery Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5944', 'Clock, Jewelry, Watch and Silverware Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5945', 'Game, Toy and Hobby Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5946', 'Camera and Photographic Supply Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5947', 'Card, Gift, Novelty and Souvenir Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5948', 'Leather Goods and Luggage Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5949', 'Fabric, Needlework, Piece Goods and Sewing Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5950', 'Crystal and Glassware Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5960', 'Direct Marketing Insurance Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5961', 'Mail Order Houses Including Catalog Order Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5962', 'Direct Marketing–Travel Related Arrangement
Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5963', 'Door-to-Door Sales', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5964', 'Direct Marketing–Catalog Merchants', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5965', 'Direct Marketing–Combination Catalog and Retail
Merchant', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5966', 'Direct Marketing–Outbound Telemarketing Merchants', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5967', 'Direct Marketing–Inbound Telemarketing Merchants', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5968', 'Direct Marketing–Continuity/Subscription Merchants', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5969', 'Direct Marketing–Other Direct Marketers–Not
Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5970', 'Artist Supply Stores, Craft Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5971', 'Art Dealers and Galleries', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5972', 'Stamp and Coin Stores–Philatelic and Numismatic
Supplies', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5973', 'Religious Goods Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5974', 'Rubber Stamp Store', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5975', 'Hearing Aids–Sales, Service, Supply Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5976', 'Orthopedic Goods–Artificial Limb Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5977', 'Cosmetic Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5978', 'Typewriter Stores–Rentals, Sales, Service', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5992', 'Florists', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5994', 'News Dealers and Newsstands', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5995', 'Pet Shops, Pet Food and Supplies', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5996', 'Swimming Pools–Sales and Supplies', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5997', 'Electric Razor Stores–Sales and Service', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5998', 'Tent and Awning Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('5999', 'Miscellaneous and Specialty Retail Stores', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6010', 'Member Financial Institution–Manual Cash
Disbursements', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6011', 'Member Financial Institution–Automated Cash
Disbursements', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6012', 'Member Financial Institution–Merchandise And
Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6050', 'Quasi Cash–Member Financial Institution', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6051', 'Quasi Cash–Merchant', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6211', 'Securities–Brokers and Dealers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6236', 'Aero Servicio Carabobo', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6300', 'Insurance Sales, Underwriting and Premiums', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6381', 'Insurance–Premiums', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6513', 'Real Estate Agents and Managers–Rentals', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6529', 'Remote Stored Value Load — Member Financial
Institution', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6530', 'Remove Stored Value Load — Merchant', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6535', 'Value Purchase–Member Financial Institution', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6536', 'MoneySend Intracountry', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6537', 'MoneySend Intercountry', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6538', 'MoneySend Funding', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6539', 'Funding Transaction (Excluding MoneySend)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6540', 'POI (Point of Interaction) Funding Transactions
(Excluding MoneySend)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6611', 'Overpayments', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('6760', 'Savings Bonds', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7011', 'Lodging–Hotels, Motels, Resorts–not elsewhere
classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7012', 'Timeshares', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7032', 'Sporting and Recreational Camps', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7033', 'Campgrounds and Trailer Parks', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7210', 'Cleaning, Garment and Laundry Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7211', 'Laundry Services–Family and Commercial', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7216', 'Dry Cleaners', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7217', 'Carpet and Upholstery Cleaning', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7221', 'Photographic Studios', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7230', 'Barber and Beauty Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7251', 'Hat Cleaning Shops, Shoe Repair Shops, Shoe
Shine Parlors', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7261', 'Funeral Service and Crematories', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7273', 'Dating Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7276', 'Tax Preparation Service', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7277', 'Debt, Marriage, Personal–Counseling Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7278', 'Buying/Shopping Clubs, Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7280', 'Hospital Patient-Personal Funds Withdrawal', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7295', 'Babysitting Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7296', 'Clothing Rental–Costumes, Uniforms and Formal
Wear', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7297', 'Massage Parlors', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7298', 'Health and Beauty Spas', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7299', 'Other Services–Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7311', 'Advertising Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7321', 'Consumer Credit Reporting Agencies', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7332', 'Blueprinting and Photocopying Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7333', 'Commercial Art, Graphics, Photography', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7338', 'Quick Copy, Reproduction and Blueprinting Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7339', 'Stenographic and Secretarial Support Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7342', 'Exterminating and Disinfecting Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7349', 'Cleaning and Maintenance, Janitorial Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7361', 'Employment Agencies and Temporary Help Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7372', 'Computer Programming, Data Processing and
Integrated System Design Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7375', 'Information Retrieval Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7379', 'Computer Maintenance, Repair And Services–Not
Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7392', 'Consulting, Management and Public Relations
Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7393', 'Detective Agencies, Protective Agencies, Security
Services including Armored Cars, Guard Dogs', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7394', 'Equipment Rental and Leasing Services, Furniture
Rental, Tool Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7395', 'Photo Developing, Photofinishing Laboratories', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7399', 'Business Services Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7512', 'Automobile Rental Agency–Not Elsewhere
Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7513', 'Truck Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7519', 'Motor Home and Recreational Vehicle Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7523', 'Automobile Parking Lots and Garages', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7524', 'Express Payment Service Merchants–Parking Lots
and Garages', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7531', 'Automotive Body Repair Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7534', 'Tire Retreading and Repair Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7535', 'Automotive Paint Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7538', 'Automotive Service Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7542', 'Car Washes', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7549', 'Towing Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7622', 'Electronic Repair Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7623', 'Air Conditioning and Refrigeration Repair Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7629', 'Appliance Repair Shops, Electrical and Small', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7631', 'Clock, Jewelry and Watch Repair Shops', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7692', 'Welding Repair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7699', 'Miscellaneous Repair Shops and Related Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7829', 'Motion Picture and Video Tape Production and
Distribution', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7832', 'Motion Picture Theaters', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7833', 'Express Payment Service — Motion Picture Theater', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7911', 'Dance Halls, Schools and Studios', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7922', 'Theatrical Producers (Except Motion Pictures),
Ticket Agencies', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7929', 'Bands, Orchestras and Miscellaneous Entertainers–
Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7932', 'Pool and Billiard Establishments', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7996', 'Amusement Parks, Carnivals, Circuses, Carnivals,
Fortune Tellers', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7997', 'Clubs–Country Clubs, Membership (Athletic,
Recreation, Sports), Private Golf Courses', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('7998', 'Aquariums, Dolphinariums, Zoos and Seaquariums', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8011', 'Doctors–not elsewhere classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8021', 'Dentists and Orthodontists', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8031', 'Osteopathic Physicians', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8041', 'Chiropractors', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8042', 'Optometrists and Ophthalmologists', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8043', 'Opticians, Optical Goods and Eyeglasses', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8044', 'Optical Goods and Eyeglasses', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8049', 'Chiropodists, Podiatrists', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8050', 'Nursing and Personal Care Facilities', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8062', 'Hospitals', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8071', 'Dental and Medical Laboratories', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8099', 'Health Practitioners, Medical Services–Not
Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8111', 'Attorneys, Legal Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8211', 'Schools, Elementary and Secondary', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8220', 'Colleges, Universities, Professional Schools and
Junior Colleges', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8241', 'Schools, Correspondence', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8244', 'Schools, Business and Secretarial', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8249', 'Schools, Trade and Vocational', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8299', 'Schools And Educational Services–Not Elsewhere
Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8351', 'Child Care Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8398', 'Organizations, Charitable and Social Service', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8641', 'Associations–Civic, Social and Fraternal', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8651', 'Organizations, Political', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8661', 'Organizations, Religious', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8675', 'Automobile Associations', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8699', 'Organizations, Membership–Not Elsewhere
Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8734', 'Testing Laboratories (Non-Medical)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8743', 'Testing Laboratories (Non-Medical)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8911', 'Architectural, Engineering and Surveying Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8931', 'Accounting, Auditing and Bookkeeping Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('8999', 'Professional Services–Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9034', 'I-Purchasing Pilot', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9211', 'Court Costs Including Alimony and Child Support', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9222', 'Fines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9223', 'Bail and Bond Payments', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9311', 'Tax Payments', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9399', 'Government Services–Not Elsewhere Classified', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9401', 'I-Purchasing Pilot', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9402', 'Postal Services–Government Only', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9405', 'Intra-Government Purchases–Government Only', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9700', 'Automated Referral Service', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9701', 'Visa Credential Server', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9702', 'GCAS Emergency Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9751', 'UK Supermarkets, Electronic Hot File', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9754', 'Gambling-Horse, Dog Racing, State Lottery', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9950', 'Intra-Company Purchases', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3000', 'United Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3001', 'American Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3002', 'Pan American', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3003', 'Eurofly', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3004', 'Dragon Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3005', 'British Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3006', 'Japan Air Lines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3007', 'Air France', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3008', 'Lufthansa German Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3009', 'Air Canada', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3010', 'Royal Dutch Airlines (KLM Airlines)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3011', 'Aeroflot', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3012', 'Qantas', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3013', 'Alitalia', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3014', 'Saudi Arabian Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3015', 'Swiss International Air Lines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3016', 'Scandinavian Airline System (SAS)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3017', 'South African Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3018', 'Varig', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3019', 'Germanwings', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3020', 'Air India', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3021', 'Air Algerie', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3022', 'Philippine Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3023', 'Mexicana', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3024', 'Pakistan International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3025', 'Air New Zealand Ltd.
International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3026', 'Emirates Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3027', 'Union De Transports Aeriens
(UTA/interair)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3028', 'Air Malta', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3029', 'SN Brussels Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3030', 'Aerolineas Argentinas', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3031', 'Olympic Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3032', 'El Al', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3033', 'Ansett Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3034', 'Etihadair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3035', 'TAP Air Portugal (TAP)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3036', 'Viacao Aerea Sao Pãulo (VASP)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3037', 'Egyptair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3038', 'Kuwait Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3039', 'Avianca', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3040', 'Gulf Air (Bahrain)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3041', 'Balkan-Bulgarian Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3042', 'Finnair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3043', 'Aer Lingus', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3044', 'Air Lanka', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3045', 'Nigeria Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3046', 'Cruzeiro Do Sul', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3047', 'Turk Hava Yollari', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3048', 'Royal Air Maroc', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3049', 'Tunis Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3050', 'Icelandair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3051', 'Austrian Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3052', 'LAN Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3053', 'Aviacion Y Comercio (AVIACO)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3054', 'Linea Aerea Del Cobre (LADECO)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3055', 'Lloyd Aero Boliviano (LAB)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3056', 'Jet Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3057', 'Virgin America', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3058', 'Delta', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3059', 'DBA Airline', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3060', 'Northwest Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3061', 'Continental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3062', 'Hapag-Lloyd Express', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3063', 'US Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3064', 'Adria Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3065', 'Airinter', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3066', 'Southwest Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3067', 'Vanguard Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3068', 'Air Astana', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3069', 'Sun Country Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3071', 'Air British Columbia', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3072', 'Cebu Pacific Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3075', 'Singapore Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3076', 'Aeromexico', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3077', 'Thai Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3078', 'China Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3079', 'Jetstar Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3081', 'NordAir', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3082', 'Korean Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3083', 'Air Afrique', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3084', 'Eva Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3085', 'Midwest Express Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3086', 'Carnival Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3087', 'Metro Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3088', 'Croatia Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3089', 'Transaero', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3090', 'Uni Airways Corporation', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3094', 'Zambia Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3096', 'Air Zimbabwe Corp', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3097', 'Spanair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3098', 'Asiana Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3099', 'Cathay Pacific', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3100', 'Malaysian Airline System', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3102', 'Iberia', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3103', 'Garuda', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3106', 'Braathens S.A.F.E.', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3110', 'Wings Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3111', 'British Midland', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3112', 'Windward Island', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3115', 'Tower Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3117', 'Venezolana International De
Aviacion', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3118', 'Valley Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3125', 'Tan Sahsa', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3126', 'Talair PTY Ltd.', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3127', 'Taca International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3129', 'Surinam Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3130', 'Sunworld International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3131', 'VLM Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3132', 'Frontier Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3133', 'Sunbelt Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3135', 'Sudan Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3136', 'Qatar Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3137', 'Singleton', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3138', 'Simmons Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3143', 'Scenic Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3144', 'Virgin Atlantic', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3145', 'San Juan', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3146', 'Luxair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3148', 'Air Littoral S.A.', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3151', 'Air Zaire', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3154', 'Princeville', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3156', 'Go Fly Ltd.', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3159', 'Provincetown-Boston Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3161', 'All Nipon Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3164', 'Norontair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3165', 'New York Helicopter', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3167', 'Aero Continente', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3170', 'Mount Cook', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3171', 'Canadian Airlines International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3172', 'Nationair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3174', 'Jetblue Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3175', 'Middle East Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3176', 'Metroflight Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3177', 'AirTran Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3178', 'Mesa Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3180', 'Westjet Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3181', 'Malev', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3182', 'LOT (Polish Airlines)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3183', 'Oman Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3184', 'LIAT', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3185', 'Linea Aeropostal Venezolana
(LAV)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3186', 'Lineas Aereas Paraguayas (LAP)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3187', 'LACSA (Costa Rica)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3188', 'Virgin Express', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3190', 'Jugoslav Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3191', 'Island Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3193', 'Indian Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3196', 'Hawaiian Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3197', 'Havasu Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3200', 'Guyana Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3203', 'Golden Pacific Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3204', 'Freedom Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3206', 'China Eastern Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3211', 'Norwegian Air Shuttle', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3212', 'Dominicana De Aviacion', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3213', 'Malmo Aviation', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3215', 'Dan Air Services', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3216', 'Cumberland Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3217', 'Ceskoslovenske Aerolinie (CSA)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3218', 'Crown Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3219', 'Compania Panamena De Aviacion
(COPA)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3220', 'Compania Faucett', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3221', 'Transportes Aeros Militares', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3222', 'Command Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3223', 'Comair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3226', 'Skyways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3228', 'Cayman Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3229', 'SAETA (Sociedad Ecuatorianos
De Transportes Aereos)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3231', 'SAHSA (Servicio Aero De
Honduras)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3233', 'Capitol Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3234', 'Caribbean Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3235', 'Brockway Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3236', 'Air Arabia Airline', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3238', 'Bemidji Aviation', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3239', 'Bar Harbor Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3240', 'Bahamasair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3241', 'Aviateca', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3242', 'Avensa', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3243', 'Austrian Air Service', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3245', 'Easyjet Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3246', 'Ryanair', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3247', 'Gol Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3248', 'Tam Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3251', 'Aloha Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3252', 'Antilean Airlines (ALM)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3253', 'America West', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3254', 'U.S. Air Shuttle', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3256', 'Alaska Airlines Inc.', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3259', 'American Trans Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3260', 'Spirit Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3261', 'Air China', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3262', 'Reno Air', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3263', 'Aero Servicio Carabobo', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3266', 'Air Seychelles', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3267', 'Air Panama International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3273', 'Rica Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3274', 'Inter Nor Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3280', 'Air Jamaica', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3281', 'Air Djibouti', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3282', 'Air Djibouti', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3284', 'Aero Virgin Islands', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3285', 'Aero Peru', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3286', 'Aero Nicaraguensis', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3287', 'Aero Coach Aviation', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3292', 'Cyprus Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3293', 'Ecuatoriana', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3294', 'Ethiopian Airlines', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3295', 'Kenya Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3296', 'Air Berlin', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3297', 'Tarom Romanian Air Transport', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3298', 'Air Mauritius', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3299', 'Wideroes Flyveselskap', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3351', 'Affiliated Auto Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3352', 'American International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3353', 'Brooks Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3354', 'Action Auto Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3355', 'Sixt Car Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3357', 'Hertz', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3359', 'Payless Car Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3360', 'Snappy Car Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3361', 'Airways', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3362', 'Altra Auto Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3364', 'Agency Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3366', 'Budget Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3368', 'Holiday Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3370', 'Rent-A-Wreck', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3374', 'Accent Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3376', 'Ajax Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3380', 'Triangle Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3381', 'Europcar', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3385', 'Tropical Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3386', 'Showcase Rental Cars', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3387', 'Alamo Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3388', 'Merchants Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3389', 'Avis Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3390', 'Dollar Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3391', 'Europe By Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3393', 'National Car Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3394', 'Kemwell Group', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3395', 'Thrifty Car Rental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3396', 'Tilden Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3398', 'Econo-Car Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3400', 'Auto Host Rental Cars', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3405', 'Enterprise Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3409', 'General Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3412', 'A1 Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3414', 'Godfrey National', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3420', 'Ansa International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3421', 'Allstate', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3423', 'AVCAR', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3425', 'Automate', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3427', 'Avon Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3428', 'Carey', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3429', 'Insurance Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3430', 'Major Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3431', 'Replacement Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3432', 'Reserve Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3433', 'Ugly Duckling Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3434', 'USA', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3435', 'Value Rent-A-Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3436', 'Autohansa', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3437', 'Cite', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3438', 'Interent', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3439', 'Milleville', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3441', 'Advantage Rent A Car', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3501', 'Holiday Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3502', 'Best Western', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3503', 'Sheraton', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3504', 'Hilton', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3505', 'Trusthouse Forte', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3506', 'Golden Tulip', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3507', 'Friendship Inns International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3508', 'Quality International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3509', 'Marriott', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3510', 'Days Inns Of America', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3511', 'Arabella Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3512', 'Intercontinental', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3513', 'Westin Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3514', 'Amerisuites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3515', 'Rodeway Inns International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3516', 'La Quinta Motor Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3517', 'Americana Hotels Corporation', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3518', 'Sol Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3519', 'PLM/ETAP International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3520', 'Meridien', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3521', 'Crest Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3522', 'Tokyo Group', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3523', 'Peninsula Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3524', 'Welcomgroup', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3525', 'Dunfey Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3526', 'Prince Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3527', 'Downtowner Passport', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3528', 'Thunderbird/Red Lion', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3529', 'CP (Canadian Pacific)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3530', 'Renaissance Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3531', 'Kauai Coconut Beach Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3532', 'Royal Kona Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3533', 'Park Inn by Radisson', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3534', 'Southern Pacific Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3535', 'Hilton International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3536', 'AMFAC Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3537', 'Ana Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3538', 'Concorde Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3539', 'Summerfield Suites Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3540', 'Iberotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3541', 'Hotel Okura', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3542', 'Royal Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3543', 'Four Seasons', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3544', 'Cigahotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3545', 'Shangri-La International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3546', 'Hotel Sierra', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3547', 'Breakers Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3548', 'Hotels Melia', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3549', 'Auberge Des Governeurs', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3550', 'Regal 8 Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3551', 'Mirage Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3552', 'Coast Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3553', 'Parks Inns International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3554', 'Pinehurst Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3555', 'Treasure Island Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3556', 'Barton Creek Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3557', 'Manhattan East Suite Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3558', 'Jolly Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3559', 'Candlewood Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3560', 'Aladdin Resort and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3561', 'Golden Nugget', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3562', 'Comfort Hotel International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3563', 'Journeys End Motels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3564', 'Sams Town Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3565', 'Relax Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3566', 'Garden Place Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3567', 'Soho Grand Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3568', 'Ladbroke Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3569', 'Tribeca Grand Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3570', 'Grand Met Forum Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3571', 'Grand Wailea Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3572', 'Miyako Hotel/Kintetsu', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3573', 'Sandman Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3574', 'Venture Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3575', 'Vagabond Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3576', 'La Quinta Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3577', 'Mandarin International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3578', 'Frankenmuth Bavarian', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3579', 'Hotel Mercure', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3580', 'Hotel Del Coronado', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3581', 'Delta Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3582', 'California Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3583', 'Radisson BLU', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3584', 'Princess Hotels International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3585', 'Hungar Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3586', 'Sokos Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3587', 'Doral Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3588', 'Helmsley Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3589', 'Doral Golf Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3590', 'Fairmont Hotels Corporation', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3591', 'Sonesta International Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3592', 'Omni International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3593', 'Cunard Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3594', 'Arizona Biltmore', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3595', 'Hospitality Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3596', 'Wynn Las Vegas', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3597', 'Riverside Resort and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3598', 'Regent Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3599', 'Pannonia Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3600', 'Saddlebrook Resort–Tampa', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3601', 'Tradewinds Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3602', 'Hudson Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3603', 'Noahs Hotel (Melbourne)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3604', 'Hilton Garden Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3605', 'Jurys Doyle Hotel Group', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3606', 'Jefferson Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3607', 'Fontainebleau Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3608', 'Gaylord Opryland', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3609', 'Gaylord Palms', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3610', 'Gaylord Texan', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3611', 'C MON INN', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3612', 'Moevenpick', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3613', 'Microtel Inn and Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3614', 'AmericInn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3615', 'Travelodge Motels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3616', 'Hermitage Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3617', 'America’s Best Value Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3618', 'Great Wolf', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3619', 'Aloft', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3620', 'Binions Horseshoe Club', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3621', 'Extended Stay', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3622', 'Merlin Hotel (Perth)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3623', 'Dorint Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3624', 'Lady Luck Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3625', 'Hotel Universal', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3626', 'Studio Plus', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3627', 'Extended Stay America', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3628', 'Excalibur Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3629', 'Dan Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3630', 'Extended Stay Deluxe', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3631', 'Sleep Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3632', 'The Phoenician', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3633', 'Rank Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3634', 'Swissotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3635', 'Reso Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3636', 'Sarova Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3637', 'Ramada Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3638', 'Howard Johnson', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3639', 'Mount Charlotte Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3640', 'Hyatt Hotels/International', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3641', 'Sofitel Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3642', 'Novotel Sieh (Accor)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3643', 'Steigenberger', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3644', 'Econo-Travel Motor Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3645', 'Queens Moat Houses', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3646', 'Swallow Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3647', 'Grupo Hotels HUSA SA', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3648', 'De Vere Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3649', 'Radisson', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3650', 'Red Roof Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3651', 'Imperial London Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3652', 'Embassy Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3653', 'Penta Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3654', 'Loews Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3655', 'Scandic Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3656', 'Sara Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3657', 'Oberoi Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3658', 'New Otani Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3659', 'Taj Hotels Intl', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3660', 'Knights Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3661', 'Metropole Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3662', 'Circus Circus Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3663', 'Hoteles El Presidente', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3664', 'Flag Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3665', 'Hampton Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3666', 'Stakis Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3667', 'Luxor Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3668', 'Maritim', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3669', 'Eldorado Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3670', 'Arcade', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3671', 'Arctia', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3672', 'Campanile', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3673', 'Ibusz Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3674', 'Rantasipi Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3675', 'Interhotel Cedok', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3676', 'Monte Carlo Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3677', 'Climat De France', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3678', 'Cumulus Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3679', 'Silver Legacy Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3680', 'Hoteis Othan', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3681', 'Adams Mark', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3682', 'Sahara Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3683', 'Bradbury Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3684', 'Budget Host Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3685', 'Budgetel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3686', 'Suisse Chalet', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3687', 'Clarion Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3688', 'Compri Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3689', 'Consort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3690', 'Courtyard by Marriott', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3691', 'Dillon Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3692', 'Doubletree', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3693', 'Drury Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3694', 'Economy Inns Of America', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3695', 'Embassy Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3696', 'Excel Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3697', 'Fairfield Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3698', 'Harley Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3699', 'Midway Motor Lodge', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3700', 'Motel 6', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3701', 'La Mansion Del Rio', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3702', 'Registry Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3703', 'Residence Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3704', 'Royce Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3705', 'Sandman Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3706', 'Shilo Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3707', 'Shoneys Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3708', 'Virgin River Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3709', 'Super 8 Motel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3710', 'Ritz-Carlton', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3711', 'Flag Inns (Australia)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3712', 'Buffalo Bills Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3713', 'Quality Pacific Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3714', 'Four Seasons (Australia)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3715', 'Fairfield Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3716', 'Carlton Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3717', 'City Lodge Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3718', 'Karos Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3719', 'Protea Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3720', 'Southern Sun Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3721', 'Conrad Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3722', 'Wyndham', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3723', 'Rica Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3724', 'Inter Nor Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3725', 'Sea Pines Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3726', 'Rio Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3727', 'Broadmoor Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3728', 'Ballys Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3729', 'John Ascuagas Nugget', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3730', 'MGM Grand Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3731', 'Harrah’s Hotels and Casinos', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3732', 'Opryland Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3733', 'Boca Raton Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3734', 'Harvey Bristol Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3735', 'Masters Economy Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3736', 'Colorado Belle Edgewater Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3737', 'Riviera Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3738', 'Tropicana Resort and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3739', 'Woodside Hotels and Resorts', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3740', 'Towneplace Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3741', 'Millennium Broadway Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3742', 'Club Med', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3743', 'Biltmore Hotel and Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3744', 'Carefree Resorts', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3745', 'St. Regis Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3746', 'The Eliot Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3747', 'Club Corporation/Club Resorts', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3748', 'Wellesley Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3749', 'Beverly Hills Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3750', 'Crowne Plaza Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3751', 'Homewood Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3752', 'Peabody Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3753', 'Greenbriar Resorts', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3754', 'Amelia Island Plantation', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3755', 'Homestead', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3757', 'Canyon Ranch', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3758', 'Kahala Mandarin Oriental Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3759', 'Orchid At Mauna Lai', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3760', 'Halekulani Hotel/Waikiki Parc', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3761', 'Primadonna Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3762', 'Whiskey Pete’s Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3763', 'Chateau Elan Winery and Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3764', 'Beau Rivage Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3765', 'Bellagio', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3766', 'Fremont Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3767', 'Main Street Station Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3768', 'Silver Star Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3769', 'Stratosphere Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3770', 'Springhill Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3771', 'Caesars Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3772', 'Nemacolin Woodlands', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3773', 'Venetian Resort Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3774', 'New York-New York Hotel and Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3775', 'Sands Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3776', 'Nevele Grande Resort and Country Club', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3777', 'Mandalay Bay Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3778', 'Four Points Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3779', 'W Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3780', 'Disneyland Resorts', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3781', 'Patricia Grand Resort Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3782', 'Rosen Hotel and Resorts', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3783', 'Town and Country Resort and Convention Center', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3784', 'First Hospitality Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3785', 'Outrigger Hotels and Resorts', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3786', 'Ohana Hotels of Hawaii', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3787', 'Caribe Royal Resort Suite and Villas', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3788', 'Ala Moana Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3789', 'Smugglers Notch Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3790', 'Raffles Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3791', 'Staybridge Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3792', 'Claridge Casino Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3793', 'The Flamingo Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3794', 'Grand Casino Hotels', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3795', 'Paris Las Vegas Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3796', 'Peppermill Hotel Casino', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3797', 'Atlantic City Hilton', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3798', 'Embassy Vacation Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3799', 'Hale Koa Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3800', 'Homestead Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3801', 'Wilderness Hotel and Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3802', 'The Palace Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3803', 'The Wigwam Golf Resort and Spa', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3804', 'The Diplomat Country Club and Spa', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3805', 'The Atlantic', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3806', 'Princeville Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3807', 'Element', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3808', 'LXR (Luxury Resorts)', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3809', 'Settle Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3810', 'La Costa Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3811', 'Premier Travel Inns', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3812', 'Hyatt Place', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3813', 'Hotel Indigo', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3814', 'The Roosevelt Hotel NY', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3815', 'Nickelodeon Family Suites by Holiday Inn', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3816', 'Home2Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3817', 'Affinia', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3818', 'Mainstay Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3819', 'Oxford Suites', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3820', 'Jumeirah Essex House', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3821', 'Caribe Royal', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3822', 'Crossland', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3823', 'Grand Sierra Resort', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3824', 'Aria', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3825', 'Vdara', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3826', 'Autograph', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3827', 'Galt House', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3828', 'Cosmopolitan of Las Vegas', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3829', 'Country Inn By Carlson', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3830', 'Park Plaza Hotel', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('3831', 'Waldorf', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('4813', 'Key-Entry Telecom Merchant providing single
local and long-distance phone calls using a central
access number', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'N', NULL, NULL);
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('1998', 'TestQA', '8', sysdate, NULL, NULL, 'PaycraftUser4', NULL, 'Y', 'Flat', '10.00');
INSERT INTO mcc_master
(mcc_code, mcc_name, created_by, created_date, updated_by, updated_date, created_by_name, updated_by_name, is_surcharge, surcharge_type, surcharge_value)
VALUES('9887', 'dummy ahe', '1', sysdate, NULL, NULL, 'PaycraftUser', NULL, 'Y', 'Flat', '1.40');




INSERT INTO aswt_reversal_reason_code
(reason_code, reason_msg, reason_abbr)
VALUES('1001', 'Online Reversal', 'ONL');
INSERT INTO aswt_reversal_reason_code
(reason_code, reason_msg, reason_abbr)
VALUES('1002', 'Manual Reversal', 'MAN');
INSERT INTO aswt_reversal_reason_code
(reason_code, reason_msg, reason_abbr)
VALUES('1003', 'File Reversal', 'FILE');
INSERT INTO aswt_reversal_reason_code
(reason_code, reason_msg, reason_abbr)
VALUES('1004', 'Forced Reversal', 'FORC');
INSERT INTO aswt_reversal_reason_code
(reason_code, reason_msg, reason_abbr)
VALUES('1005', 'Void Reversal', 'VOID');



INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Afganistan', 'AFA', '004');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Albania', 'ALL', '008');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Aland Islands', 'ALA', '248');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Algeria', 'DZA', '012');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('American Samoa', 'ASM', '016');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Andorra', 'AND', '020');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Angola', 'AGO', '024');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Anguilla', 'AIA', '660');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Antarctica', 'ATA', '010');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Antigua and Barbuda', 'ATG', '028');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Argentina', 'ARG', '032');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Armenia', 'ARM', '051');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Aruba', 'ABW', '533');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Australia', 'AUS', '036');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Austria', 'AUT', '040');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Azerbaijan', 'AZE', '031');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Bahamas', 'BHS', '044');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Bahrain', 'BHR', '048');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Bangladesh', 'BGD', '050');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Barbados', 'BRB', '052');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Belarus', 'BLR', '112');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Belgium', 'BEL', '056');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Belize', 'BLZ', '084');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Benin', 'BEN', '204');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Bermuda', 'BMU', '060');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Bhutan', 'BTN', '064');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Bolivia', 'BOL', '068');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Bosnia and Herzegovina', 'BIH', '070');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Botswana', 'BWA', '072');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Bouvet Island', 'BVT', '074');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Brazil', 'BRA', '076');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('British Virgin Islands', 'VGB', '092');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('British Indian Ocean Territory', 'IOT', '086');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Brunei Darussalam', 'BRN', '096');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Bulgaria', 'BGR', '100');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Burkina Faso', 'BFA', '854');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Burundi', 'BDI', '108');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Cambodia', 'KHM', '116');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Cameroon', 'CMR', '120');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Canada', 'CAN', '124');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Cape Verde', 'CPV', '132');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Cayman Islands', 'CYM', '136');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Central African Republic', 'CAF', '140');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Chad', 'TCD', '148');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Chile', 'CHL', '152');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('China', 'CHN', '156');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Hong Kong, SAR China', 'HKG', '344');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Macao, SAR China', 'MAC', '446');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Christmas Island', 'CXR', '162');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Cocos (Keeling) Islands', 'CCK', '166');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Colombia', 'COL', '170');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Comoros', 'COM', '174');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Congo (Brazzaville)', 'COG', '178');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Congo, (Kinshasa)', 'COD', '180');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Cook Islands', 'COK', '184');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Costa Rica', 'CRI', '188');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Croatia', 'HRV', '191');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Cuba', 'CUB', '192');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Cyprus', 'CYP', '196');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Czech Republic', 'CZE', '203');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Denmark', 'DNK', '208');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Djibouti', 'DJI', '262');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Dominica', 'DMA', '212');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Dominican Republic', 'DOM', '214');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Ecuador', 'ECU', '218');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Egypt', 'EGY', '818');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('El Salvador', 'SLV', '222');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Equatorial Guinea', 'GNQ', '226');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Eritrea', 'ERI', '232');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Estonia', 'EST', '233');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Ethiopia', 'ETH', '231');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Falkland Islands (Malvinas)', 'FLK', '238');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Faroe Islands', 'FRO', '234');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Fiji', 'FJI', '242');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Finland', 'FIN', '246');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('France', 'FRA', '250');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('French Guiana', 'GUF', '254');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('French Polynesia', 'PYF', '258');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('French Southern Territories', 'ATF', '260');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Gabon', 'GAB', '266');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Gambia', 'GMB', '270');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Georgia', 'GEO', '268');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Germany', 'DEU', '276');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Ghana', 'GHA', '288');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Gibraltar', 'GIB', '292');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Greece', 'GRC', '300');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Greenland', 'GRL', '304');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Grenada', 'GRD', '308');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Guadeloupe', 'GLP', '312');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Guam', 'GUM', '316');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Guatemala', 'GTM', '320');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Guernsey', 'GGY', '831');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Guinea', 'GIN', '324');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Guinea-Bissau', 'GNB', '624');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Guyana', 'GUY', '328');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Haiti', 'HTI', '332');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Heard and Mcdonald Islands', 'HMD', '334');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Holy See(Vatican City State)', 'VAT', '336');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Honduras', 'HND', '340');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Hungary', 'HUN', '348');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Iceland', 'ISL', '352');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Indonesia', 'IDN', '360');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Iran, Islamic Republic of', 'IRN', '364');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Iraq', 'IRQ', '368');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Ireland', 'IRL', '372');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Isle of Man', 'IMN', '833');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Israel', 'ISR', '376');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Italy', 'ITA', '380');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Jamaica', 'JAM', '388');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Japan', 'JPN', '392');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Jersey', 'JEY', '832');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Jordan', 'JOR', '400');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Kazakhstan', 'KAZ', '398');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Kenya', 'KEN', '404');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Kiribati', 'KIR', '296');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Korea (North)', 'PRK', '408');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Korea (South)', 'KOR', '410');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Kuwait', 'KWT', '414');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Kyrgyzstan', 'KGZ', '417');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Lao PDR', 'LAO', '418');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Latvia', 'LVA', '428');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Lebanon', 'LBN', '422');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Lesotho', 'LSO', '426');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Liberia', 'LBR', '430');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Libya', 'LBY', '434');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Liechtenstein', 'LIE', '438');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Lithuania', 'LTU', '440');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Luxembourg', 'LUX', '442');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Macedonia(Former Yug. Rep.)', 'MKD', '807');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Madagascar', 'MDG', '450');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Malawi', 'MWI', '454');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Malaysia', 'MYS', '458');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Maldives', 'MDV', '462');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Mali', 'MLI', '466');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Malta', 'MLT', '470');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Marshall Islands', 'MHL', '584');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Martinique', 'MTQ', '474');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Mauritania', 'MRT', '478');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Mauritius', 'MUS', '480');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Mayotte', 'MYT', '175');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Mexico', 'MEX', '484');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Micronesia', 'FSM', '583');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Moldova', 'MDA', '498');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Monaco', 'MCO', '492');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Mongolia', 'MNG', '496');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Montenegro', 'MNE', '499');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Montserrat', 'MSR', '500');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Morocco', 'MAR', '504');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Mozambique', 'MOZ', '508');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Myanmar', 'MMR', '104');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Namibia', 'NAM', '516');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Nauru', 'NRU', '520');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Nepal', 'NPL', '524');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Netherlands', 'NLD', '528');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Netherlands Antilles', 'ANT', '530');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('New Caledonia', 'NCL', '540');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('New Zealand', 'NZL', '554');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Nicaragua', 'NIC', '558');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Niger', 'NER', '562');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Nigeria', 'NGA', '566');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Niue', 'NIU', '570');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Norfolk Island', 'NFK', '574');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Northern Mariana Islands', 'MNP', '580');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Norway', 'NOR', '578');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Oman', 'OMN', '512');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Pakistan', 'PAK', '586');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Palau', 'PLW', '585');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Palestinian Territory', 'PSE', '275');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Panama', 'PAN', '591');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Papua New Guinea', 'PNG', '598');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Paraguay', 'PRY', '600');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Peru', 'PER', '604');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Philippines', 'PHL', '608');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Pitcairn', 'PCN', '612');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Poland', 'POL', '616');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Portugal', 'PRT', '620');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Puerto Rico', 'PRI', '630');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Qatar', 'QAT', '634');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Réunion', 'REU', '638');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Romania', 'ROU', '642');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Russian Federation', 'RUS', '643');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Rwanda', 'RWA', '646');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Saint-Barthélemy', 'BLM', '652');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Saint Helena', 'SHN', '654');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Saint Kitts and Nevis', 'KNA', '659');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Saint Lucia', 'LCA', '662');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Saint-Martin (French part)', 'MAF', '663');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Saint Pierre and Miquelon', 'SPM', '666');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Saint Vincent and Grenadines', 'VCT', '670');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Samoa', 'WSM', '882');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('San Marino', 'SMR', '674');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Sao Tome and Principe', 'STP', '678');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Saudi Arabia', 'SAU', '682');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Senegal', 'SEN', '686');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Serbia', 'SRB', '688');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Seychelles', 'SYC', '690');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Sierra Leone', 'SLE', '694');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Singapore', 'SGP', '702');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Slovakia', 'SVK', '703');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Slovenia', 'SVN', '705');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Solomon Islands', 'SLB', '090');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Somalia', 'SOM', '706');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('South Africa', 'ZAF', '710');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('South Georgia and the South Sandwich Islands', 'SGS', '239');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('South Sudan', 'SSD', '728');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Spain', 'ESP', '724');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Sri Lanka', 'LKA', '144');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Sudan', 'SDN', '736');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Suriname', 'SUR', '740');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Svalbard and Jan Mayen Islands', 'SJM', '744');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Swaziland', 'SWZ', '748');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Sweden', 'SWE', '752');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Switzerland', 'CHE', '756');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Syrian Arab Republic (Syria)', 'SYR', '760');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Taiwan Republic of China', 'TWN', '158');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Tajikistan', 'TJK', '762');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Tanzania', 'TZA', '834');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Thailand', 'THA', '764');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Timor-Leste', 'TLS', '626');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Togo', 'TGO', '768');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Tokelau', 'TKL', '772');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Tonga', 'TON', '776');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Trinidad and Tobago', 'TTO', '780');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Tunisia', 'TUN', '788');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Turkey', 'TUR', '792');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Turkmenistan', 'TKM', '795');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Turks and Caicos Islands', 'TCA', '796');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Tuvalu', 'TUV', '798');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Uganda', 'UGA', '800');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Ukraine', 'UKR', '804');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('United Arab Emirates', 'ARE', '784');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('United Kingdom', 'GBR', '826');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('United States of America', 'USA', '840');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('US Minor Outlying Islands', 'UMI', '581');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Uruguay', 'URY', '858');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Uzbekistan', 'UZB', '860');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Vanuatu', 'VUT', '548');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Venezuela(Bolivarian Republic)', 'VEN', '862');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Viet Nam', 'VNM', '704');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Virgin Islands, US', 'VIR', '850');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Wallis and Futuna Islands', 'WLF', '876');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Western Sahara', 'ESH', '732');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Yemen', 'YEM', '887');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Zambia', 'ZMB', '894');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('Zimbabwe', 'ZWE', '716');
INSERT INTO country_code_map
(country, country_code_alpha, country_code_num)
VALUES('India', 'INR', '356');




INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(1, 'RuPay', 'Platinum');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(2, 'RuPay', 'Classic');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(3, 'MasterCard', 'Standard');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(4, 'MasterCard', 'Titanium');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(8, 'visa', 'Classic');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(9, 'visa', 'Gold');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(10, 'visa', 'Platinum');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(11, 'visa', 'Signature');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(12, 'visa', 'Infinite');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(5, 'MasterCard', 'Platinum');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(6, 'MasterCard', 'World');
INSERT INTO prd_network_bin_type_master
(id, network_type, bin_type)
VALUES(7, 'MasterCard', 'World-Elite');



INSERT INTO prd_embossing_mode_master
(id, embossing_mode_type, created_date, created_by, updated_date, updated_by)
VALUES(70168, 'Normal perso', sysdate, 0, sysdate, 0);
INSERT INTO prd_embossing_mode_master
(id, embossing_mode_type, created_date, created_by, updated_date, updated_by)
VALUES(70169, 'Instant perso', sysdate, 0,sysdate, 0);
INSERT INTO prd_embossing_mode_master
(id, embossing_mode_type, created_date, created_by, updated_date, updated_by)
VALUES(70170, 'Both',sysdate, 0,sysdate, 0);

