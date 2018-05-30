delete from sys_role ;
delete from sys_user ;
delete from sys_userclass ;
delete from sys_userandclass ;
commit;
insert into sys_role (ID, C_NAME, C_MEMO, I_OPER_ID, C_OPER_NAME, D_INSERT_DATE, I_OPER_MODIFYID, C_OPER_MODIFYNAME, D_MODIFY_DATE, I_DEL, C_ALIASCODE)
values (1, 'system', 'system', 1, 'admin', to_date('04-07-2011 10:47:01', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 10:47:01', 'dd-mm-yyyy hh24:mi:ss'), 0, 'system');

insert into sys_user (ID, I_SYS_ROLE_ID, C_NAME, C_PASSWORD, C_MEMO, I_OPER_ID, C_OPER_NAME, D_INSERT_DATE, I_OPER_MODIFYID, C_OPER_MODIFYNAME, D_MODIFY_DATE, I_DEL, C_ALIASCODE)
values (1, 1, 'admin', 'manager', '系统管理员', 1, 'admin', to_date('04-07-2011 10:47:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('13-09-2011 16:00:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin');

insert into sys_userclass (ID, C_NAME, C_MEMO, I_OPER_ID, C_OPER_NAME, D_INSERT_DATE, I_OPER_MODIFYID, C_OPER_MODIFYNAME, D_MODIFY_DATE, I_DEL, C_ALIASCODE)
values (1, 'system', 'system', 1, 'admin', to_date('04-07-2011 10:47:41', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 10:47:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 'system');

insert into sys_userandclass (ID, I_SYS_USERCLASS_ID, I_SYS_USER_ID, I_OPER_ID, C_OPER_NAME, D_INSERT_DATE, I_OPER_MODIFYID, C_OPER_MODIFYNAME, D_MODIFY_DATE, I_DEL, C_ALIASCODE)
values (1, 1, 1, 1, 'admin', to_date('04-07-2011 10:48:23', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('04-07-2011 10:48:23', 'dd-mm-yyyy hh24:mi:ss'), 0, 'CNLL');
commit;

