drop function FUN_READNEXTCOMMAND
/


create or replace function FUN_READNEXTCOMMAND(iWorkLineId integer , iSequenceId integer)
return integer is
commandsub VIEW_PROD_CMD_CRAFT_FIRSTSEQ%rowtype;

type cur_type is ref cursor;
commandcursor cur_type;

str varchar(500);
begin
   if (REGISTERFUNCINFO() !=1) then
    return 0;
  end if;
    str := 'select * from VIEW_PROD_CMD_CRAFT_FIRSTSEQ a where a.i_prod_workline_id ='||to_char(iWorkLineId)
                         ||' and a.i_prod_command_id not in (select I_PROD_COMMAND_ID from PROD_WORKMAKE where i_del<>1) '
                         ||' and a.i_prod_craftsequence_id='||to_char(iSequenceId)
                         ||' order by a.d_senddate , a.i_prod_command_id';
    open commandcursor for str;
    fetch commandcursor into commandsub;
    close commandcursor;
    return nvl(commandsub.i_prod_command_id,0);
exception
    when others then
    return 0;
end;
/
