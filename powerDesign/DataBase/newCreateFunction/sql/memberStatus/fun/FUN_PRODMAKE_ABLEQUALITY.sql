drop function FUN_PRODMAKE_ABLEQUALITY
/


create or replace function FUN_PRODMAKE_ABLEQUALITY(iWorkMakeId integer)
  return varchar2 is
  Result varchar(200);

/*
返回工位加工单是否需要质检
@iWorkMakeId 工位加工单ID

@return      工位加工单是否需要质检
1、无质检
2、质检
*/
cursor mycursor is
  select *
  from PROD_WORKMAKE
  where id = iWorkMakeId;

workMake PROD_WORKMAKE%rowtype;
str varchar(500);

begin
  Result := '质检';

  open mycursor;
  fetch mycursor into workMake ;
  close mycursor;

  select c_workline_type into str from mview_prod_command_info  where i_prod_command_id = workMake.i_Prod_Command_Id and rownum =1 ;

  if (str ='流水线') then begin
     select c_quality into Result from mview_prod_workcenter where id = workMake.i_Prod_Workcenter_Id;
  end ; else begin
     select C_ABLEQUALITY into Result from PROD_CRAFTSEQUENCE where id = workMake.i_Prod_Craftsequence_Id;
  end ;end if;

  return Result;
end;
/
