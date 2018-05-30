create or replace view VIEW_CHECKINGRECORD
AS

--审批进行中的业务单据
select c.I_CHECHOPERID ,c.I_FLOW ,a.* from check_stateinfo a
inner join view_checkedmaxflow b
on a.c_type = b.c_type and a.c_main_tablename = b.c_main_tablename and a.i_table_id=b.i_table_id
and a.i_close_flag<>1
and a.i_del <>1
and a.i_state_flag =1
inner join view_checkflow c
on b.c_type = c.C_TYPE and b.maxFlow = c.preFlow
union all
--第一操作员需要审批的业务单据
select  bb.I_CHECHOPERID ,bb.I_FLOW ,aa.* from check_stateinfo aa
inner join view_checkflow bb
on aa.c_type = bb.C_TYPE and bb.preFlow =-1
and aa.id not in(select id from view_checkedrecord)
and aa.i_close_flag<>1
and aa.i_del <>1
and aa.i_state_flag =1
union all       
--特权操作需要审批的业务单据                 
select bbb.I_CHECHOPERID , bbb.I_FLOW , aaa.* from check_stateinfo aaa
inner join view_checkflow bbb 
on aaa.c_type=bbb.C_TYPE and bbb.I_MODAL = 2
and aaa.i_close_flag<>1
and aaa.i_del <>1
and aaa.i_state_flag =1;
           
              
