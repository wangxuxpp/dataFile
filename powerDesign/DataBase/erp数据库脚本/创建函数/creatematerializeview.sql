drop materialized view log on CHECK_STATEINFO;
--
drop materialized view log on  base_wareunit ;
drop materialized view log on  base_ware ;
drop materialized view log on  BASE_WAREEXTENDPROPERTY ;
drop materialized view log on  BASE_WARESTOCKINFO ;
drop materialized view log on  BASE_WAREPURCHASEINFO;
drop materialized view log on  BASE_WAREPLANPROPERTY;
--
drop materialized view log on  PROD_WORKCENTER;
drop materialized view log on  PROD_WORKSHOP;
drop materialized view log on  PROD_FACTORYCALENDAR;
--
drop  materialized view log on PROD_CRAFTSUB;
------------------------------------------------------------------------------------------------------------------------------------------------
create materialized view log on CHECK_STATEINFO with primary key;
--
create materialized view log on  base_wareunit with rowid;
create materialized view log on  base_ware with rowid;
create materialized view log on  BASE_WAREEXTENDPROPERTY with rowid;
create materialized view log on  BASE_WARESTOCKINFO with rowid;
create materialized view log on  BASE_WAREPURCHASEINFO with rowid;
create materialized view log on  BASE_WAREPLANPROPERTY with rowid;
--
create materialized view log on PROD_WORKCENTER with rowid;
create materialized view log on PROD_WORKSHOP with rowid;
create materialized view log on PROD_FACTORYCALENDAR with rowid;
--
create materialized view log on PROD_CRAFTSUB with primary key;
--start-----------------------------------------------------------------------------------------------------------------------------------------
--审批状态物化视图
drop materialized view VIEW_CHECK_STATEINFO;
drop table VIEW_CHECK_STATEINFO cascade constraint;

create materialized view VIEW_CHECK_STATEINFO 
refresh fast
on commit
as
select t.*,
       FUN_RETURNROWID(t.c_main_tablename, t.i_table_id) tablerowid,
       case I_STATE_FLAG
         when 0 then
          '未审批'
         when 1 then
          '审批中'
         when 2 then
          '已审批'
         when 3 then
          '已终结'
       end C_STATE_FLAG,
       case t.i_close_flag
         when 1 then
          '关闭'
         when 0 then
          '正常'
       end c_close_flag,
       case t.i_del
         when 1 then
          '删除'
         when 0 then
          '正常'
       end c_del

  from CHECK_STATEINFO t;

create index "vIndex_1" on VIEW_CHECK_STATEINFO(C_TYPE ASC);
create index "vIndex_4" on VIEW_CHECK_STATEINFO(TABLEROWID ASC);
create index "vIndex_2" on VIEW_CHECK_STATEINFO(C_MAIN_TABLENAME ASC);
create index "vIndex_3" on VIEW_CHECK_STATEINFO(I_TABLE_ID ASC);
--end-------------------------------------------------------------------------------------------------------------------------------------



--物品物化视图
--start-------------------------------------------------------------------------------------------------------------------------------------
drop materialized view VIEW_WAREALL;
drop table VIEW_WAREALL cascade constraint;

create materialized view VIEW_WAREALL
refresh fast
on commit
as
select a.C_CODE,
       a.C_LAYOUT UNIT_LAYOUT,
       a.C_NAME UNIT_NAME,
       a.F_SWAP UNIT_SWAP,
       a.F_BOXSWAP UNIT_BOXSWAP,
       a.ID UNIT_ID,
       a.I_BASE_WAREBASEUNIT_ID UNIT_BASEID,
       a.I_DEL UNIT_DEL,
       a.I_ISBASEUNIT UNIT_ISBASE,
       a.C_APPROVALNUMBER,
       a.I_GUARANTEEPERIOD,
       b.ID,
       b.C_NAME,
       b.I_OPER_ID,
       b.C_OPER_NAME,
       b.D_INSERT_DATE,
       b.I_OPER_MODIFYID,
       b.C_OPER_MODIFYNAME,
       b.D_MODIFY_DATE,
       b.I_DEL,
       b.C_ALIASCODE,
       case
         when b.i_del = 1 then
          '删除'
         else
          '正常'
       end c_del,
       c.i_sell,
       c.i_buy,
       c.i_make,
       c.i_foreignmake,
       c.i_produceconsume,
       c.i_calculateyield,
       e.id i_stockinfo_id,
       e.n_batchcount,
       e.f_min,
       e.f_max,
       e.c_valuationclass,
       e.i_base_stockabc_id,
       e.i_stockclass,
       e.i_buyinstock,
       e.i_acquirewarestock,
       e.i_backwarestock,
       e.i_finishedwarestock,
       e.i_sellbackstock,
       e.i_discardstock,
       f.i_buy_client_id,
       f.N_AVERAGE_COUNT,
       f.I_IS_QUALIFICATION,
       f.N_NEWPRICE,
       f.N_AVERAGEPRICE,
       f.F_RATE,
       g.c_planclass,
       g.n_ordergoodspoint,
       g.i_planday,
       g.n_plt,
       g.n_product_cycle,
       g.i_base_wareunit_id i_plan_wareunit_id,
       g.n_fixedcount,
       a.rowid arowid,
       b.rowid browid,
       c.rowid crowid,
       e.rowid erowid,
       f.rowid frowid,
       g.rowid growid
  from base_wareunit           a,
       base_ware               b,
       BASE_WAREEXTENDPROPERTY c,
       BASE_WARESTOCKINFO      e,
       BASE_WAREPURCHASEINFO   f,
       BASE_WAREPLANPROPERTY   g
 where a.I_BASE_WARE_ID = b.ID
   and a.I_BASE_WARE_ID = c.i_base_ware_id
   and a.I_BASE_WARE_ID = e.I_BASE_WARE_ID
   and a.I_BASE_WARE_ID = f.i_base_ware_id
   and a.I_BASE_WARE_ID = g.i_base_ware_id;
-- Create/Recreate indexes 
create index VIEW_WAREALLINDEX1 on VIEW_WAREALL(c_code ASC);
create index VIEW_WAREALLINDEX2 on VIEW_WAREALL(id ASC);
create index VIEW_WAREALLINDEX3 on VIEW_WAREALL(unit_name ASC);
create index VIEW_WAREALLINDEX5 on VIEW_WAREALL(c_name ASC);
-- Create/Recreate primary, unique and foreign key constraints 
alter table VIEW_WAREALL add constraint VIEW_WAREALLPK primary key(UNIT_ID);
--end-------------------------------------------------------------------------------------------------------------------------------------  



--start------------------------------------------------------------------------------------------------------------------------------------- 
--工作中心物化视图
drop materialized view VIEWM_PROD_WORKCENTER;
drop table VIEWM_PROD_WORKCENTER cascade constraint;

create materialized view VIEWM_PROD_WORKCENTER 
refresh fast
on commit
as
select a.*,
       b.C_NAME c_workshop_name,
       nvl(c.id, 0) i_calendar_id,
       a.rowid arowid,
       b.rowid browid,
       c.rowid crowid
  from PROD_WORKCENTER a, PROD_WORKSHOP b, PROD_FACTORYCALENDAR c
 where a.i_prod_workshop_id = b.ID
   and a.i_prod_workshop_id = c.i_prod_workshop_id(+);

alter table VIEWM_PROD_WORKCENTER add constraint VIEWM_PROD_WORKCENTERKEY primary key(ID);

create index VIEWM_PROD_WORKCENTERIN1 on VIEWM_PROD_WORKCENTER(i_prod_workshop_id);
create index VIEWM_PROD_WORKCENTERIN2 on VIEWM_PROD_WORKCENTER(i_prod_worktimemodal_id);
--end-------------------------------------------------------------------------------------------------------------------------------------



--start-------------------------------------------------------------------------------------------------------------------------------------
--生产工艺视图
drop materialized view VIEWM_PROD_CRAFTSUBTIME;
drop table VIEWM_PROD_CRAFTSUBTIME cascade constraint;

create materialized view VIEWM_PROD_CRAFTSUBTIME 
refresh fast
on commit
as
select a.*,
       round((a.n_queuetiem + a.n_preparetiem + a.n_runtime + a.n_movetime) /
             (case
               when a.c_tiemunit = '分钟' then
                60
               else
                1
             end),
             2) n_sumtime

  from PROD_CRAFTSUB a;

create index VIEWM_PROD_CRAFTSUBTIMEIN1 on VIEWM_PROD_CRAFTSUBTIME (i_prod_craft_id);
create index VIEWM_PROD_CRAFTSUBTIMEIN2 on VIEWM_PROD_CRAFTSUBTIME (i_prod_workprocess_id);               
--end-------------------------------------------------------------------------------------------------------------------------------------
