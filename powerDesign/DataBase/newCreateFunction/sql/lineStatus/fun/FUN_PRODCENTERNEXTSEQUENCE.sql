drop function FUN_PRODCENTERNEXTSEQUENCE
/


create or replace function FUN_PRODCENTERNEXTSEQUENCE(aid integer)
  return integer is
  Result integer := 0;
/**
  @aid 传入参数 工位ID
  @reutrn 任务单ID
  返回工位下一步需要加工的构件ID
**/
cursor mycursor is
select * from VIEW_PROD_WORKCENTER where id=aid;

workcenter VIEW_PROD_WORKCENTER%rowtype;
--生产任务单加工顺序游标
workCommand VIEW_PROD_COMMANDNOTPROD%rowtype;
type cur_type is ref cursor;
mycursorSub cur_type;

str varchar(500):='';

begin

  if (registerfuncinfo() =0) then
     return Result;
  end if;


  open mycursor;
  fetch mycursor into workcenter;
  close mycursor;
  --流水线
  if (workcenter.c_worklineType ='流水线') then begin
     return workcenter.i_prod_craftsequence_id;
  --固定模位
  end ; else begin
     str :='select * from VIEW_PROD_COMMANDNOTPROD where I_NOWPROD_WORKCENTER_ID ='||to_char(aid)||'  order by d_senddate , i_craftsequence,i_craftsequence';
     open mycursorSub for str;
     fetch mycursorSub into workCommand;
     close mycursorSub;
     if workCommand.i_nowprod_workcenter_id is not null then
        return workCommand.I_PROD_CRAFTSEQUENCE_ID;
     else
        str := 'select a.I_PROD_CRAFTSEQUENCE_ID from VIEW_PROD_FIXMODEL_CMD_CRAFT a where a.I_CRAFTSEQUENCE =1 and a.i_prod_workgroup_id is null '
               ||' and I_PROD_WORKLINE_ID='||to_char(workcenter.i_prod_workline_id)
               ||' order by a.D_SENDDATE , a.ID';
        --dbms_output.put_line(str);
        open mycursorSub for str;
        fetch mycursorSub into Result;
        close mycursorSub;
        return nvl(Result ,0);

     end if;

  end ; end if;

  return Result;
end;
/
