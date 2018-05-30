drop function FUN_PRODMAKE_ABLEQUALITY
/


create or replace function FUN_PRODMAKE_ABLEQUALITY(iWorkMakeId integer)
  return varchar2 is
  Result varchar(200);

/*
���ع�λ�ӹ����Ƿ���Ҫ�ʼ�
@iWorkMakeId ��λ�ӹ���ID

@return      ��λ�ӹ����Ƿ���Ҫ�ʼ�
1�����ʼ�
2���ʼ�
*/
cursor mycursor is
  select *
  from PROD_WORKMAKE
  where id = iWorkMakeId;

workMake PROD_WORKMAKE%rowtype;
str varchar(500);

begin
  Result := '�ʼ�';

  open mycursor;
  fetch mycursor into workMake ;
  close mycursor;

  select c_workline_type into str from mview_prod_command_info  where i_prod_command_id = workMake.i_Prod_Command_Id and rownum =1 ;

  if (str ='��ˮ��') then begin
     select c_quality into Result from mview_prod_workcenter where id = workMake.i_Prod_Workcenter_Id;
  end ; else begin
     select C_ABLEQUALITY into Result from PROD_CRAFTSEQUENCE where id = workMake.i_Prod_Craftsequence_Id;
  end ;end if;

  return Result;
end;
/
