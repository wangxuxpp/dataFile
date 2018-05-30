prompt PL/SQL Developer import file
prompt Created on 2012Äê5ÔÂ1ÈÕ by Administrator
set feedback off
set define off
prompt Disabling triggers for SYS_FORMDEFANDMODEL...
alter table SYS_FORMDEFANDMODEL disable all triggers;
prompt Deleting SYS_FORMDEFANDMODEL...
delete from SYS_FORMDEFANDMODEL;
commit;
prompt Loading SYS_FORMDEFANDMODEL...
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1303, 7, 721, 3, 'WX', to_date('27-04-2012 16:00:49', 'dd-mm-yyyy hh24:mi:ss'), 3, 'WX', to_date('27-04-2012 16:00:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1304, 7, 741, 3, 'WX', to_date('27-04-2012 16:01:04', 'dd-mm-yyyy hh24:mi:ss'), 3, 'WX', to_date('27-04-2012 16:01:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (964, 103, 904, 21, 'GHZ', to_date('27-03-2012 12:25:30', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('27-03-2012 12:25:30', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (985, 102, 922, 1, 'admin', to_date('28-03-2012 14:00:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('28-03-2012 14:00:30', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (989, 122, 902, 1, 'admin', to_date('28-03-2012 17:54:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('28-03-2012 17:54:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1002, 122, 942, 1, 'admin', to_date('29-03-2012 12:23:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('29-03-2012 12:23:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1121, 122, 1061, 1, 'admin', to_date('09-04-2012 11:01:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('09-04-2012 11:01:43', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1064, 122, 1001, 21, 'GHZ', to_date('01-04-2012 13:53:50', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('01-04-2012 13:53:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1101, 102, 1041, 21, 'GHZ', to_date('06-04-2012 17:00:29', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('06-04-2012 17:00:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1161, 122, 1101, 1, 'admin', to_date('11-04-2012 14:31:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('11-04-2012 14:31:07', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1181, 30, 1121, 1, 'admin', to_date('13-04-2012 12:19:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('13-04-2012 12:19:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1182, 122, 1122, 1, 'admin', to_date('13-04-2012 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('13-04-2012 13:07:24', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (963, 102, 903, 1, 'admin', to_date('27-03-2012 12:06:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('27-03-2012 12:06:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1026, 122, 963, 21, 'GHZ', to_date('30-03-2012 17:28:37', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('30-03-2012 17:28:37', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1083, 141, 1002, 21, 'GHZ', to_date('05-04-2012 12:09:36', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('05-04-2012 12:09:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1065, 122, 1004, 21, 'GHZ', to_date('01-04-2012 15:27:05', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('01-04-2012 15:27:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1066, 122, 1003, 21, 'GHZ', to_date('01-04-2012 15:27:05', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('01-04-2012 15:27:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1081, 122, 1021, 1, 'admin', to_date('05-04-2012 10:01:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('05-04-2012 10:01:56', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1141, 122, 1081, 1, 'admin', to_date('10-04-2012 09:46:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('10-04-2012 09:46:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1005, 122, 945, 1, 'admin', to_date('29-03-2012 15:44:20', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('29-03-2012 15:44:20', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (965, 104, 906, 1, 'admin', to_date('27-03-2012 16:46:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('27-03-2012 16:46:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1062, 102, 1002, 21, 'GHZ', to_date('01-04-2012 13:30:23', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('01-04-2012 13:30:23', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1004, 122, 944, 1, 'admin', to_date('29-03-2012 15:44:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('29-03-2012 15:44:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1023, 122, 961, 21, 'GHZ', to_date('30-03-2012 15:42:53', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('30-03-2012 15:42:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1085, 122, 1023, 21, 'GHZ', to_date('05-04-2012 16:06:28', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('05-04-2012 16:06:28', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1241, 122, 1181, 21, 'GHZ', to_date('19-04-2012 11:00:41', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('19-04-2012 11:00:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1142, 122, 1082, 1, 'admin', to_date('10-04-2012 13:59:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('10-04-2012 13:59:55', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (688, 81, 648, 1, 'admin', to_date('30-01-2012 17:15:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:15:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (689, 81, 651, 1, 'admin', to_date('30-01-2012 17:15:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:15:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (691, 81, 654, 1, 'admin', to_date('30-01-2012 17:15:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:15:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (694, 81, 650, 1, 'admin', to_date('30-01-2012 17:16:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:16:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (695, 81, 645, 1, 'admin', to_date('30-01-2012 17:16:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:16:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (696, 81, 655, 1, 'admin', to_date('30-01-2012 17:16:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:16:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (706, 81, 665, 1, 'admin', to_date('30-01-2012 17:50:08', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:50:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (741, 4, 220, 1, 'admin', to_date('16-02-2012 15:05:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('16-02-2012 15:05:45', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (822, 2, 762, 1, 'admin', to_date('23-02-2012 15:29:02', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('23-02-2012 15:29:02', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (841, 9, 781, 1, 'admin', to_date('24-02-2012 09:41:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('24-02-2012 09:41:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (761, 7, 701, 1, 'admin', to_date('21-02-2012 11:36:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('21-02-2012 11:36:47', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (861, 2, 801, 1, 'admin', to_date('06-03-2012 16:01:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('06-03-2012 16:01:24', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (803, 7, 743, 1, 'admin', to_date('22-02-2012 12:21:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-02-2012 12:21:30', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (821, 7, 761, 1, 'admin', to_date('23-02-2012 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('23-02-2012 11:08:43', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (862, 7, 42, 1, 'admin', to_date('07-03-2012 16:16:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-03-2012 16:16:58', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (863, 30, 802, 1, 'admin', to_date('07-03-2012 16:22:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-03-2012 16:22:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (882, 30, 822, 1, 'admin', to_date('08-03-2012 09:52:19', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('08-03-2012 09:52:19', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (884, 30, 824, 1, 'admin', to_date('08-03-2012 11:11:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('08-03-2012 11:11:58', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (885, 30, 825, 1, 'admin', to_date('08-03-2012 11:11:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('08-03-2012 11:11:58', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (903, 30, 843, 1, 'admin', to_date('09-03-2012 11:09:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('09-03-2012 11:09:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (922, 11, 862, 1, 'admin', to_date('15-03-2012 10:46:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('15-03-2012 10:46:10', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (883, 30, 823, 1, 'admin', to_date('08-03-2012 11:00:49', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('08-03-2012 11:00:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (902, 30, 842, 1, 'admin', to_date('09-03-2012 11:01:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('09-03-2012 11:01:55', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (923, 11, 863, 1, 'admin', to_date('15-03-2012 11:32:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('15-03-2012 11:32:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (924, 7, 864, 1, 'admin', to_date('15-03-2012 13:35:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('15-03-2012 13:35:22', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (307, 8, 285, 1, 'admin', to_date('15-08-2011 13:50:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('15-08-2011 13:50:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (313, 8, 290, 1, 'admin', to_date('16-08-2011 11:11:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('16-08-2011 11:11:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (342, 8, 322, 1, 'admin', to_date('19-08-2011 14:35:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('19-08-2011 14:35:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (362, 30, 342, 1, 'admin', to_date('22-08-2011 11:52:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-08-2011 11:52:58', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (364, 8, 344, 1, 'admin', to_date('22-08-2011 14:53:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-08-2011 14:53:11', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (365, 8, 345, 1, 'admin', to_date('22-08-2011 16:03:58', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-08-2011 16:03:58', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (82, 30, 89, 1, 'admin', to_date('26-08-2011 10:31:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-08-2011 10:31:45', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (50, 3, 384, 1, 'admin', to_date('24-08-2011 14:06:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('24-08-2011 14:06:43', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (311, 30, 288, 1, 'admin', to_date('16-08-2011 09:51:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('16-08-2011 09:51:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (324, 8, 304, 1, 'admin', to_date('17-08-2011 11:32:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('17-08-2011 11:32:55', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (361, 30, 341, 1, 'admin', to_date('22-08-2011 09:27:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-08-2011 09:27:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (312, 8, 289, 1, 'admin', to_date('16-08-2011 10:32:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('16-08-2011 10:32:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (318, 8, 294, 1, 'admin', to_date('16-08-2011 16:08:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('16-08-2011 16:08:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (319, 8, 292, 1, 'admin', to_date('16-08-2011 16:08:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('16-08-2011 16:08:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (320, 8, 293, 1, 'admin', to_date('16-08-2011 16:08:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('16-08-2011 16:08:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (325, 30, 305, 1, 'admin', to_date('17-08-2011 14:41:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('17-08-2011 14:41:33', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (381, 8, 361, 1, 'admin', to_date('23-08-2011 09:22:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('23-08-2011 09:22:23', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (483, 8, 441, 1, 'admin', to_date('30-08-2011 12:12:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-08-2011 12:12:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (503, 8, 461, 1, 'admin', to_date('01-09-2011 09:50:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('01-09-2011 09:50:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (507, 5, 465, 1, 'admin', to_date('05-09-2011 16:43:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('05-09-2011 16:43:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (508, 2, 466, 1, 'admin', to_date('05-09-2011 17:37:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('05-09-2011 17:37:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (550, 11, 504, 1, 'admin', to_date('07-09-2011 11:24:04', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-09-2011 11:24:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (601, 5, 561, 1, 'admin', to_date('16-10-2011 20:00:37', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('16-10-2011 20:00:37', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (621, 4, 581, 1, 'admin', to_date('23-10-2011 15:39:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('23-10-2011 15:39:28', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (661, 9, 621, 1, 'admin', to_date('05-12-2011 14:43:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('05-12-2011 14:43:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (642, 5, 602, 1, 'admin', to_date('23-10-2011 20:12:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('23-10-2011 20:12:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (641, 5, 601, 1, 'admin', to_date('23-10-2011 20:00:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('23-10-2011 20:00:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (643, 30, 603, 1, 'admin', to_date('23-10-2011 21:53:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('23-10-2011 21:53:07', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (581, 8, 541, 1, 'admin', to_date('14-10-2011 17:44:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('14-10-2011 17:44:55', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (582, 8, 542, 1, 'admin', to_date('14-10-2011 18:13:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('14-10-2011 18:13:13', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (561, 9, 521, 1, 'admin', to_date('13-09-2011 15:57:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('13-09-2011 15:57:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (546, 11, 463, 1, 'admin', to_date('07-09-2011 09:56:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-09-2011 09:56:16', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (547, 11, 464, 1, 'admin', to_date('07-09-2011 09:56:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-09-2011 09:56:16', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (548, 11, 462, 1, 'admin', to_date('07-09-2011 09:56:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-09-2011 09:56:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (549, 11, 484, 1, 'admin', to_date('07-09-2011 09:57:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-09-2011 09:57:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (314, 8, 291, 1, 'admin', to_date('16-08-2011 14:45:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('16-08-2011 14:45:24', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (326, 8, 306, 1, 'admin', to_date('17-08-2011 17:37:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('17-08-2011 17:37:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (363, 8, 343, 1, 'admin', to_date('22-08-2011 12:12:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-08-2011 12:12:03', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (366, 8, 346, 1, 'admin', to_date('22-08-2011 17:30:53', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-08-2011 17:30:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (321, 8, 301, 1, 'admin', to_date('17-08-2011 09:53:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('17-08-2011 09:53:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (322, 8, 302, 1, 'admin', to_date('17-08-2011 10:56:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('17-08-2011 10:56:45', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (441, 30, 421, 1, 'admin', to_date('29-08-2011 09:58:52', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('29-08-2011 09:58:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (48, 30, 49, 1, 'admin', to_date('24-08-2011 14:06:47', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('24-08-2011 14:06:47', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (63, 30, 69, 1, 'admin', to_date('25-08-2011 12:10:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('25-08-2011 12:10:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (404, 30, 383, 1, 'admin', to_date('24-08-2011 10:53:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('24-08-2011 10:53:54', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (927, 11, 867, 1, 'admin', to_date('19-03-2012 11:58:41', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('19-03-2012 11:58:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (945, 9, 885, 1, 'admin', to_date('26-03-2012 11:09:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 11:09:30', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (304, 1, 282, 1, 'admin', to_date('15-08-2011 10:11:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('15-08-2011 10:11:54', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
commit;
prompt 100 records committed...
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (308, 30, 284, 1, 'admin', to_date('15-08-2011 13:57:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('15-08-2011 13:57:28', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (207, 4, 64, 1, 'admin', to_date('08-08-2011 14:36:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('08-08-2011 14:36:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (231, 3, 85, 1, 'admin', to_date('09-08-2011 13:28:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('09-08-2011 13:28:54', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (233, 3, 87, 1, 'admin', to_date('09-08-2011 17:40:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('09-08-2011 17:40:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (260, 30, 121, 1, 'admin', to_date('11-08-2011 17:58:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('11-08-2011 17:58:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (305, 30, 283, 1, 'admin', to_date('15-08-2011 10:30:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('15-08-2011 10:30:06', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (309, 8, 286, 1, 'admin', to_date('15-08-2011 15:34:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('15-08-2011 15:34:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (682, 30, 642, 1, 'admin', to_date('30-01-2012 16:33:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 16:33:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (684, 81, 649, 1, 'admin', to_date('30-01-2012 17:09:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:09:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (690, 81, 653, 1, 'admin', to_date('30-01-2012 17:15:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:15:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (692, 81, 656, 1, 'admin', to_date('30-01-2012 17:16:05', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:16:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (693, 81, 657, 1, 'admin', to_date('30-01-2012 17:16:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:16:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (701, 81, 643, 1, 'admin', to_date('30-01-2012 17:34:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:34:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (702, 81, 664, 1, 'admin', to_date('30-01-2012 17:42:29', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:42:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (703, 81, 662, 1, 'admin', to_date('30-01-2012 17:42:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:42:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (704, 81, 661, 1, 'admin', to_date('30-01-2012 17:42:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:42:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (705, 81, 663, 1, 'admin', to_date('30-01-2012 17:42:46', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:42:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (681, 4, 641, 1, 'admin', to_date('30-01-2012 15:56:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 15:56:27', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (685, 81, 644, 1, 'admin', to_date('30-01-2012 17:15:10', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:15:10', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (686, 81, 646, 1, 'admin', to_date('30-01-2012 17:15:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:15:18', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (687, 81, 647, 1, 'admin', to_date('30-01-2012 17:15:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:15:26', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (41, 7, 43, 1, 'admin', to_date('08-07-2011 16:58:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('08-07-2011 16:58:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (42, 7, 44, 1, 'admin', to_date('08-07-2011 16:58:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('08-07-2011 16:58:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (44, 7, 41, 1, 'admin', to_date('08-07-2011 16:58:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('08-07-2011 16:58:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (102, 2, 83, 1, 'admin', to_date('19-07-2011 11:09:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('19-07-2011 11:09:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (103, 2, 102, 1, 'admin', to_date('19-07-2011 16:50:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('19-07-2011 16:50:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (70, 2, 63, 1, 'admin', to_date('11-07-2011 16:38:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('11-07-2011 16:38:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (71, 2, 61, 1, 'admin', to_date('11-07-2011 16:38:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('11-07-2011 16:38:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (72, 2, 62, 1, 'admin', to_date('11-07-2011 16:38:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('11-07-2011 16:38:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (81, 2, 81, 1, 'admin', to_date('18-07-2011 10:23:55', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('18-07-2011 10:23:55', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (984, 121, 104, 21, 'GHZ', to_date('28-03-2012 10:40:14', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('28-03-2012 10:40:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (45, 4, 107, 1, 'admin', to_date('20-07-2011 16:31:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('20-07-2011 16:31:56', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (39, 2, 105, 1, 'admin', to_date('20-07-2011 14:08:39', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('20-07-2011 14:08:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (106, 7, 38, 1, 'admin', to_date('21-07-2011 11:30:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('21-07-2011 11:30:16', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (126, 2, 146, 1, 'admin', to_date('21-07-2011 17:20:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('21-07-2011 17:20:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (62, 30, 68, 1, 'admin', to_date('25-08-2011 09:59:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('25-08-2011 09:59:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (148, 3, 166, 1, 'admin', to_date('22-07-2011 13:54:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-07-2011 13:54:01', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (38, 2, 20, 1, 'admin', to_date('20-07-2011 12:38:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('20-07-2011 12:38:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (149, 4, 169, 1, 'admin', to_date('22-07-2011 17:08:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-07-2011 17:08:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (47, 4, 109, 1, 'admin', to_date('20-07-2011 17:18:59', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('20-07-2011 17:18:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (61, 5, 125, 1, 'admin', to_date('21-07-2011 09:44:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('21-07-2011 09:44:45', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (198, 4, 218, 1, 'admin', to_date('26-07-2011 15:33:35', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-07-2011 15:33:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (219, 3, 239, 1, 'admin', to_date('29-07-2011 17:12:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('29-07-2011 17:12:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (199, 3, 219, 1, 'admin', to_date('27-07-2011 11:57:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('27-07-2011 11:57:21', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (222, 4, 242, 1, 'admin', to_date('01-08-2011 10:36:36', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('01-08-2011 10:36:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (224, 3, 244, 1, 'admin', to_date('01-08-2011 13:21:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('01-08-2011 13:21:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (225, 4, 245, 1, 'admin', to_date('01-08-2011 17:59:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('01-08-2011 17:59:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (20, 11, 48, 1, 'admin', to_date('19-03-2012 11:35:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('19-03-2012 11:35:01', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (40, 11, 18, 1, 'admin', to_date('19-03-2012 11:36:11', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('19-03-2012 11:36:11', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (925, 11, 866, 1, 'admin', to_date('19-03-2012 11:53:22', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('19-03-2012 11:53:22', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (926, 11, 865, 1, 'admin', to_date('19-03-2012 11:53:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('19-03-2012 11:53:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (49, 3, 168, 1, 'admin', to_date('24-08-2011 14:06:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('24-08-2011 14:06:13', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (51, 3, 382, 1, 'admin', to_date('24-08-2011 14:07:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('24-08-2011 14:07:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (52, 3, 381, 1, 'admin', to_date('24-08-2011 18:12:07', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('24-08-2011 18:12:07', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (84, 30, 90, 1, 'admin', to_date('26-08-2011 11:29:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-08-2011 11:29:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (421, 30, 401, 1, 'admin', to_date('28-08-2011 15:27:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('28-08-2011 15:27:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (223, 3, 243, 1, 'admin', to_date('01-08-2011 10:54:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('01-08-2011 10:54:23', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (242, 3, 262, 1, 'admin', to_date('02-08-2011 12:33:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('02-08-2011 12:33:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (241, 3, 261, 1, 'admin', to_date('02-08-2011 10:31:03', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('02-08-2011 10:31:03', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (201, 4, 221, 1, 'admin', to_date('27-07-2011 15:10:17', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('27-07-2011 15:10:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (46, 4, 108, 1, 'admin', to_date('20-07-2011 17:12:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('20-07-2011 17:12:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (986, 122, 923, 1, 'admin', to_date('28-03-2012 14:31:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('28-03-2012 14:31:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (101, 7, 101, 1, 'admin', to_date('19-07-2011 09:22:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('19-07-2011 09:22:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (19, 9, 19, 1, 'admin', to_date('06-07-2011 18:12:56', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('06-07-2011 18:12:56', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, 9, 18, 1, 'admin', to_date('04-07-2011 13:46:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:46:21', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, 9, 17, 1, 'admin', to_date('04-07-2011 13:46:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:46:21', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (3, 9, 12, 1, 'admin', to_date('04-07-2011 13:46:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:46:21', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (4, 9, 15, 1, 'admin', to_date('04-07-2011 13:46:21', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:46:21', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (5, 9, 14, 1, 'admin', to_date('04-07-2011 13:46:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:46:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (6, 9, 16, 1, 'admin', to_date('04-07-2011 13:46:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:46:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (7, 9, 13, 1, 'admin', to_date('04-07-2011 13:46:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:46:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (8, 9, 11, 1, 'admin', to_date('04-07-2011 13:46:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:46:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (9, 1, 5, 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (10, 1, 8, 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (11, 1, 3, 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (12, 1, 10, 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (13, 1, 7, 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (14, 1, 4, 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:48:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (15, 1, 2, 1, 'admin', to_date('04-07-2011 13:49:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:49:06', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (16, 1, 1, 1, 'admin', to_date('04-07-2011 13:49:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:49:06', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (17, 1, 9, 1, 'admin', to_date('04-07-2011 13:49:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:49:06', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (18, 1, 6, 1, 'admin', to_date('04-07-2011 13:49:06', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 13:49:06', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (83, 2, 82, 1, 'admin', to_date('18-07-2011 15:29:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('18-07-2011 15:29:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (23, 5, 23, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (24, 5, 24, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (25, 5, 25, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (26, 5, 26, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (27, 5, 27, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (28, 5, 28, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (29, 5, 29, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (30, 5, 31, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (31, 5, 32, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (32, 5, 33, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (33, 5, 34, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (34, 5, 35, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (35, 5, 36, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (36, 5, 37, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (37, 5, 30, 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-07-2011 14:27:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (983, 102, 21, 21, 'GHZ', to_date('28-03-2012 10:33:27', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('28-03-2012 10:33:27', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (967, 102, 904, 1, 'admin', to_date('27-03-2012 17:33:28', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('27-03-2012 17:33:28', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
commit;
prompt 200 records committed...
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (968, 102, 906, 21, 'GHZ', to_date('27-03-2012 17:34:55', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('27-03-2012 17:34:55', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1041, 122, 981, 1, 'admin', to_date('31-03-2012 11:17:33', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('31-03-2012 11:17:33', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (982, 102, 921, 1, 'admin', to_date('28-03-2012 09:57:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('28-03-2012 09:57:54', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (987, 102, 104, 21, 'GHZ', to_date('28-03-2012 14:48:09', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('28-03-2012 14:48:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (988, 122, 924, 1, 'admin', to_date('28-03-2012 15:06:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('28-03-2012 15:06:30', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1003, 122, 943, 1, 'admin', to_date('29-03-2012 12:33:57', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('29-03-2012 12:33:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1021, 122, 905, 21, 'GHZ', to_date('30-03-2012 14:40:27', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('30-03-2012 14:40:27', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1022, 122, 941, 21, 'GHZ', to_date('30-03-2012 14:40:27', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('30-03-2012 14:40:27', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1025, 102, 962, 1, 'admin', to_date('30-03-2012 16:34:16', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-03-2012 16:34:16', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1082, 122, 1022, 1, 'admin', to_date('05-04-2012 10:30:50', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('05-04-2012 10:30:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1201, 122, 1141, 21, 'GHZ', to_date('16-04-2012 14:18:20', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('16-04-2012 14:18:20', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1221, 122, 1161, 21, 'GHZ', to_date('17-04-2012 12:09:38', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('17-04-2012 12:09:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1222, 122, 1162, 21, 'GHZ', to_date('17-04-2012 14:22:01', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('17-04-2012 14:22:01', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1223, 161, 1163, 21, 'GHZ', to_date('17-04-2012 15:09:11', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('17-04-2012 15:09:11', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1261, 122, 1201, 1, 'admin', to_date('20-04-2012 13:17:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('20-04-2012 13:17:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1262, 102, 1202, 1, 'admin', to_date('24-04-2012 14:13:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('24-04-2012 14:13:01', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1263, 102, 1203, 1, 'admin', to_date('24-04-2012 14:13:18', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('24-04-2012 14:13:18', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
insert into SYS_FORMDEFANDMODEL (id, i_sys_formshowdefault_id, i_sys_modelwin_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1302, 122, 1242, 1, 'admin', to_date('27-04-2012 12:27:26', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('27-04-2012 12:27:26', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNULL');
commit;
prompt 218 records loaded
prompt Enabling triggers for SYS_FORMDEFANDMODEL...
alter table SYS_FORMDEFANDMODEL enable all triggers;
set feedback on
set define on
prompt Done.
