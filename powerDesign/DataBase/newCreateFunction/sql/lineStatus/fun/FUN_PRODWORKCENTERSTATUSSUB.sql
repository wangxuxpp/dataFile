drop function FUN_PRODWORKCENTERSTATUSSUB
/


create or replace function FUN_PRODWORKCENTERSTATUSSUB(iCenterSubId integer)
  return varchar2 is
  Result varchar(200) :='������';
/**
����״̬��
1.�ȴ�����
2.������
3.�ȴ��ʼ�
4.�ɼ�������
5.�ʼ�δͨ��
**/

cursor mycursor is
select * from VIEW_PROD_WORKCENTERNOW where i_PROD_WORKCENTERSUB_id=iCenterSubId;

workcenter VIEW_PROD_WORKCENTERNOW%rowtype;

begin
  --if (registerfuncinfo() =0) then
     --return Result;
  --end if;
  open mycursor;
  fetch mycursor into workcenter;
  close mycursor;
  if (workcenter.i_work_make_id is null) then
    Result := '�ȴ�����';
  end if;
  if (workcenter.C_STATUS = '�����ӹ�' and (workcenter.C_MAKEABLEQUALITY ='���ʼ�' or workcenter.c_qualityInfo='�ϸ�')) then
    Result := '�ȴ�����';
  end if;
  if (workcenter.C_STATUS = '�����ӹ�' and (workcenter.C_MAKEABLEQUALITY ='�ʼ�' and workcenter.c_qualityInfo='����')) then
    Result := '�ȴ��ʼ�';
  end if;
  if (workcenter.C_STATUS = '�����ӹ�' and (workcenter.C_MAKEABLEQUALITY ='�ʼ�' and workcenter.c_qualityInfo='���ϸ�')) then
    Result := '�ʼ�δͨ��';
  end if;
  return Result;
end;
/
