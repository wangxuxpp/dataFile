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
'�ʼ쵥';

comment on column QUALITY_EXAMINE.I_QUALITY_FORWARDEXAMINE_ID is
'���鵥ID';

comment on column QUALITY_EXAMINE.C_NAME is
'�ʼ쵥����';

comment on column QUALITY_EXAMINE.C_CODE is
'�ʼ쵥���';

comment on column QUALITY_EXAMINE.I_OPER_ID is
'����Ա���';

comment on column QUALITY_EXAMINE.C_OPER_NAME is
'����Ա����';

comment on column QUALITY_EXAMINE.D_INSERT_DATE is
'��¼��������';

comment on column QUALITY_EXAMINE.I_OPER_MODIFYID is
'�޸ļ�¼����Ա���';

comment on column QUALITY_EXAMINE.C_OPER_MODIFYNAME is
'�޸ļ�¼����Ա����';

comment on column QUALITY_EXAMINE.D_MODIFY_DATE is
'�޸ļ�¼��¼����';

comment on column QUALITY_EXAMINE.I_DEL is
'��¼ɾ����־��1Ϊɾ��������Ϊ������¼��';

comment on column QUALITY_EXAMINE.C_ALIASCODE is
'������';

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
   C_QUALITY            VARCHAR2(50)                   default '���' not null,
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
'�ʼ쵥�ӱ�
';

comment on column QUALITY_EXAMINESUB.I_QUALITY_EXAMINE_ID is
'�ʼ쵥����ID';

comment on column QUALITY_EXAMINESUB.I_QUALITY_FORWARDEXAMINESUB_ID is
'���鵥�ӱ�ID';

comment on column QUALITY_EXAMINESUB.I_BASE_WAREUNIT_ID is
'��Ʒ���Ƶ�λ�������BASE_WAREUNIT->Id';

comment on column QUALITY_EXAMINESUB.F_EMITNUM is
'������Ʒ����';

comment on column QUALITY_EXAMINESUB.I_QUALITY_PROGRAM_ID is
'���鷽��ID';

comment on column QUALITY_EXAMINESUB.C_QUALITYOPERATOR is
'�ʼ����ԱQUALITY_OPERATOR����>c_name';

comment on column QUALITY_EXAMINESUB.C_QUALITY is
'�ʼ췽ʽ�����,���,ȫ�졿';

comment on column QUALITY_EXAMINESUB.F_NUM is
'��������';

comment on column QUALITY_EXAMINESUB.F_QUALITYQUALIFIED is
'����ϸ�����';

comment on column QUALITY_EXAMINESUB.F_QUALITYNOTQUALIFIED is
'���鲻�ϸ�����';

comment on column QUALITY_EXAMINESUB.C_QUALITYRESULT is
'�ʼ���
QUALITY_RESULT->c_name';

comment on column QUALITY_EXAMINESUB.F_QUALIFIED is
'�ϸ�����';

comment on column QUALITY_EXAMINESUB.F_NOTQUALIFIED is
'���ϸ�����';

comment on column QUALITY_EXAMINESUB.C_DISPOSENOTQUALIFIED is
'���ϸ�ԭ�򼰴���취';

comment on column QUALITY_EXAMINESUB.I_OPER_ID is
'����Ա���';

comment on column QUALITY_EXAMINESUB.C_OPER_NAME is
'����Ա����';

comment on column QUALITY_EXAMINESUB.D_INSERT_DATE is
'��¼��������';

comment on column QUALITY_EXAMINESUB.I_OPER_MODIFYID is
'�޸ļ�¼����Ա���';

comment on column QUALITY_EXAMINESUB.C_OPER_MODIFYNAME is
'�޸ļ�¼����Ա����';

comment on column QUALITY_EXAMINESUB.D_MODIFY_DATE is
'�޸ļ�¼��¼����';

comment on column QUALITY_EXAMINESUB.I_DEL is
'��¼ɾ����־��1Ϊɾ��������Ϊ������¼��';

comment on column QUALITY_EXAMINESUB.C_ALIASCODE is
'������';

alter table QUALITY_EXAMINESUB
   add constraint CKC_C_QUALITY_QUALITY_ check (C_QUALITY in ('���','ȫ��'));

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
'�ʼ����鵥';

comment on column QUALITY_FORWARDEXAMINE.C_NAME is
'���鵥����';

comment on column QUALITY_FORWARDEXAMINE.C_CODE is
'���鵥���';

comment on column QUALITY_FORWARDEXAMINE.C_TYPE is
'���鵥����
��Ӧҵ�񵥾����ͱ�SYS_CHECKTYPE��C_NAME�ֶΣ���ʾ���ĸ�ҵ�񵥾���Ҫ�ʼ�
������ֶ�������鵥���ֶ�ӦΪ���ա�';

comment on column QUALITY_FORWARDEXAMINE.I_EMITBUSINESS_ID is
'�������鵥��ҵ�񵥾�����ID';

comment on column QUALITY_FORWARDEXAMINE.C_EMTINAME is
'������Ա����';

comment on column QUALITY_FORWARDEXAMINE.I_OPER_ID is
'����Ա���';

comment on column QUALITY_FORWARDEXAMINE.C_OPER_NAME is
'����Ա����';

comment on column QUALITY_FORWARDEXAMINE.D_INSERT_DATE is
'��¼��������';

comment on column QUALITY_FORWARDEXAMINE.I_OPER_MODIFYID is
'�޸ļ�¼����Ա���';

comment on column QUALITY_FORWARDEXAMINE.C_OPER_MODIFYNAME is
'�޸ļ�¼����Ա����';

comment on column QUALITY_FORWARDEXAMINE.D_MODIFY_DATE is
'�޸ļ�¼��¼����';

comment on column QUALITY_FORWARDEXAMINE.I_DEL is
'��¼ɾ����־��1Ϊɾ��������Ϊ������¼��';

comment on column QUALITY_FORWARDEXAMINE.C_ALIASCODE is
'������';

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
'���鵥�ӱ�';

comment on column QUALITY_FORWARDEXAMINESUB.I_QUALITY_FORWARDEXAMINE_ID is
'������鵥����ID';

comment on column QUALITY_FORWARDEXAMINESUB.I_EMITBUSINESSSUB_ID is
'����ҵ�񵥾��ӱ�ID
�����鵥�������ͨ�����ֶν�������д�ص�ҵ�񵥾�';

comment on column QUALITY_FORWARDEXAMINESUB.I_BASE_WAREUNIT_ID is
'��Ʒ���Ƶ�λ�������BASE_WAREUNIT->Id';

comment on column QUALITY_FORWARDEXAMINESUB.F_NUM is
'������Ʒ����';

comment on column QUALITY_FORWARDEXAMINESUB.I_OPER_ID is
'����Ա���';

comment on column QUALITY_FORWARDEXAMINESUB.C_OPER_NAME is
'����Ա����';

comment on column QUALITY_FORWARDEXAMINESUB.D_INSERT_DATE is
'��¼��������';

comment on column QUALITY_FORWARDEXAMINESUB.I_OPER_MODIFYID is
'�޸ļ�¼����Ա���';

comment on column QUALITY_FORWARDEXAMINESUB.C_OPER_MODIFYNAME is
'�޸ļ�¼����Ա����';

comment on column QUALITY_FORWARDEXAMINESUB.D_MODIFY_DATE is
'�޸ļ�¼��¼����';

comment on column QUALITY_FORWARDEXAMINESUB.I_DEL is
'��¼ɾ����־��1Ϊɾ��������Ϊ������¼��';

comment on column QUALITY_FORWARDEXAMINESUB.C_ALIASCODE is
'������';

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
'���������Ŀ�б�';

comment on column QUALITY_ITEMS.C_NAME is
'�ʼ���Ŀ����';

comment on column QUALITY_ITEMS.C_ANALYZEMODAL is
'�ʼ���Ŀ������ʽ';

comment on column QUALITY_ITEMS.C_ANALYZEFUNC is
'������Ŀ��������
�����������ж��Է����������������������������� 
    ���Է��������Ͷ��������������ڼ��鵥�У�ѡ������һ�����׼ֵ�ֶ�ϵͳ�Զ��л��ַ��͡���ֵ�Ե��ֶ����ԣ����������ɲ���ƻ������Է���ֻ������˵�����á�������������û�����ơ� ';

comment on column QUALITY_ITEMS.C_QUALITYBASIS is
'��Ŀ�������';

comment on column QUALITY_ITEMS.C_QUALITYFUNC is
'��Ŀ��ⷽ��';

comment on column QUALITY_ITEMS.C_QUALITYTOOLS is
'��Ŀ��⹤��';

comment on column QUALITY_ITEMS.C_DEFECTSLEVEL is
'��ĿȨ��ȱ�ݵȼ�';

comment on column QUALITY_ITEMS.I_OPER_ID is
'����Ա���';

comment on column QUALITY_ITEMS.C_OPER_NAME is
'����Ա����';

comment on column QUALITY_ITEMS.D_INSERT_DATE is
'��¼��������';

comment on column QUALITY_ITEMS.I_OPER_MODIFYID is
'�޸ļ�¼����Ա���';

comment on column QUALITY_ITEMS.C_OPER_MODIFYNAME is
'�޸ļ�¼����Ա����';

comment on column QUALITY_ITEMS.D_MODIFY_DATE is
'�޸ļ�¼��¼����';

comment on column QUALITY_ITEMS.I_DEL is
'��¼ɾ����־��1Ϊɾ��������Ϊ������¼��';

comment on column QUALITY_ITEMS.C_ALIASCODE is
'������';

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
'�ʼ�Ա';

comment on column QUALITY_OPERATOR.C_NAME is
'�ʼ�Ա����';

comment on column QUALITY_OPERATOR.C_TYPE is
'�ʼ�����������⣬���⣬��������';

comment on column QUALITY_OPERATOR.I_OPER_ID is
'����Ա���';

comment on column QUALITY_OPERATOR.C_OPER_NAME is
'����Ա����';

comment on column QUALITY_OPERATOR.D_INSERT_DATE is
'��¼��������';

comment on column QUALITY_OPERATOR.I_OPER_MODIFYID is
'�޸ļ�¼����Ա���';

comment on column QUALITY_OPERATOR.C_OPER_MODIFYNAME is
'�޸ļ�¼����Ա����';

comment on column QUALITY_OPERATOR.D_MODIFY_DATE is
'�޸ļ�¼��¼����';

comment on column QUALITY_OPERATOR.I_DEL is
'��¼ɾ����־��1Ϊɾ��������Ϊ������¼��';

comment on column QUALITY_OPERATOR.C_ALIASCODE is
'������';

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
'���鷽��';

comment on column QUALITY_PROGRAM.C_NAME is
'���鷽������';

comment on column QUALITY_PROGRAM.C_MEMO is
'��ע';

comment on column QUALITY_PROGRAM.I_OPER_ID is
'����Ա���';

comment on column QUALITY_PROGRAM.C_OPER_NAME is
'����Ա����';

comment on column QUALITY_PROGRAM.D_INSERT_DATE is
'��¼��������';

comment on column QUALITY_PROGRAM.I_OPER_MODIFYID is
'�޸ļ�¼����Ա���';

comment on column QUALITY_PROGRAM.C_OPER_MODIFYNAME is
'�޸ļ�¼����Ա����';

comment on column QUALITY_PROGRAM.D_MODIFY_DATE is
'�޸ļ�¼��¼����';

comment on column QUALITY_PROGRAM.I_DEL is
'��¼ɾ����־��1Ϊɾ��������Ϊ������¼��';

comment on column QUALITY_PROGRAM.C_ALIASCODE is
'������';

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
'���鷽���ӱ�';

comment on column QUALITY_PROGRAMSUB.I_QUALITY_PROGRAM_ID is
'���鷽������ID';

comment on column QUALITY_PROGRAMSUB.I_QUALITY_ITEMS_ID is
'���������Ŀ�б�ID';

comment on column QUALITY_PROGRAMSUB.N_STANDARD is
'��׼ֵ';

comment on column QUALITY_PROGRAMSUB.N_UPPERDEVIATION is
'�Ϲ���
';

comment on column QUALITY_PROGRAMSUB.N_LOWDEVIATION is
'�¹���';

comment on column QUALITY_PROGRAMSUB.C_MEMO is
'��ע';

comment on column QUALITY_PROGRAMSUB.I_OPER_ID is
'����Ա���';

comment on column QUALITY_PROGRAMSUB.C_OPER_NAME is
'����Ա����';

comment on column QUALITY_PROGRAMSUB.D_INSERT_DATE is
'��¼��������';

comment on column QUALITY_PROGRAMSUB.I_OPER_MODIFYID is
'�޸ļ�¼����Ա���';

comment on column QUALITY_PROGRAMSUB.C_OPER_MODIFYNAME is
'�޸ļ�¼����Ա����';

comment on column QUALITY_PROGRAMSUB.D_MODIFY_DATE is
'�޸ļ�¼��¼����';

comment on column QUALITY_PROGRAMSUB.I_DEL is
'��¼ɾ����־��1Ϊɾ��������Ϊ������¼��';

comment on column QUALITY_PROGRAMSUB.C_ALIASCODE is
'������';

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
'�ʼ���';

comment on column QUALITY_RESULT.C_NAME is
'�ʼ�������';

comment on column QUALITY_RESULT.I_OPER_ID is
'����Ա���';

comment on column QUALITY_RESULT.C_OPER_NAME is
'����Ա����';

comment on column QUALITY_RESULT.D_INSERT_DATE is
'��¼��������';

comment on column QUALITY_RESULT.I_OPER_MODIFYID is
'�޸ļ�¼����Ա���';

comment on column QUALITY_RESULT.C_OPER_MODIFYNAME is
'�޸ļ�¼����Ա����';

comment on column QUALITY_RESULT.D_MODIFY_DATE is
'�޸ļ�¼��¼����';

comment on column QUALITY_RESULT.I_DEL is
'��¼ɾ����־��1Ϊɾ��������Ϊ������¼��';

comment on column QUALITY_RESULT.C_ALIASCODE is
'������';

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
'�ʼ쵥��ͼ';

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
'�ʼ쵥�ӱ���ͼ';

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
'�ʼ����鵥��ͼ';

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
'���鵥�ӱ���ͼ';

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
'���鷽���ӱ���ͼ';

