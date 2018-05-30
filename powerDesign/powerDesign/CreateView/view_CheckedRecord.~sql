create or replace view view_CheckedRecord

as
--查询用户已审批业务单据信息
select  bb.i_chechoperid , bb.i_bcheckoperid ,bb.i_flow,bb.c_memo ,aa.* 
from check_stateinfo aa
inner join (select a.* from check_recordinfo a
inner join check_flow b
on a.c_type = b.c_type
and a.i_chechoperid = b.i_chechoperid
and a.i_flow = b.i_flow
and a.i_del <>1 
and a.i_backflag <>1) bb
on aa.c_type = bb.c_type
and aa.c_main_tablename = bb.c_main_tablename
and aa.i_table_id = bb.i_table_id





           
              
