drop function FUNC_RETPREFLOW
/

--返回上一步审批流程编号
create or replace function FUNC_RETPREFLOW(flowId integer) return number is
  Result number;

type cur_type is ref cursor;

cursor mycursor  is
select * from check_flow
where id=flowId;

mycursors cur_type ;

flowRow  check_flow%rowtype;
preFlow check_flow.i_flow%type;
nowFlow Check_Flow.i_Flow%type;
str varchar(500);
begin
  Result := -1;
  preFlow := -1;
  nowFlow := -1;
  open mycursor;

  FETCH   mycursor   INTO   flowRow;
  close mycursor;

  str:='select i_flow  from check_flow a '
              ||' where a.c_type ='''
              || flowrow.c_type
              ||''' group by a.i_flow'
              ||' order by a.i_flow';


  open mycursors for str;
  loop
       fetch mycursors into nowFlow ;
       exit when mycursors%notfound;

       if nowFlow = flowRow.i_Flow then
          exit;
       else
           preFlow :=nowFlow;
       end if;

  end loop;

  result := preFlow;
  return Result;
end FUNC_RETPREFLOW;
/
