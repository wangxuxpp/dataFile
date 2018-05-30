prompt PL/SQL Developer import file
prompt Created on 2016年3月8日 by Administrator
set feedback off
set define off
prompt Creating DEV_BASE_TYPE...
create table DEV_BASE_TYPE
(
  id                INTEGER not null,
  c_code            VARCHAR2(50) not null,
  c_name            VARCHAR2(100),
  c_table_name      VARCHAR2(100),
  i_oper_id         INTEGER not null,
  c_oper_name       VARCHAR2(50) not null,
  d_insert_date     DATE default SYSDATE not null,
  i_oper_modifyid   INTEGER not null,
  c_oper_modifyname VARCHAR2(50) not null,
  d_modify_date     DATE default SYSDATE not null,
  i_del             INTEGER default 0 not null,
  c_aliascode       VARCHAR2(200) default 'cnull' not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table DEV_BASE_TYPE
  is '设备类型';
comment on column DEV_BASE_TYPE.id
  is '主键';
comment on column DEV_BASE_TYPE.c_code
  is '编号';
comment on column DEV_BASE_TYPE.c_name
  is '类别';
comment on column DEV_BASE_TYPE.c_table_name
  is '对应数据库设备表表名';
comment on column DEV_BASE_TYPE.i_oper_id
  is '操作员编号';
comment on column DEV_BASE_TYPE.c_oper_name
  is '操作员姓名';
comment on column DEV_BASE_TYPE.d_insert_date
  is '记录插入日期';
comment on column DEV_BASE_TYPE.i_oper_modifyid
  is '修改记录操作员编号';
comment on column DEV_BASE_TYPE.c_oper_modifyname
  is '修改记录操作员姓名';
comment on column DEV_BASE_TYPE.d_modify_date
  is '修改记录记录日期';
comment on column DEV_BASE_TYPE.i_del
  is '记录删除标志【1为删除，其他为正常记录】';
comment on column DEV_BASE_TYPE.c_aliascode
  is '辅助名';
alter table DEV_BASE_TYPE
  add constraint PK_DEV_BASE_TYPE primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table DEV_BASE_TYPE
  add constraint CKC_I_DEL_DEV_BASE
  check (I_DEL in (0,1));

prompt Disabling triggers for DEV_BASE_TYPE...
alter table DEV_BASE_TYPE disable all triggers;
prompt Loading DEV_BASE_TYPE...
insert into DEV_BASE_TYPE (id, c_code, c_name, c_table_name, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, '0001', '监控设备', 'DEV_MONITOR', 0, 'admin', to_date('02-03-2016 15:02:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:02:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'jksb');
insert into DEV_BASE_TYPE (id, c_code, c_name, c_table_name, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, '0002', '信号设备', 'DEV_SIGNAL', 0, 'admin', to_date('02-03-2016 15:02:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:02:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'xhsb');
insert into DEV_BASE_TYPE (id, c_code, c_name, c_table_name, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (3, '0003', '诱导设备', 'DEV_GUIDE', 0, 'admin', to_date('02-03-2016 15:02:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:02:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'ydsb');
insert into DEV_BASE_TYPE (id, c_code, c_name, c_table_name, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (4, '0004', '电警设备', 'DEV_ELECTR_POLICE', 0, 'admin', to_date('02-03-2016 15:02:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:02:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'djsb');
insert into DEV_BASE_TYPE (id, c_code, c_name, c_table_name, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (5, '0005', '卡口设备', 'DEV_CHECKPOINT', 0, 'admin', to_date('02-03-2016 15:02:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:02:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'kksb');
commit;
prompt 5 records loaded
prompt Enabling triggers for DEV_BASE_TYPE...
alter table DEV_BASE_TYPE enable all triggers;
set feedback on
set define on
prompt Done.
