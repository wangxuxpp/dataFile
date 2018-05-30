--审批状态物化视图
drop view VIEW_CHECK_STATEINFO;
/
drop materialized view log on CHECK_STATEINFO;
/
create materialized view log on CHECK_STATEINFO with primary key;
/
drop materialized view VIEW_CHECK_STATEINFO;
/
drop table VIEW_CHECK_STATEINFO cascade constraint;
/
create materialized view VIEW_CHECK_STATEINFO 
refresh fast
on commit
as
select t.*,FUN_RETURNROWID(t.c_main_tablename , t.i_table_id) tablerowid,
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
/

drop index "vIndex_3";
/
drop index "vIndex_2";
/
drop index "vIndex_4";
/
drop index "vIndex_1";
/
  
create index "vIndex_1" on VIEW_CHECK_STATEINFO (
   C_TYPE ASC
);
/
create index "vIndex_4" on VIEW_CHECK_STATEINFO (
   TABLEROWID ASC
);
/
create index "vIndex_2" on VIEW_CHECK_STATEINFO (
   C_MAIN_TABLENAME ASC
);
/
create index "vIndex_3" on VIEW_CHECK_STATEINFO (
   I_TABLE_ID ASC
);
/



--物品物化视图
drop materialized view log on base_wareunit ;
/
drop materialized view log on base_ware ;
/
drop materialized view log on BASE_WAREEXTENDPROPERTY ;
/
drop materialized view log on BASE_WARESTOCKINFO ;
/
drop materialized view log on BASE_WAREPURCHASEINFO;
/
drop materialized view log on BASE_WAREPLANPROPERTY;
/
create materialized view log on base_wareunit with rowid;
/
create materialized view log on base_ware with rowid;
/
create materialized view log on BASE_WAREEXTENDPROPERTY with rowid;
/
create materialized view log on BASE_WARESTOCKINFO with rowid;
/
create materialized view log on BASE_WAREPURCHASEINFO with rowid;
/
create materialized view log on BASE_WAREPLANPROPERTY with rowid;
/

drop materialized view VIEW_WAREALL;
/
drop table VIEW_WAREALL cascade constraint;
/

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
       e.i_waitcheckstock,
       e.i_dadstock,
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
/
-- Create/Recreate indexes 
create index VIEW_WAREALLINDEX1 on VIEW_WAREALL (c_code ASC);
/
create index VIEW_WAREALLINDEX2 on VIEW_WAREALL (id ASC);
/
create index VIEW_WAREALLINDEX3 on VIEW_WAREALL (unit_name ASC);
/
create index VIEW_WAREALLINDEX5 on VIEW_WAREALL (c_name ASC);
/
-- Create/Recreate primary, unique and foreign key constraints 
alter table VIEW_WAREALL
  add constraint VIEW_WAREALLPK primary key (UNIT_ID); 
/  
  
--凭证表物化视图

      drop materialized view log on  NF_VOUCHERSUB;
      /
      drop materialized view log on  NF_VOUCHER;
      /
      drop materialized view log on  nf_account;
      /
      drop materialized view log on  NF_SUBJECTCLASS;
      /
      drop materialized view log on  NF_SUBJECT;
      /
      drop materialized view log on  BASE_DEPT;
      /
      drop materialized view log on  HUMAN_EMPLOYEE;
      /
      drop materialized view log on  BUY_CLIENT;
      /
      drop materialized view log on  SELL_CLIENT;
      /
      drop materialized view log on  NF_PROJECT;
      /
      drop materialized view log on  NF_BANK ;
      /
      drop materialized view log on  NF_RATE ;
      /
      drop materialized view log on  PROD_WORKSHOP   ;
      /
      drop materialized view log on  BASE_STOCKCLASS ;
      /
      
      
      create materialized view log on  NF_VOUCHERSUB with rowid;
      /
      create materialized view log on  NF_VOUCHER with rowid;
      /
      create materialized view log on  nf_account with rowid;
      /
      create materialized view log on  NF_SUBJECTCLASS with rowid;
      /
      create materialized view log on  NF_SUBJECT with rowid;
      /
      create materialized view log on  BASE_DEPT with rowid;
      /
      create materialized view log on  HUMAN_EMPLOYEE with rowid;
      /
      create materialized view log on  BUY_CLIENT with rowid;
      /
      create materialized view log on  SELL_CLIENT with rowid;
      /
      create materialized view log on  NF_PROJECT with rowid;
      /
      create materialized view log on  NF_BANK with rowid;
      /
      create materialized view log on  NF_RATE with rowid;
      /
      create materialized view log on  PROD_WORKSHOP   with rowid;
      /
      create materialized view log on  BASE_STOCKCLASS with rowid;
      /



drop materialized view VIEWM_NF_VOUCHERSUB;
/
drop table VIEWM_NF_VOUCHERSUB cascade constraint;
/

create materialized view VIEWM_NF_VOUCHERSUB
refresh fast
on commit
as
select a.* , 
       b.d_date , 
       b.c_makedocument , 
       b.c_documentwrite,
       b.c_documentcheck,
       b.c_documentaccount,
       c.c_code c_nf_account_code, 
       c.c_name c_nf_account_name,
       c.d_start_date d_nf_account_date,
       c.i_default i_nf_account_default,
       e.c_name C_NAME,
       e.c_direct C_DIRECT,
       e.c_subject || ' | '|| e.c_name c_subjectname,
       regexp_substr(e.c_subject, '^\w{1}') c_subjectfirstchar,
       d.c_name C_SUBJECTCLASSname,
       f.c_name c_base_dept_id,
       g.c_name C_HUMAN_EMPLOYEE_ID,
       h.c_name C_BUY_CLIENT_ID,
       i.c_name C_SELL_CLIENT_ID,
       j.c_name C_NF_PROJECT_ID,
       k.c_name C_NF_BANK_ID , 
       l.c_name C_NF_RATE_ID ,
       n.c_name C_BASE_STOCKCLASS_ID ,
       m.c_name C_PROD_WORKSHOP_ID ,
       a.rowid arowid,
       b.rowid browid,
       c.rowid crowid,
       d.rowid drowid,
       e.rowid erowid,
       f.rowid frowid,
       g.rowid growid,
       h.rowid hrowid,
       i.rowid irowid,
       j.rowid jrowid,
       k.rowid krowid,
       l.rowid lrowid,
       m.rowid mrowid,
       n.rowid nrowid
  from NF_VOUCHERSUB           a,
       NF_VOUCHER              b,
       nf_account              c,
       NF_SUBJECTCLASS         d,
       NF_SUBJECT              e,
       BASE_DEPT               f,
       HUMAN_EMPLOYEE          g,
       BUY_CLIENT              h,
       SELL_CLIENT             i,
       NF_PROJECT              j,
       NF_BANK                 k,
       NF_RATE                 l,
       PROD_WORKSHOP           m,
       BASE_STOCKCLASS         n
 where a.i_nf_voucher_id = b.id
   and a.i_nf_account_id = c.id 
   and a.i_nf_account_id = e.i_nf_account_id and a.c_subject = e.c_subject
   and regexp_substr(a.c_subject, '^\w{1}') = d.c_contain
   and a.i_base_dept_id = f.id(+)
   and a.I_HUMAN_EMPLOYEE_ID = g.id(+)
   and a.I_BUY_CLIENT_ID = h.id(+)
   and a.I_SELL_CLIENT_ID = i.id(+)
   and a.I_NF_PROJECT_ID = j.id(+)
   and a.I_NF_BANK_ID = k.id(+)
   and a.I_NF_RATE_ID= l.id(+)
   and a.I_PROD_WORKSHOP_ID = m.id(+)
   and a.I_BASE_STOCKCLASS_ID = n.id(+);
   /
   
alter table VIEWM_NF_VOUCHERSUB
  add constraint VOUCHERSUBPK primary key (ID);  
  /
 create index VOUCHERSUBPKAA on VIEWM_NF_VOUCHERSUB (d_date); 
 /
 create index VOUCHERSUBPKAA1 on VIEWM_NF_VOUCHERSUB (I_BASE_WARE_ID);   
 /
