/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2011-07-15 15:06:14                          */
/*==============================================================*/


drop view VIEW_QUALITY_EXAMINE;

drop view VIEW_QUALITY_EXAMINESUB;

drop view VIEW_QUALITY_FORWARDEXAMINE;

drop view VIEW_QUALITY_FORWARDEXAMINESUB;

drop view VIEW_QUALITY_PROGRAMSUB;

alter table QUALITY_EXAMINE
   drop unique (C_CODE) cascade;

alter table QUALITY_EXAMINE
   drop primary key cascade;

drop table QUALITY_EXAMINE cascade constraints;

alter table QUALITY_EXAMINESUB
   drop primary key cascade;

drop table QUALITY_EXAMINESUB cascade constraints;

alter table QUALITY_FORWARDEXAMINE
   drop unique (C_CODE) cascade;

alter table QUALITY_FORWARDEXAMINE
   drop primary key cascade;

drop table QUALITY_FORWARDEXAMINE cascade constraints;

alter table QUALITY_FORWARDEXAMINESUB
   drop primary key cascade;

drop table QUALITY_FORWARDEXAMINESUB cascade constraints;

alter table QUALITY_ITEMS
   drop primary key cascade;

drop table QUALITY_ITEMS cascade constraints;

alter table QUALITY_OPERATOR
   drop unique (C_NAME) cascade;

alter table QUALITY_OPERATOR
   drop primary key cascade;

drop table QUALITY_OPERATOR cascade constraints;

alter table QUALITY_PROGRAM
   drop primary key cascade;

drop table QUALITY_PROGRAM cascade constraints;

alter table QUALITY_PROGRAMSUB
   drop primary key cascade;

drop table QUALITY_PROGRAMSUB cascade constraints;

alter table QUALITY_RESULT
   drop unique (C_NAME) cascade;

alter table QUALITY_RESULT
   drop primary key cascade;

drop table QUALITY_RESULT cascade constraints;

/*==============================================================*/
/* Table: QUALITY_EXAMINE                                       */
/*==============================================================*/
create table QUALITY_EXAMINE  (
   ID                   INT                             not null,
   I_QUALITY_FORWARDEXAMINE_ID INT                             not null,
   C_NAME               VARCHAR2(100),
   C_CODE               VARCHAR2(100),
   I_OPER_ID            INT                             not null,
   C_OPER_NAME          VARCHAR(10)                     not null,
   D_INSERT_DATE        date                           default SYSDATE not null,
   I_OPER_MODIFYID      INT                             not null,
   C_OPER_MODIFYNAME    VARCHAR(10)                     not null,
   D_MODIFY_DATE        date                           default SYSDATE not null,
   I_DEL                INT                            default 0 not null,
   C_ALIASCODE          varchar2(200)                  default 'cnull' not null
);

comment on table QUALITY_EXAMINE is
'质检单';

comment on column QUALITY_EXAMINE.I_QUALITY_FORWARDEXAMINE_ID is
'请验单ID';

comment on column QUALITY_EXAMINE.C_NAME is
'质检单名称';

comment on column QUALITY_EXAMINE.C_CODE is
'质检单编号';

comment on column QUALITY_EXAMINE.I_OPER_ID is
'操作员编号';

comment on column QUALITY_EXAMINE.C_OPER_NAME is
'操作员姓名';

comment on column QUALITY_EXAMINE.D_INSERT_DATE is
'记录插入日期';

comment on column QUALITY_EXAMINE.I_OPER_MODIFYID is
'修改记录操作员编号';

comment on column QUALITY_EXAMINE.C_OPER_MODIFYNAME is
'修改记录操作员姓名';

comment on column QUALITY_EXAMINE.D_MODIFY_DATE is
'修改记录记录日期';

comment on column QUALITY_EXAMINE.I_DEL is
'记录删除标志【1为删除，其他为正常记录】';

comment on column QUALITY_EXAMINE.C_ALIASCODE is
'辅助名';

alter table QUALITY_EXAMINE
   add constraint PK_QUALITY_EXAMINE primary key (ID);

alter table QUALITY_EXAMINE
   add constraint AK_A5_QUALITY_ unique (C_CODE);

/*==============================================================*/
/* Table: QUALITY_EXAMINESUB                                    */
/*==============================================================*/
create table QUALITY_EXAMINESUB  (
   ID                   INT                             not null,
   I_QUALITY_EXAMINE_ID INT                             not null,
   I_QUALITY_FORWARDEXAMINESUB_ID INT                             not null,
   I_BASE_WAREUNIT_ID   int                             not null,
   F_EMITNUM            NUMBER(16,4)                   default 0 not null,
   I_QUALITY_PROGRAM_ID INT                            default 0 not null,
   C_QUALITYOPERATOR    VARCHAR2(20)                   default '' not null,
   C_QUALITY            VARCHAR2(50)                   default '抽检' not null,
   F_NUM                NUMBER(16,4)                   default 0 not null,
   F_QUALITYQUALIFIED   NUMBER(16,4)                   default 0 not null,
   F_QUALITYNOTQUALIFIED NUMBER(16,4)                   default 0 not null,
   C_QUALITYRESULT      VARCHAR2(100)                  default '' not null,
   F_QUALIFIED          NUMBER(16,4)                   default 0 not null,
   F_NOTQUALIFIED       NUMBER(16,4)                   default 0 not null,
   C_DISPOSENOTQUALIFIED VARCHAR2(500),
   I_OPER_ID            INT                             not null,
   C_OPER_NAME          VARCHAR(10)                     not null,
   D_INSERT_DATE        date                           default SYSDATE not null,
   I_OPER_MODIFYID      INT                             not null,
   C_OPER_MODIFYNAME    VARCHAR(10)                     not null,
   D_MODIFY_DATE        date                           default SYSDATE not null,
   I_DEL                INT                            default 0 not null,
   C_ALIASCODE          varchar2(200)                  default 'cnull' not null
);

comment on table QUALITY_EXAMINESUB is
'质检单子表
';

comment on column QUALITY_EXAMINESUB.I_QUALITY_EXAMINE_ID is
'质检单主表ID';

comment on column QUALITY_EXAMINESUB.I_QUALITY_FORWARDEXAMINESUB_ID is
'请验单子表ID';

comment on column QUALITY_EXAMINESUB.I_BASE_WAREUNIT_ID is
'物品名称单位（外键）BASE_WAREUNIT->Id';

comment on column QUALITY_EXAMINESUB.F_EMITNUM is
'请验物品数量';

comment on column QUALITY_EXAMINESUB.I_QUALITY_PROGRAM_ID is
'检验方案ID';

comment on column QUALITY_EXAMINESUB.C_QUALITYOPERATOR is
'质检操作员QUALITY_OPERATOR——>c_name';

comment on column QUALITY_EXAMINESUB.C_QUALITY is
'质检方式【免检,抽检,全检】';

comment on column QUALITY_EXAMINESUB.F_NUM is
'检验数量';

comment on column QUALITY_EXAMINESUB.F_QUALITYQUALIFIED is
'检验合格数量';

comment on column QUALITY_EXAMINESUB.F_QUALITYNOTQUALIFIED is
'检验不合格数量';

comment on column QUALITY_EXAMINESUB.C_QUALITYRESULT is
'质检结果
QUALITY_RESULT->c_name';

comment on column QUALITY_EXAMINESUB.F_QUALIFIED is
'合格数量';

comment on column QUALITY_EXAMINESUB.F_NOTQUALIFIED is
'不合格数量';

comment on column QUALITY_EXAMINESUB.C_DISPOSENOTQUALIFIED is
'不合格原因及处理办法';

comment on column QUALITY_EXAMINESUB.I_OPER_ID is
'操作员编号';

comment on column QUALITY_EXAMINESUB.C_OPER_NAME is
'操作员姓名';

comment on column QUALITY_EXAMINESUB.D_INSERT_DATE is
'记录插入日期';

comment on column QUALITY_EXAMINESUB.I_OPER_MODIFYID is
'修改记录操作员编号';

comment on column QUALITY_EXAMINESUB.C_OPER_MODIFYNAME is
'修改记录操作员姓名';

comment on column QUALITY_EXAMINESUB.D_MODIFY_DATE is
'修改记录记录日期';

comment on column QUALITY_EXAMINESUB.I_DEL is
'记录删除标志【1为删除，其他为正常记录】';

comment on column QUALITY_EXAMINESUB.C_ALIASCODE is
'辅助名';

alter table QUALITY_EXAMINESUB
   add constraint CKC_C_QUALITY_QUALITY_ check (C_QUALITY in ('抽检','全检'));

alter table QUALITY_EXAMINESUB
   add constraint PK_QUALITY_EXAMINESUB primary key (ID);

/*==============================================================*/
/* Table: QUALITY_FORWARDEXAMINE                                */
/*==============================================================*/
create table QUALITY_FORWARDEXAMINE  (
   ID                   INT                             not null,
   C_NAME               VARCHAR2(100),
   C_CODE               VARCHAR2(100),
   C_TYPE               VARCHAR2(200),
   I_EMITBUSINESS_ID    INT                            default 0 not null,
   C_EMTINAME           VARCHAR2(20),
   I_OPER_ID            INT                             not null,
   C_OPER_NAME          VARCHAR(10)                     not null,
   D_INSERT_DATE        date                           default SYSDATE not null,
   I_OPER_MODIFYID      INT                             not null,
   C_OPER_MODIFYNAME    VARCHAR(10)                     not null,
   D_MODIFY_DATE        date                           default SYSDATE not null,
   I_DEL                INT                            default 0 not null,
   C_ALIASCODE          varchar2(200)                  default 'cnull' not null
);

comment on table QUALITY_FORWARDEXAMINE is
'质检请验单';

comment on column QUALITY_FORWARDEXAMINE.C_NAME is
'请验单名称';

comment on column QUALITY_FORWARDEXAMINE.C_CODE is
'请验单编号';

comment on column QUALITY_FORWARDEXAMINE.C_TYPE is
'请验单类型
对应业务单据类型表SYS_CHECKTYPE的C_NAME字段，表示是哪个业务单据需要质检
如果是手动添加请验单该字段应为【空】';

comment on column QUALITY_FORWARDEXAMINE.I_EMITBUSINESS_ID is
'发起请验单的业务单据主表ID';

comment on column QUALITY_FORWARDEXAMINE.C_EMTINAME is
'请验人员姓名';

comment on column QUALITY_FORWARDEXAMINE.I_OPER_ID is
'操作员编号';

comment on column QUALITY_FORWARDEXAMINE.C_OPER_NAME is
'操作员姓名';

comment on column QUALITY_FORWARDEXAMINE.D_INSERT_DATE is
'记录插入日期';

comment on column QUALITY_FORWARDEXAMINE.I_OPER_MODIFYID is
'修改记录操作员编号';

comment on column QUALITY_FORWARDEXAMINE.C_OPER_MODIFYNAME is
'修改记录操作员姓名';

comment on column QUALITY_FORWARDEXAMINE.D_MODIFY_DATE is
'修改记录记录日期';

comment on column QUALITY_FORWARDEXAMINE.I_DEL is
'记录删除标志【1为删除，其他为正常记录】';

comment on column QUALITY_FORWARDEXAMINE.C_ALIASCODE is
'辅助名';

alter table QUALITY_FORWARDEXAMINE
   add constraint PK_QUALITY_FORWARDEXAMINE primary key (ID);

alter table QUALITY_FORWARDEXAMINE
   add constraint AK_A4_QUALITY_ unique (C_CODE);

/*==============================================================*/
/* Table: QUALITY_FORWARDEXAMINESUB                             */
/*==============================================================*/
create table QUALITY_FORWARDEXAMINESUB  (
   ID                   INT                             not null,
   I_QUALITY_FORWARDEXAMINE_ID INT                             not null,
   I_EMITBUSINESSSUB_ID INT                            default 0 not null,
   I_BASE_WAREUNIT_ID   int                             not null,
   F_NUM                NUMBER(16,4)                   default 0 not null,
   I_OPER_ID            INT                             not null,
   C_OPER_NAME          VARCHAR(10)                     not null,
   D_INSERT_DATE        date                           default SYSDATE not null,
   I_OPER_MODIFYID      INT                             not null,
   C_OPER_MODIFYNAME    VARCHAR(10)                     not null,
   D_MODIFY_DATE        date                           default SYSDATE not null,
   I_DEL                INT                            default 0 not null,
   C_ALIASCODE          varchar2(200)                  default 'cnull' not null
);

comment on table QUALITY_FORWARDEXAMINESUB is
'请验单子表';

comment on column QUALITY_FORWARDEXAMINESUB.I_QUALITY_FORWARDEXAMINE_ID is
'外键请验单主表ID';

comment on column QUALITY_FORWARDEXAMINESUB.I_EMITBUSINESSSUB_ID is
'请验业务单据子表ID
当请验单处理完毕通过该字段将检验结果写回到业务单据';

comment on column QUALITY_FORWARDEXAMINESUB.I_BASE_WAREUNIT_ID is
'物品名称单位（外键）BASE_WAREUNIT->Id';

comment on column QUALITY_FORWARDEXAMINESUB.F_NUM is
'请验物品数量';

comment on column QUALITY_FORWARDEXAMINESUB.I_OPER_ID is
'操作员编号';

comment on column QUALITY_FORWARDEXAMINESUB.C_OPER_NAME is
'操作员姓名';

comment on column QUALITY_FORWARDEXAMINESUB.D_INSERT_DATE is
'记录插入日期';

comment on column QUALITY_FORWARDEXAMINESUB.I_OPER_MODIFYID is
'修改记录操作员编号';

comment on column QUALITY_FORWARDEXAMINESUB.C_OPER_MODIFYNAME is
'修改记录操作员姓名';

comment on column QUALITY_FORWARDEXAMINESUB.D_MODIFY_DATE is
'修改记录记录日期';

comment on column QUALITY_FORWARDEXAMINESUB.I_DEL is
'记录删除标志【1为删除，其他为正常记录】';

comment on column QUALITY_FORWARDEXAMINESUB.C_ALIASCODE is
'辅助名';

alter table QUALITY_FORWARDEXAMINESUB
   add constraint PK_QUALITY_FORWARDEXAMINESUB primary key (ID);

/*==============================================================*/
/* Table: QUALITY_ITEMS                                         */
/*==============================================================*/
create table QUALITY_ITEMS  (
   ID                   INT                             not null,
   C_NAME               VARCHAR2(100),
   C_ANALYZEMODAL       VARCHAR2(200),
   C_ANALYZEFUNC        VARCHAR2(500),
   C_QUALITYBASIS       VARCHAR2(200),
   C_QUALITYFUNC        VARCHAR2(500),
   C_QUALITYTOOLS       VARCHAR2(200),
   C_DEFECTSLEVEL       VARCHAR2(200),
   I_OPER_ID            INT                             not null,
   C_OPER_NAME          VARCHAR(10)                     not null,
   D_INSERT_DATE        date                           default SYSDATE not null,
   I_OPER_MODIFYID      INT                             not null,
   C_OPER_MODIFYNAME    VARCHAR(10)                     not null,
   D_MODIFY_DATE        date                           default SYSDATE not null,
   I_DEL                INT                            default 0 not null,
   C_ALIASCODE          varchar2(200)                  default 'cnull' not null
);

comment on table QUALITY_ITEMS is
'质量检测项目列表';

comment on column QUALITY_ITEMS.C_NAME is
'质检项目名称';

comment on column QUALITY_ITEMS.C_ANALYZEMODAL is
'质检项目分析方式';

comment on column QUALITY_ITEMS.C_ANALYZEFUNC is
'质量项目分析方法
分析方法：有定性分析、定量分析、其他分析方法。 
    定性分析方法和定量分析方法：在检验单中，选择其中一个后标准值字段系统自动切换字符型、数值性的字段属性，定量分析可参与计划，定性分析只起文字说明作用。其他分析方法没有限制。 ';

comment on column QUALITY_ITEMS.C_QUALITYBASIS is
'项目检测依据';

comment on column QUALITY_ITEMS.C_QUALITYFUNC is
'项目检测方法';

comment on column QUALITY_ITEMS.C_QUALITYTOOLS is
'项目检测工具';

comment on column QUALITY_ITEMS.C_DEFECTSLEVEL is
'项目权限缺陷等级';

comment on column QUALITY_ITEMS.I_OPER_ID is
'操作员编号';

comment on column QUALITY_ITEMS.C_OPER_NAME is
'操作员姓名';

comment on column QUALITY_ITEMS.D_INSERT_DATE is
'记录插入日期';

comment on column QUALITY_ITEMS.I_OPER_MODIFYID is
'修改记录操作员编号';

comment on column QUALITY_ITEMS.C_OPER_MODIFYNAME is
'修改记录操作员姓名';

comment on column QUALITY_ITEMS.D_MODIFY_DATE is
'修改记录记录日期';

comment on column QUALITY_ITEMS.I_DEL is
'记录删除标志【1为删除，其他为正常记录】';

comment on column QUALITY_ITEMS.C_ALIASCODE is
'辅助名';

alter table QUALITY_ITEMS
   add constraint PK_QUALITY_ITEMS primary key (ID);

/*==============================================================*/
/* Table: QUALITY_OPERATOR                                      */
/*==============================================================*/
create table QUALITY_OPERATOR  (
   ID                   INT                             not null,
   C_NAME               VARCHAR2(100)                   not null,
   C_TYPE               VARCHAR2(100),
   I_OPER_ID            INT                             not null,
   C_OPER_NAME          VARCHAR(10)                     not null,
   D_INSERT_DATE        date                           default SYSDATE not null,
   I_OPER_MODIFYID      INT                             not null,
   C_OPER_MODIFYNAME    VARCHAR(10)                     not null,
   D_MODIFY_DATE        date                           default SYSDATE not null,
   I_DEL                INT                            default 0 not null,
   C_ALIASCODE          varchar2(200)                  default 'cnull' not null
);

comment on table QUALITY_OPERATOR is
'质检员';

comment on column QUALITY_OPERATOR.C_NAME is
'质检员姓名';

comment on column QUALITY_OPERATOR.C_TYPE is
'质检类型如入库检测，出库，生产检测等';

comment on column QUALITY_OPERATOR.I_OPER_ID is
'操作员编号';

comment on column QUALITY_OPERATOR.C_OPER_NAME is
'操作员姓名';

comment on column QUALITY_OPERATOR.D_INSERT_DATE is
'记录插入日期';

comment on column QUALITY_OPERATOR.I_OPER_MODIFYID is
'修改记录操作员编号';

comment on column QUALITY_OPERATOR.C_OPER_MODIFYNAME is
'修改记录操作员姓名';

comment on column QUALITY_OPERATOR.D_MODIFY_DATE is
'修改记录记录日期';

comment on column QUALITY_OPERATOR.I_DEL is
'记录删除标志【1为删除，其他为正常记录】';

comment on column QUALITY_OPERATOR.C_ALIASCODE is
'辅助名';

alter table QUALITY_OPERATOR
   add constraint PK_QUALITY_OPERATOR primary key (ID);

alter table QUALITY_OPERATOR
   add constraint AK_A3_QUALITY_ unique (C_NAME);

/*==============================================================*/
/* Table: QUALITY_PROGRAM                                       */
/*==============================================================*/
create table QUALITY_PROGRAM  (
   ID                   INT                             not null,
   C_NAME               VARCHAR2(100),
   C_MEMO               VARCHAR2(500),
   I_OPER_ID            INT                             not null,
   C_OPER_NAME          VARCHAR(10)                     not null,
   D_INSERT_DATE        date                           default SYSDATE not null,
   I_OPER_MODIFYID      INT                             not null,
   C_OPER_MODIFYNAME    VARCHAR(10)                     not null,
   D_MODIFY_DATE        date                           default SYSDATE not null,
   I_DEL                INT                            default 0 not null,
   C_ALIASCODE          varchar2(200)                  default 'cnull' not null
);

comment on table QUALITY_PROGRAM is
'检验方案';

comment on column QUALITY_PROGRAM.C_NAME is
'检验方案名称';

comment on column QUALITY_PROGRAM.C_MEMO is
'备注';

comment on column QUALITY_PROGRAM.I_OPER_ID is
'操作员编号';

comment on column QUALITY_PROGRAM.C_OPER_NAME is
'操作员姓名';

comment on column QUALITY_PROGRAM.D_INSERT_DATE is
'记录插入日期';

comment on column QUALITY_PROGRAM.I_OPER_MODIFYID is
'修改记录操作员编号';

comment on column QUALITY_PROGRAM.C_OPER_MODIFYNAME is
'修改记录操作员姓名';

comment on column QUALITY_PROGRAM.D_MODIFY_DATE is
'修改记录记录日期';

comment on column QUALITY_PROGRAM.I_DEL is
'记录删除标志【1为删除，其他为正常记录】';

comment on column QUALITY_PROGRAM.C_ALIASCODE is
'辅助名';

alter table QUALITY_PROGRAM
   add constraint PK_QUALITY_PROGRAM primary key (ID);

/*==============================================================*/
/* Table: QUALITY_PROGRAMSUB                                    */
/*==============================================================*/
create table QUALITY_PROGRAMSUB  (
   ID                   INT                             not null,
   I_QUALITY_PROGRAM_ID INT                             not null,
   I_QUALITY_ITEMS_ID   INT                             not null,
   N_STANDARD           VARCHAR2(100)                  default '0' not null,
   N_UPPERDEVIATION     NUMERIC(16,4)                  default 0 not null,
   N_LOWDEVIATION       NUMERIC(16,4)                  default 0 not null,
   C_MEMO               VARCHAR2(500),
   I_OPER_ID            INT                             not null,
   C_OPER_NAME          VARCHAR(10)                     not null,
   D_INSERT_DATE        date                           default SYSDATE not null,
   I_OPER_MODIFYID      INT                             not null,
   C_OPER_MODIFYNAME    VARCHAR(10)                     not null,
   D_MODIFY_DATE        date                           default SYSDATE not null,
   I_DEL                INT                            default 0 not null,
   C_ALIASCODE          varchar2(200)                  default 'cnull' not null
);

comment on table QUALITY_PROGRAMSUB is
'检验方案子表';

comment on column QUALITY_PROGRAMSUB.I_QUALITY_PROGRAM_ID is
'检验方案主表ID';

comment on column QUALITY_PROGRAMSUB.I_QUALITY_ITEMS_ID is
'质量检测项目列表ID';

comment on column QUALITY_PROGRAMSUB.N_STANDARD is
'标准值';

comment on column QUALITY_PROGRAMSUB.N_UPPERDEVIATION is
'上公差
';

comment on column QUALITY_PROGRAMSUB.N_LOWDEVIATION is
'下公差';

comment on column QUALITY_PROGRAMSUB.C_MEMO is
'备注';

comment on column QUALITY_PROGRAMSUB.I_OPER_ID is
'操作员编号';

comment on column QUALITY_PROGRAMSUB.C_OPER_NAME is
'操作员姓名';

comment on column QUALITY_PROGRAMSUB.D_INSERT_DATE is
'记录插入日期';

comment on column QUALITY_PROGRAMSUB.I_OPER_MODIFYID is
'修改记录操作员编号';

comment on column QUALITY_PROGRAMSUB.C_OPER_MODIFYNAME is
'修改记录操作员姓名';

comment on column QUALITY_PROGRAMSUB.D_MODIFY_DATE is
'修改记录记录日期';

comment on column QUALITY_PROGRAMSUB.I_DEL is
'记录删除标志【1为删除，其他为正常记录】';

comment on column QUALITY_PROGRAMSUB.C_ALIASCODE is
'辅助名';

alter table QUALITY_PROGRAMSUB
   add constraint PK_QUALITY_PROGRAMSUB primary key (ID);

/*==============================================================*/
/* Table: QUALITY_RESULT                                        */
/*==============================================================*/
create table QUALITY_RESULT  (
   ID                   INT                             not null,
   C_NAME               VARCHAR2(100)                   not null,
   I_OPER_ID            INT                             not null,
   C_OPER_NAME          VARCHAR(10)                     not null,
   D_INSERT_DATE        date                           default SYSDATE not null,
   I_OPER_MODIFYID      INT                             not null,
   C_OPER_MODIFYNAME    VARCHAR(10)                     not null,
   D_MODIFY_DATE        date                           default SYSDATE not null,
   I_DEL                INT                            default 0 not null,
   C_ALIASCODE          varchar2(200)                  default 'cnull' not null
);

comment on table QUALITY_RESULT is
'质检结果';

comment on column QUALITY_RESULT.C_NAME is
'质检结果名称';

comment on column QUALITY_RESULT.I_OPER_ID is
'操作员编号';

comment on column QUALITY_RESULT.C_OPER_NAME is
'操作员姓名';

comment on column QUALITY_RESULT.D_INSERT_DATE is
'记录插入日期';

comment on column QUALITY_RESULT.I_OPER_MODIFYID is
'修改记录操作员编号';

comment on column QUALITY_RESULT.C_OPER_MODIFYNAME is
'修改记录操作员姓名';

comment on column QUALITY_RESULT.D_MODIFY_DATE is
'修改记录记录日期';

comment on column QUALITY_RESULT.I_DEL is
'记录删除标志【1为删除，其他为正常记录】';

comment on column QUALITY_RESULT.C_ALIASCODE is
'辅助名';

alter table QUALITY_RESULT
   add constraint PK_QUALITY_RESULT primary key (ID);

alter table QUALITY_RESULT
   add constraint QUALITY_AK_A4_ unique (C_NAME);

/*==============================================================*/
/* View: VIEW_QUALITY_EXAMINE                                   */
/*==============================================================*/
create or replace view VIEW_QUALITY_EXAMINE as
select a.*,
       b.c_name FORWARDEXAMINEname,
       b.c_code FORWARDEXAMINEcode,
       c.I_STATE_FLAG,
       c.I_CLOSE_FLAG,
       c.I_DEL i_state_del,
       c.C_STATE_FLAG,
       c.c_close_flag,
       c.c_del c_state_del
  from (select t.*, func_rettablename(t.rowid) tablename from QUALITY_EXAMINE t) a
 inner join QUALITY_FORWARDEXAMINE b on a.I_QUALITY_FORWARDEXAMINE_ID = b.id
  left join VIEW_CHECK_STATEINFO c on a.tablename = c.c_main_tablename
                                  and a.id = c.i_table_id

with read only;

 comment on table VIEW_QUALITY_EXAMINE is
'质检单视图';

/*==============================================================*/
/* View: VIEW_QUALITY_EXAMINESUB                                */
/*==============================================================*/
create or replace view VIEW_QUALITY_EXAMINESUB as
select a.id,
       a.i_quality_examine_id,
       a.i_quality_forwardexaminesub_id,
       a.i_base_wareunit_id,
       a.f_emitnum,
       a.i_quality_program_id,
       a.c_qualityoperator,
       a.c_quality,
       a.f_num,
       a.f_qualityqualified,
       a.f_qualitynotqualified,
       a.c_qualityresult,
       a.f_qualified,
       a.f_notqualified,
       a.c_disposenotqualified,
       a.i_oper_id,
       a.c_oper_name,
       a.d_insert_date,
       a.i_oper_modifyid,
       a.c_oper_modifyname,
       a.d_modify_date,
       a.i_del,
       b.C_NAME warename,
       b.UNIT_LAYOUT,
       b.UNIT_NAME,
       b.UNIT_SWAP,
       b.c_aliascode
  from QUALITY_EXAMINESUB a
 inner join VIEW_WAREALL b on a.i_base_wareunit_id = b.UNIT_ID
with read only;

 comment on table VIEW_QUALITY_EXAMINESUB is
'质检单子表视图';

/*==============================================================*/
/* View: VIEW_QUALITY_FORWARDEXAMINE                            */
/*==============================================================*/
create or replace view VIEW_QUALITY_FORWARDEXAMINE as
select a.*,
       c.I_STATE_FLAG,
       c.I_CLOSE_FLAG,
       c.I_DEL i_state_del,
       c.C_STATE_FLAG,
       c.c_close_flag,
       c.c_del c_state_del
  from (select t.*, func_rettablename(t.rowid) tablename
          from QUALITY_FORWARDEXAMINE t) a
  left join VIEW_CHECK_STATEINFO c on a.tablename = c.c_main_tablename
                                  and a.id = c.i_table_id
with read only;

 comment on table VIEW_QUALITY_FORWARDEXAMINE is
'质检请验单视图';

/*==============================================================*/
/* View: VIEW_QUALITY_FORWARDEXAMINESUB                         */
/*==============================================================*/
create or replace view VIEW_QUALITY_FORWARDEXAMINESUB as
select a.id,
       a.i_quality_forwardexamine_id,
       a.i_emitbusinesssub_id,
       a.i_base_wareunit_id,
       a.f_num,
       a.i_oper_id,
       a.c_oper_name,
       a.d_insert_date,
       a.i_oper_modifyid,
       a.c_oper_modifyname,
       a.d_modify_date,
       a.i_del,
       b.C_NAME warename,
       b.UNIT_LAYOUT,
       b.UNIT_NAME,
       b.UNIT_SWAP,
       b.c_aliascode
  from QUALITY_FORWARDEXAMINESUB a
 inner join VIEW_WAREALL b on a.i_base_wareunit_id = b.UNIT_ID
with read only;

 comment on table VIEW_QUALITY_FORWARDEXAMINESUB is
'请验单子表视图';

/*==============================================================*/
/* View: VIEW_QUALITY_PROGRAMSUB                                */
/*==============================================================*/
create or replace view VIEW_QUALITY_PROGRAMSUB as
select 
a.* , 
b.c_name,
b.c_analyzemodal,
b.c_analyzefunc,
b.c_qualitybasis,
b.c_qualityfunc,
b.c_qualitytools,
b.c_defectslevel
from QUALITY_PROGRAMSUB a
inner join QUALITY_ITEMS b on a.i_quality_items_id = b.id
with read only;

 comment on table VIEW_QUALITY_PROGRAMSUB is
'检验方案子表视图';

