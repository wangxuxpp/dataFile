drop function FUN_PRODWORKCENTERSTATUSSUB
/


create or replace function FUN_PRODWORKCENTERSTATUSSUB(iCenterSubId integer)
  return varchar2 is
  Result varchar(200) :='生产中';
/**
返回状态：
1.等待生产
2.生产中
3.等待质检
4.可继续生产
5.质检未通过
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
    Result := '等待生产';
  end if;
  if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='无质检' or workcenter.c_qualityInfo='合格')) then
    Result := '等待生产';
  end if;
  if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='质检' and workcenter.c_qualityInfo='待检')) then
    Result := '等待质检';
  end if;
  if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='质检' and workcenter.c_qualityInfo='不合格')) then
    Result := '质检未通过';
  end if;
  return Result;
end;
/
