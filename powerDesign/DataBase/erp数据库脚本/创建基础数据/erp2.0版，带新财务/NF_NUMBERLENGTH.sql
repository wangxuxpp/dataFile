prompt PL/SQL Developer import file
prompt Created on 2012年5月1日 by Administrator
set feedback off
set define off
prompt Disabling triggers for NF_NUMBERLENGTH...
alter table NF_NUMBERLENGTH disable all triggers;
prompt Deleting NF_NUMBERLENGTH...
delete from NF_NUMBERLENGTH;
commit;
prompt Loading NF_NUMBERLENGTH...
insert into NF_NUMBERLENGTH (id, c_name, n_number, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, '单价长度', 3, 1, 'admin', to_date('26-03-2012 13:00:15', 'dd-mm-yyyy hh24:mi:ss'), 23, '财务', to_date('30-03-2012 16:34:45', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_NUMBERLENGTH (id, c_name, n_number, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, '金额长度', 2, 1, 'admin', to_date('26-03-2012 13:00:35', 'dd-mm-yyyy hh24:mi:ss'), 23, '财务', to_date('30-03-2012 16:35:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 2 records loaded
prompt Enabling triggers for NF_NUMBERLENGTH...
alter table NF_NUMBERLENGTH enable all triggers;
set feedback on
set define on
prompt Done.
