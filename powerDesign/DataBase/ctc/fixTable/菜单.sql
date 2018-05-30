prompt PL/SQL Developer import file
prompt Created on 2016年4月1日 by Administrator
set feedback off
set define off
prompt Creating SYS_MODELWIN...
create table SYS_MODELWIN
(
  id                     INTEGER not null,
  i_sys_modelwinclass_id INTEGER not null,
  c_name                 VARCHAR2(300) not null,
  c_url                  VARCHAR2(1000) not null,
  c_imagename            VARCHAR2(100),
  c_memo                 VARCHAR2(500),
  i_oper_id              INTEGER not null,
  c_oper_name            VARCHAR2(50) not null,
  d_insert_date          DATE default SYSDATE not null,
  i_oper_modifyid        INTEGER not null,
  c_oper_modifyname      VARCHAR2(50) not null,
  d_modify_date          DATE default SYSDATE not null,
  i_del                  INTEGER default 0 not null,
  c_aliascode            VARCHAR2(200) default 'cnull' not null
)
tablespace CTC_CENTER
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
comment on table SYS_MODELWIN
  is '系统模块表';
comment on column SYS_MODELWIN.i_sys_modelwinclass_id
  is '系统模块表类别ID';
comment on column SYS_MODELWIN.c_name
  is '窗口模块名称';
comment on column SYS_MODELWIN.c_url
  is '窗口模块地址';
comment on column SYS_MODELWIN.c_imagename
  is '图标文件名';
comment on column SYS_MODELWIN.c_memo
  is ' 备注';
comment on column SYS_MODELWIN.i_oper_id
  is '操作员编号';
comment on column SYS_MODELWIN.c_oper_name
  is '操作员姓名';
comment on column SYS_MODELWIN.d_insert_date
  is '记录插入日期';
comment on column SYS_MODELWIN.i_oper_modifyid
  is '修改记录操作员编号';
comment on column SYS_MODELWIN.c_oper_modifyname
  is '修改记录操作员姓名';
comment on column SYS_MODELWIN.d_modify_date
  is '修改记录记录日期';
comment on column SYS_MODELWIN.i_del
  is '记录删除标志【1为删除，其他为正常记录】';
comment on column SYS_MODELWIN.c_aliascode
  is '辅助名';
create index INDEX_32 on SYS_MODELWIN (I_SYS_MODELWINCLASS_ID)
  tablespace CTC_CENTER
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
alter table SYS_MODELWIN
  add constraint PK_SYS_MODELWIN primary key (ID)
  using index 
  tablespace CTC_CENTER
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
alter table SYS_MODELWIN
  add constraint AK_KEY_2_SYS_MODE2 unique (C_URL)
  using index 
  tablespace CTC_CENTER
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
alter table SYS_MODELWIN
  add constraint AK_KEY_3_SYS_MODE2 unique (C_NAME)
  using index 
  tablespace CTC_CENTER
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

prompt Creating SYS_MODELWINCLASS...
create table SYS_MODELWINCLASS
(
  id                INTEGER not null,
  c_name            VARCHAR2(300) not null,
  c_lurl            VARCHAR2(300),
  c_rurl            VARCHAR2(300),
  c_memo            VARCHAR2(500),
  i_oper_id         INTEGER not null,
  c_oper_name       VARCHAR2(50) not null,
  d_insert_date     DATE default SYSDATE not null,
  i_oper_modifyid   INTEGER not null,
  c_oper_modifyname VARCHAR2(50) not null,
  d_modify_date     DATE default SYSDATE not null,
  i_del             INTEGER default 0 not null,
  c_aliascode       VARCHAR2(200) default 'cnull' not null
)
tablespace CTC_CENTER
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
comment on table SYS_MODELWINCLASS
  is '系统模块表类别';
comment on column SYS_MODELWINCLASS.c_name
  is '名称';
comment on column SYS_MODELWINCLASS.c_rurl
  is '右侧URL';
comment on column SYS_MODELWINCLASS.c_memo
  is ' 备注';
comment on column SYS_MODELWINCLASS.i_oper_id
  is '操作员编号';
comment on column SYS_MODELWINCLASS.c_oper_name
  is '操作员姓名';
comment on column SYS_MODELWINCLASS.d_insert_date
  is '记录插入日期';
comment on column SYS_MODELWINCLASS.i_oper_modifyid
  is '修改记录操作员编号';
comment on column SYS_MODELWINCLASS.c_oper_modifyname
  is '修改记录操作员姓名';
comment on column SYS_MODELWINCLASS.d_modify_date
  is '修改记录记录日期';
comment on column SYS_MODELWINCLASS.i_del
  is '记录删除标志【1为删除，其他为正常记录】';
comment on column SYS_MODELWINCLASS.c_aliascode
  is '辅助名';
alter table SYS_MODELWINCLASS
  add constraint PK_SYS_MODELWINCLASS primary key (ID)
  using index 
  tablespace CTC_CENTER
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

prompt Creating SYS_MODELWINSUB...
create table SYS_MODELWINSUB
(
  id                INTEGER not null,
  i_sys_modelwin_id INTEGER not null,
  c_name            VARCHAR2(300) not null,
  c_url             VARCHAR2(1000),
  c_imagename       VARCHAR2(100),
  c_memo            VARCHAR2(500),
  i_oper_id         INTEGER not null,
  c_oper_name       VARCHAR2(50) not null,
  d_insert_date     DATE default SYSDATE not null,
  i_oper_modifyid   INTEGER not null,
  c_oper_modifyname VARCHAR2(50) not null,
  d_modify_date     DATE default SYSDATE not null,
  i_del             INTEGER default 0 not null,
  c_aliascode       VARCHAR2(200) default 'cnull' not null
)
tablespace CTC_CENTER
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
comment on table SYS_MODELWINSUB
  is '系统模块子表';
comment on column SYS_MODELWINSUB.i_sys_modelwin_id
  is '窗口模块主表ID';
comment on column SYS_MODELWINSUB.c_name
  is '名称';
comment on column SYS_MODELWINSUB.c_url
  is '地址';
comment on column SYS_MODELWINSUB.c_imagename
  is '图标文件名';
comment on column SYS_MODELWINSUB.c_memo
  is ' 备注';
comment on column SYS_MODELWINSUB.i_oper_id
  is '操作员编号';
comment on column SYS_MODELWINSUB.c_oper_name
  is '操作员姓名';
comment on column SYS_MODELWINSUB.d_insert_date
  is '记录插入日期';
comment on column SYS_MODELWINSUB.i_oper_modifyid
  is '修改记录操作员编号';
comment on column SYS_MODELWINSUB.c_oper_modifyname
  is '修改记录操作员姓名';
comment on column SYS_MODELWINSUB.d_modify_date
  is '修改记录记录日期';
comment on column SYS_MODELWINSUB.i_del
  is '记录删除标志【1为删除，其他为正常记录】';
comment on column SYS_MODELWINSUB.c_aliascode
  is '辅助名';
alter table SYS_MODELWINSUB
  add constraint PK_SYS_MODELWINSUB primary key (ID)
  using index 
  tablespace CTC_CENTER
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

prompt Disabling triggers for SYS_MODELWIN...
alter table SYS_MODELWIN disable all triggers;
prompt Disabling triggers for SYS_MODELWINCLASS...
alter table SYS_MODELWINCLASS disable all triggers;
prompt Disabling triggers for SYS_MODELWINSUB...
alter table SYS_MODELWINSUB disable all triggers;
prompt Loading SYS_MODELWIN...
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (109, 17, '故障趋势', '8', null, '设备数据统计', 0, 'admin', to_date('28-03-2016 22:35:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('28-03-2016 22:35:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (110, 17, '故障排名', '9', null, '设备数据统计', 0, 'admin', to_date('28-03-2016 22:35:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('28-03-2016 22:35:31', 'dd-mm-yyyy hh24:mi:ss'), 1, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (11, 8, '道路方向配置', 'direction.do?method=listPage', null, '业务系统配置', 0, 'admin', to_date('29-03-2016 21:45:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-03-2016 21:45:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (12, 8, '违法地点配置', 'local.do?method=listPage', null, '业务系统配置', 0, 'admin', to_date('29-03-2016 21:45:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-03-2016 21:45:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (13, 8, '违法行为配置', '215', null, '业务系统配置', 0, 'admin', to_date('01-04-2016 00:03:43', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:03:43', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (210, 6, '违法数据查询', '210', null, '违法数据管理' || chr(10) || '', 0, 'admin', to_date('01-04-2016 00:05:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:05:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (209, 6, '违法数据审核', '209', null, '违法数据管理' || chr(10) || '', 0, 'admin', to_date('01-04-2016 00:05:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:05:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (208, 6, '违法数据提取', '208', null, '违法数据管理' || chr(10) || '', 0, 'admin', to_date('01-04-2016 00:05:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:05:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (305, 5, '过车数据查询', '305', null, '过车数据管理', 0, 'admin', to_date('01-04-2016 00:15:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:15:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (306, 5, '车辆轨迹查询', '306', null, '过车数据管理', 0, 'admin', to_date('01-04-2016 00:15:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:15:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (310, 5, '布控管理', '310', null, '车辆布控管理', 0, 'admin', to_date('01-04-2016 00:15:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:15:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (311, 5, '撤控查询', '311', null, '车辆布控管理', 0, 'admin', to_date('01-04-2016 00:15:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:15:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (312, 5, '报警查询', '312', null, '车辆布控管理', 0, 'admin', to_date('01-04-2016 00:15:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:15:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (330, 5, '测速区间配置', '330', null, '数据研判分析', 0, 'admin', to_date('01-04-2016 00:15:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:15:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (331, 5, '业务系统配置', '331', null, '数据研判分析', 0, 'admin', to_date('01-04-2016 00:15:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:15:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (332, 5, '套牌车辆分析', '332', null, '数据研判分析', 0, 'admin', to_date('01-04-2016 00:15:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:15:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (333, 5, '异常车辆分析', '333', null, '数据研判分析', 0, 'admin', to_date('01-04-2016 00:15:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:15:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (410, 3, '实时状态监控' || chr(10) || '', '410', null, '信号控制管理', 0, 'admin', to_date('01-04-2016 00:18:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:18:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (411, 3, 'PGIS地图显示', '411', null, '信号控制管理', 0, 'admin', to_date('01-04-2016 00:18:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:18:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (412, 3, '疏导预案管理', '412', null, '信号控制管理', 0, 'admin', to_date('01-04-2016 00:18:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:18:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (420, 3, '相位参数配置', '420', null, '系统配置', 0, 'admin', to_date('01-04-2016 00:18:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('01-04-2016 00:18:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (101, 7, '监控设备', 'monitor.do?method=listPage', null, '设备基本信息管理', 0, 'admin', to_date('02-03-2016 15:44:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:45:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (102, 7, '信号设备', 'signal.do?method=listPage', null, '设备基本信息管理', 0, 'admin', to_date('02-03-2016 15:44:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:45:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (104, 7, '电警设备', 'elecPolice.do?method=listPage', null, '设备基本信息管理', 0, 'admin', to_date('02-03-2016 15:44:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:45:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (105, 7, '卡口设备', 'bayonet.do?method=listPage', null, '设备基本信息管理', 0, 'admin', to_date('02-03-2016 15:44:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:45:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, 8, '权限管理', 'jurisdiction.do?method=listPage', null, '用户权限管理', 0, 'admin', to_date('23-02-2016 14:57:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:57:35', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (3, 8, '用户管理', 'user.do?method=listPage', null, '用户权限管理', 0, 'admin', to_date('23-02-2016 14:57:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:57:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (4, 8, '代码类别维护', 'code.do?method=listPage', null, '基础信息配置', 0, 'admin', to_date('23-02-2016 14:57:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:57:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (7, 8, '组织机构管理', 'enterprise.do?method=listPage', null, '基础信息配置', 0, 'admin', to_date('23-02-2016 14:57:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:57:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (8, 8, '日志管理', 'syslog.do?method=listPage', null, '基础信息配置', 0, 'admin', to_date('23-02-2016 14:57:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:57:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, 8, '角色管理', 'role.do?method=listPage', null, '用户权限管理', 0, 'admin', to_date('29-02-2016 11:07:54', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-02-2016 11:07:54', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (106, 7, '设备厂家维护', 'factoryMode.do?method=listPage', null, '设备基本信息管理', 0, 'admin', to_date('02-03-2016 15:44:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:45:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (107, 7, '运维状态管理', 'operation.do?method=listPage', null, '设备运维信息管理', 0, 'admin', to_date('02-03-2016 15:44:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:45:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (108, 7, '故障信息管理', 'run.do?method=listPage', null, '设备运维信息管理', 0, 'admin', to_date('02-03-2016 15:44:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 15:45:05', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (9, 8, '黑名单车辆管理', 'blackList.do?method=listPage', null, '业务系统配置', 0, 'admin', to_date('23-03-2016 08:59:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 08:59:21', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWIN (id, i_sys_modelwinclass_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (10, 8, '白名单车辆管理', 'whiteList.do?method=listPage', null, '业务系统配置', 0, 'admin', to_date('23-03-2016 09:00:19', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:00:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 36 records loaded
prompt Loading SYS_MODELWINCLASS...
insert into SYS_MODELWINCLASS (id, c_name, c_lurl, c_rurl, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, '首  页', 'index.do?method=showSystemMenu', null, '首  页', 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINCLASS (id, c_name, c_lurl, c_rurl, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, '违法处理', 'index.do?method=showSystemMenu', null, '违法处理', 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINCLASS (id, c_name, c_lurl, c_rurl, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (3, '信号集成系统', 'index.do?method=showSystemMenu', null, '信号集成系统', 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINCLASS (id, c_name, c_lurl, c_rurl, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (4, 'PGIS系统', 'index.do?method=showSystemMenu', null, 'PGIS系统', 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINCLASS (id, c_name, c_lurl, c_rurl, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (5, '缉查布控系统', 'index.do?method=showSystemMenu', null, '缉查布控系统', 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINCLASS (id, c_name, c_lurl, c_rurl, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (6, '非现场系统', 'index.do?method=showSystemMenu', null, '非现场子系统', 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINCLASS (id, c_name, c_lurl, c_rurl, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (7, '设备管理', 'index.do?method=showSystemMenu', null, '设备管理', 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINCLASS (id, c_name, c_lurl, c_rurl, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (8, '系统管理', 'index.do?method=showSystemMenu', null, '系统管理', 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:48:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 8 records loaded
prompt Loading SYS_MODELWINSUB...
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (57, 107, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('23-03-2016 09:19:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:19:58', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (58, 107, '标注', 'markBtn', null, '标注', 0, 'admin', to_date('23-03-2016 09:20:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:20:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (59, 107, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('23-03-2016 09:21:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:21:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (60, 107, '详情', 'detBtn', null, '详情', 0, 'admin', to_date('23-03-2016 09:22:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:22:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (61, 107, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('23-03-2016 09:24:02', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:24:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (62, 107, '打印', 'printBtn', null, '打印', 0, 'admin', to_date('25-03-2016 21:24:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 21:24:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (63, 108, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('23-03-2016 09:19:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:19:10', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (64, 108, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('23-03-2016 09:16:33', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:16:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (65, 108, '故障处理', 'disposeBtn', null, '故障处理', 0, 'admin', to_date('23-03-2016 09:17:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:17:21', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (66, 108, '标注', 'markBtn', null, '标注', 0, 'admin', to_date('23-03-2016 09:15:26', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:15:33', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (67, 108, '详情', 'detBtn', null, '详情', 0, 'admin', to_date('23-03-2016 09:18:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:18:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (68, 108, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('23-03-2016 09:14:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:14:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (69, 108, '打印', 'printBtn', null, '打印', 0, 'admin', to_date('25-03-2016 22:04:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:04:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (70, 108, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('25-03-2016 22:04:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:04:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (71, 105, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('25-03-2016 23:04:07', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 23:04:07', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (72, 105, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('25-03-2016 23:04:07', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 23:04:07', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (73, 105, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('25-03-2016 23:04:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 23:04:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (74, 105, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('25-03-2016 23:04:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 23:04:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (75, 105, '打印', 'printBtn', null, '打印', 0, 'admin', to_date('25-03-2016 23:04:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 23:04:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (76, 105, '详情', 'detBtn', null, '详情', 0, 'admin', to_date('25-03-2016 23:04:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 23:04:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (77, 105, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('25-03-2016 23:04:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 23:04:08', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (117, 11, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (78, 105, '标记', 'markBtn', null, '标记', 0, 'admin', to_date('25-03-2016 23:08:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 23:08:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (118, 11, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (119, 11, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (120, 11, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (124, 12, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (123, 12, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (122, 12, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (121, 12, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('29-03-2016 22:07:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (115, 102, '打印', 'printBtn', null, '打印', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (114, 102, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (113, 102, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (112, 102, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (111, 102, '标注', 'markBtn', null, '标注', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (110, 102, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (109, 102, '详情', 'detBtn', null, '详情', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (108, 102, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (107, 104, '打印', 'printBtn', null, '打印', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (106, 104, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (105, 104, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (104, 104, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (103, 104, '标注', 'markBtn', null, '标注', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (102, 104, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (101, 104, '详情', 'detBtn', null, '详情', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (100, 104, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-03-2016 22:05:12', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (39, 106, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('09-03-2016 21:49:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('09-03-2016 21:49:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (40, 106, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('09-03-2016 21:49:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('09-03-2016 21:49:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (41, 106, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('09-03-2016 21:49:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('09-03-2016 21:49:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (42, 106, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('09-03-2016 21:49:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('09-03-2016 21:49:38', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (30, 8, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (31, 8, '打印', 'printBtn', null, '打印', 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (32, 8, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (1, 1, '导入', 'impBtn', null, '导入', 0, 'admin', to_date('23-02-2016 14:59:55', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-02-2016 14:59:55', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (4, 1, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (3, 1, '打印', 'printBtn', null, '打印', 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (2, 1, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('24-02-2016 16:10:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (5, 2, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (6, 2, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (7, 2, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (8, 7, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (9, 7, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (10, 7, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('25-02-2016 14:04:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (11, 2, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('02-03-2016 13:12:01', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:12:01', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (12, 2, '打印', 'printBtn', null, '打印', 0, 'admin', to_date('02-03-2016 13:16:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:16:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (13, 3, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('02-03-2016 13:18:18', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:18:18', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (14, 3, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('02-03-2016 13:19:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:19:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (15, 3, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('02-03-2016 13:20:16', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:20:16', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (16, 3, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('02-03-2016 13:21:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:21:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (17, 3, '打印', 'printBtn', null, '打印', 0, 'admin', to_date('02-03-2016 13:22:15', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:22:15', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (19, 3, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('02-03-2016 13:30:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:30:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (20, 3, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('02-03-2016 13:30:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:30:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (21, 101, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('02-03-2016 13:18:18', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:18:18', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (22, 101, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('02-03-2016 13:19:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:19:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (23, 101, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('02-03-2016 13:20:16', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:20:16', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (24, 101, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('02-03-2016 13:21:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:21:41', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (25, 101, '打印', 'printBtn', null, '打印', 0, 'admin', to_date('02-03-2016 13:22:15', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:22:15', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (26, 101, '详情', 'detBtn', null, '详情', 0, 'admin', to_date('02-03-2016 13:22:15', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:24:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (27, 101, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('02-03-2016 13:30:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:30:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (28, 101, '标记', 'markBtn', null, '标记', 0, 'admin', to_date('02-03-2016 13:30:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('02-03-2016 13:30:17', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (44, 101, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('12-03-2016 00:57:10', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('12-03-2016 00:57:10', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (36, 4, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('08-03-2016 23:10:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('08-03-2016 23:10:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (43, 2, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('12-03-2016 00:39:27', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('12-03-2016 00:39:27', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (45, 9, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('23-03-2016 09:14:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:14:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (46, 9, '导入', 'impBtn', null, '导入', 0, 'admin', to_date('23-03-2016 09:15:26', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:15:33', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (47, 9, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('23-03-2016 09:16:33', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:16:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (48, 9, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('23-03-2016 09:17:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:17:21', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (49, 9, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('23-03-2016 09:18:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:18:31', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (50, 9, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('23-03-2016 09:19:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:19:10', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (51, 10, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('23-03-2016 09:19:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:19:58', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (52, 10, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('23-03-2016 09:20:46', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:20:53', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (53, 10, '导出', 'expBtn', null, '导出', 0, 'admin', to_date('23-03-2016 09:21:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:21:44', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (54, 10, '导入', 'impBtn', null, '导入', 0, 'admin', to_date('23-03-2016 09:22:32', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:22:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (55, 10, '删除', 'delBtn', null, '山粗', 0, 'admin', to_date('23-03-2016 09:23:14', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:23:22', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (56, 10, '查询', 'searchBtn', null, '查询', 0, 'admin', to_date('23-03-2016 09:24:02', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('23-03-2016 09:24:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (29, 4, '新增', 'insBtn', null, '新增', 0, 'admin', to_date('08-03-2016 17:42:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('08-03-2016 17:42:59', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (33, 4, '修改', 'modBtn', null, '修改', 0, 'admin', to_date('08-03-2016 17:43:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('08-03-2016 17:43:49', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (34, 4, '删除', 'delBtn', null, '删除', 0, 'admin', to_date('08-03-2016 17:44:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('08-03-2016 17:44:25', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into SYS_MODELWINSUB (id, i_sys_modelwin_id, c_name, c_url, c_imagename, c_memo, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (35, 4, '详情', 'detBtn', null, '详情', 0, 'admin', to_date('08-03-2016 17:45:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'admin', to_date('08-03-2016 17:45:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 99 records loaded
prompt Enabling triggers for SYS_MODELWIN...
alter table SYS_MODELWIN enable all triggers;
prompt Enabling triggers for SYS_MODELWINCLASS...
alter table SYS_MODELWINCLASS enable all triggers;
prompt Enabling triggers for SYS_MODELWINSUB...
alter table SYS_MODELWINSUB enable all triggers;
set feedback on
set define on
prompt Done.
