prompt PL/SQL Developer import file
prompt Created on 2012��5��1�� by Administrator
set feedback off
set define off
prompt Disabling triggers for SYS_FORMSHOWDEFAULT...
alter table SYS_FORMSHOWDEFAULT disable all triggers;
prompt Deleting SYS_FORMSHOWDEFAULT...
delete from SYS_FORMSHOWDEFAULT;
commit;
prompt Loading SYS_FORMSHOWDEFAULT...
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (161, '��������', 'common', 1, 'admin', to_date('17-04-2012 11:39:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('17-04-2012 11:39:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'gggl');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (102, '�������', 'nfbaseinfo', 1, 'admin', to_date('27-03-2012 11:17:54', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('27-03-2012 11:17:54', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cwjc');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (11, 'ͳ�Ʒ���', 'totalAndAnalysis', 1, 'admin', to_date('07-09-2011 09:55:42', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('07-09-2011 09:55:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'tjfx');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, '�ɹ�����', 'buy', 1, 'admin', to_date('04-07-2011 12:03:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 12:03:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cggl');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (4, '�ⷿ����', 'stock', 1, 'admin', to_date('04-07-2011 12:03:45', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 12:03:45', 'dd-mm-yyyy hh24:mi:ss'), 0, 'kfgl');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (8, '������Դ', 'human', 1, 'admin', to_date('05-07-2011 10:59:38', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('16-08-2011 14:47:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 'rlzy');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, '������Ϣ', 'baseinfo', 1, 'admin', to_date('04-07-2011 11:59:25', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 11:59:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 'jcxx');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (3, '��������', 'prodbaseinfo', 1, 'admin', to_date('04-07-2011 12:03:30', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-07-2011 11:46:10', 'dd-mm-yyyy hh24:mi:ss'), 0, 'scgl');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (5, '���۹���', 'sell', 1, 'admin', to_date('04-07-2011 12:04:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 12:04:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'xsgl');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (7, '��������', 'quality', 1, 'admin', to_date('04-07-2011 12:04:44', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 12:04:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'zlgl');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (9, 'ϵͳ����', 'sysconfig', 1, 'admin', to_date('04-07-2011 12:05:15', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 12:05:15', 'dd-mm-yyyy hh24:mi:ss'), 0, 'xtpz');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (30, '����ҵ��', 'prodbusiness', 1, 'admin', to_date('22-07-2011 11:46:32', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('22-07-2011 11:46:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'scyw');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (81, '�豸����', 'equip', 1, 'admin', to_date('30-01-2012 16:50:27', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 16:50:27', 'dd-mm-yyyy hh24:mi:ss'), 0, 'sbgl');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (82, '������¯', 'boiler', 1, 'admin', to_date('30-01-2012 17:16:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('30-01-2012 17:16:24', 'dd-mm-yyyy hh24:mi:ss'), 1, 'zqgl');
insert into SYS_FORMSHOWDEFAULT (id, c_name, c_control_id, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (122, '����ҵ��', 'nfbusiness', 1, 'admin', to_date('28-03-2012 14:30:43', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('24-04-2012 14:10:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cwyw');
commit;
prompt 15 records loaded
prompt Enabling triggers for SYS_FORMSHOWDEFAULT...
alter table SYS_FORMSHOWDEFAULT enable all triggers;
set feedback on
set define on
prompt Done.
