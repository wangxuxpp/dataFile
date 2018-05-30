prompt PL/SQL Developer import file
prompt Created on 2012年3月26日 by Administrator
set feedback off
set define off
prompt Disabling triggers for SYS_ENVIRONMENT...
alter table SYS_ENVIRONMENT disable all triggers;
prompt Deleting SYS_ENVIRONMENT...
delete from SYS_ENVIRONMENT;
commit;
prompt Loading SYS_ENVIRONMENT...
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (8, 'SCRAP_ID', 'I', '21', '废料类型:对应BASE_WARECLASS表ID值,【全部类型：0，其他为相应的类别ID】', 0, 'admin', to_date('09-03-2012', 'dd-mm-yyyy'), 0, 'admin', to_date('09-03-2012', 'dd-mm-yyyy'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, 'STOCK_FINISHED', 'S', '成品库', '成品库的库房名称:对应BASE_STOCKCLASS表的C_NAME字段', 0, 'admin', to_date('02-02-2012 16:08:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-02-2012 16:08:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, 'STOCK_EQUIP', 'S', '办公用品库', '设备库名称：对应BASE_STOCKCLASS表的C_NAME字段', 0, 'admin', to_date('02-02-2012 16:13:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-02-2012 16:13:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (3, 'WARECLASS_ID', 'I', '0', '设备物品类型:对应BASE_WARECLASS表ID值,【全部类型：0，其他为相应的类别ID】', 0, 'admin', to_date('02-02-2012 16:14:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-02-2012 16:14:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (4, 'IS_PROD_CLEARING', 'B', 'true', '是否使用工作中心清场单', 0, 'admin', to_date('02-02-2012 16:17:15', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-02-2012 16:17:15', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (5, 'IS_PROD_WATERTEST', 'B', 'true', '是否使用制水检测单', 0, 'admin', to_date('28-02-2012 12:00:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('28-02-2012 12:12:03', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (6, 'IS_PROD_ENVIRONMENTTEST', 'B', 'true', '是否使用生产环境检测单', 0, 'admin', to_date('28-02-2012 12:00:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('28-02-2012 12:12:06', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (7, 'IS_QUALITY_SECONDEXAMINE', 'B', 'true', '是否存在二次请验', 0, 'admin', to_date('06-03-2012 09:36:37', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('06-03-2012 09:36:37', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (9, 'S_PROCEEDSSMODEL', 'B', 'true', '收款单发起单据【true: 发货指令;false:出库单】', 1, 'admin', to_date('26-03-2012 14:59:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 14:59:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (10, 'S_PAYMENTMODEL', 'B', 'true', '付款单发起单据【true:到货通知单 ; false:入库单】', 1, 'admin', to_date('26-03-2012 14:59:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 14:59:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 10 records loaded
prompt Enabling triggers for SYS_ENVIRONMENT...
alter table SYS_ENVIRONMENT enable all triggers;
set feedback on
set define on
prompt Done.
