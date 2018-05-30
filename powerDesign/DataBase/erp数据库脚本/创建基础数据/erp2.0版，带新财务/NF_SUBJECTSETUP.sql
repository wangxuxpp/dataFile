prompt PL/SQL Developer import file
prompt Created on 2012��5��1�� by Administrator
set feedback off
set define off
prompt Disabling triggers for NF_SUBJECTSETUP...
alter table NF_SUBJECTSETUP disable all triggers;
prompt Deleting NF_SUBJECTSETUP...
delete from NF_SUBJECTSETUP;
commit;
prompt Loading NF_SUBJECTSETUP...
insert into NF_SUBJECTSETUP (id, c_level, i_length, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, '����', 4, 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('30-03-2012 11:32:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTSETUP (id, c_level, i_length, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, '����', 2, 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTSETUP (id, c_level, i_length, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (3, '�ļ�', 3, 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 21, 'GHZ', to_date('01-04-2012 11:20:07', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTSETUP (id, c_level, i_length, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (4, '�弶', 2, 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTSETUP (id, c_level, i_length, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (5, '����', 2, 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTSETUP (id, c_level, i_length, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (6, '�߼�', 1, 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 23, '����', to_date('28-03-2012 10:13:37', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTSETUP (id, c_level, i_length, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (7, '�˼�', 1, 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 23, '����', to_date('28-03-2012 10:13:47', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTSETUP (id, c_level, i_length, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (8, '�ż�', 0, 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_SUBJECTSETUP (id, c_level, i_length, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (9, 'ʮ��', 0, 1, 'admin', to_date('26-03-2012 13:01:13', 'dd-mm-yyyy hh24:mi:ss'), 23, '����', to_date('28-03-2012 10:07:26', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 9 records loaded
prompt Enabling triggers for NF_SUBJECTSETUP...
alter table NF_SUBJECTSETUP enable all triggers;
set feedback on
set define on
prompt Done.
