prompt PL/SQL Developer import file
prompt Created on 2012年3月26日 by Administrator
set feedback off
set define off
prompt Disabling triggers for NF_SUBJECTCLASS...
alter table NF_SUBJECTCLASS disable all triggers;
prompt Deleting NF_SUBJECTCLASS...
delete from NF_SUBJECTCLASS;
commit;
prompt Loading NF_SUBJECTCLASS...
insert into NF_SUBJECTCLASS (id, c_name, c_contain, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, '资产类', '1', 1, '1', to_date('26-03-2012 15:45:27', 'dd-mm-yyyy hh24:mi:ss'), 1, '1', to_date('26-03-2012 15:45:27', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTCLASS (id, c_name, c_contain, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, '负债类', '2', 1, '1', to_date('26-03-2012 15:46:07', 'dd-mm-yyyy hh24:mi:ss'), 1, '1', to_date('26-03-2012 15:46:07', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTCLASS (id, c_name, c_contain, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (3, '所有者权益类', '3', 1, '1', to_date('26-03-2012 15:46:21', 'dd-mm-yyyy hh24:mi:ss'), 1, '1', to_date('26-03-2012 15:46:21', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTCLASS (id, c_name, c_contain, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (4, '成本类', '4', 1, '1', to_date('26-03-2012 15:46:32', 'dd-mm-yyyy hh24:mi:ss'), 1, '1', to_date('26-03-2012 15:46:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTCLASS (id, c_name, c_contain, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (5, '损益类', '5', 1, '1', to_date('26-03-2012 15:46:42', 'dd-mm-yyyy hh24:mi:ss'), 1, '1', to_date('26-03-2012 15:46:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 5 records loaded
prompt Enabling triggers for NF_SUBJECTCLASS...
alter table NF_SUBJECTCLASS enable all triggers;
set feedback on
set define on
prompt Done.
