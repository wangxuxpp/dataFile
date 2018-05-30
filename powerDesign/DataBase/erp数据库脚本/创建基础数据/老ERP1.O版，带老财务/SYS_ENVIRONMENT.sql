prompt PL/SQL Developer import file
prompt Created on 2012��3��26�� by Administrator
set feedback off
set define off
prompt Disabling triggers for SYS_ENVIRONMENT...
alter table SYS_ENVIRONMENT disable all triggers;
prompt Deleting SYS_ENVIRONMENT...
delete from SYS_ENVIRONMENT;
commit;
prompt Loading SYS_ENVIRONMENT...
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (8, 'SCRAP_ID', 'I', '21', '��������:��ӦBASE_WARECLASS��IDֵ,��ȫ�����ͣ�0������Ϊ��Ӧ�����ID��', 0, 'admin', to_date('09-03-2012', 'dd-mm-yyyy'), 0, 'admin', to_date('09-03-2012', 'dd-mm-yyyy'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, 'STOCK_FINISHED', 'S', '��Ʒ��', '��Ʒ��Ŀⷿ����:��ӦBASE_STOCKCLASS���C_NAME�ֶ�', 0, 'admin', to_date('02-02-2012 16:08:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-02-2012 16:08:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, 'STOCK_EQUIP', 'S', '�칫��Ʒ��', '�豸�����ƣ���ӦBASE_STOCKCLASS���C_NAME�ֶ�', 0, 'admin', to_date('02-02-2012 16:13:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-02-2012 16:13:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (3, 'WARECLASS_ID', 'I', '0', '�豸��Ʒ����:��ӦBASE_WARECLASS��IDֵ,��ȫ�����ͣ�0������Ϊ��Ӧ�����ID��', 0, 'admin', to_date('02-02-2012 16:14:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-02-2012 16:14:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (4, 'IS_PROD_CLEARING', 'B', 'true', '�Ƿ�ʹ�ù��������峡��', 0, 'admin', to_date('02-02-2012 16:17:15', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-02-2012 16:17:15', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (5, 'IS_PROD_WATERTEST', 'B', 'true', '�Ƿ�ʹ����ˮ��ⵥ', 0, 'admin', to_date('28-02-2012 12:00:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('28-02-2012 12:12:03', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (6, 'IS_PROD_ENVIRONMENTTEST', 'B', 'true', '�Ƿ�ʹ������������ⵥ', 0, 'admin', to_date('28-02-2012 12:00:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('28-02-2012 12:12:06', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (7, 'IS_QUALITY_SECONDEXAMINE', 'B', 'true', '�Ƿ���ڶ�������', 0, 'admin', to_date('06-03-2012 09:36:37', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('06-03-2012 09:36:37', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (9, 'S_PROCEEDSSMODEL', 'B', 'true', '�տ���𵥾ݡ�true: ����ָ��;false:���ⵥ��', 1, 'admin', to_date('26-03-2012 14:59:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 14:59:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_ENVIRONMENT (id, c_name, c_type, c_value, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (10, 'S_PAYMENTMODEL', 'B', 'true', '������𵥾ݡ�true:����֪ͨ�� ; false:��ⵥ��', 1, 'admin', to_date('26-03-2012 14:59:34', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 14:59:34', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 10 records loaded
prompt Enabling triggers for SYS_ENVIRONMENT...
alter table SYS_ENVIRONMENT enable all triggers;
set feedback on
set define on
prompt Done.
