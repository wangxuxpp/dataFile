drop function FUN_PRODWORKCENTERSTATUS
/


create or replace function FUN_PRODWORKCENTERSTATUS(iWorkCenterId integer)
    return varchar2 is
  Result varchar(200) :='生产中';
/**
返回工作中心当前状态
返回值：
1.等待生产
2.生产中
3.等待质检
4.质检未通过
5.空闲 模台加工完成 流水：模台流转到下一步且上一模台无需加工
6.故障
7.多模台_空闲
8.多模台_待完
9.多模台_加工
10.多模台_已满

**/

type cur_type is ref cursor;
mycursorSub cur_type;
num integer :=0;
wnum integer :=0;

subsum integer := 0;
subtemp integer := 0;
subacquirefinish integer:=0;
submake integer:= 0;
cursor mycursor is
select * from VIEW_PROD_WORKCENTERNOW where id=iWorkCenterId;

workcenter VIEW_PROD_WORKCENTERNOW%rowtype;
str varchar(500);

begin
  if (REGISTERFUNCINFO() !=1) then
    return '';
  end if;
  str :='select count(1) n from VIEW_PROD_WORKCENTERNOW where id ='||to_char(iWorkCenterId);
  open mycursorSub for str;
  fetch mycursorsub into num;
  close  mycursorsub;

  if (num =0) then
    return '空闲';
  end if;

  open mycursor;
  --判断工位模台数量
  if (num =1) then begin

     fetch mycursor into workcenter;
     --判断工位是否出现故障
     if workcenter.C_CENTERSTATUS !='运行' then
        return workcenter.C_CENTERSTATUS;
     end if;

     --下一个需要加工的任务单
     wnum := nvl(fun_prodcenternextmake(iWorkCenterId) ,0);
     if (workcenter.i_work_make_id is null and wnum =0) then
        Result := '空闲';
     end if;
     if (workcenter.i_work_make_id is null and wnum !=0) then
        Result := '等待生产';
     end if;

     if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='无质检' or workcenter.c_qualityInfo='合格')) then
        if(wnum =0) then
           Result := '空闲';
        else
           Result := '等待生产';
        end if;
     end if;
     if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='质检' and workcenter.c_qualityInfo is null)) then
        Result := '等待质检';
     end if;
     if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='质检' and workcenter.c_qualityInfo='待检')) then
        Result := '等待质检';
     end if;
     if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='质检' and workcenter.c_qualityInfo='不合格')) then
        Result := '质检未通过';
     end if;
  end; else begin
     loop
          fetch mycursor into workcenter;
          exit when mycursor%notfound;
          --判断工位是否出现故障
          if workcenter.C_CENTERSTATUS !='运行' then
             return workcenter.C_CENTERSTATUS;
          end if;

          subsum := subsum+1;
          if (workcenter.C_STATUS ='开始加工') then
             if (workcenter.f_defer_time >= workcenter.F_ACQUIRE_TIME) then
                subacquirefinish := subacquirefinish+1;
             else
                submake := submake+1;
             end if;
             continue;
          else
             subtemp := subtemp+1;
          end if;
     end loop;
     if subsum = subtemp then
        return '多模台_空闲';
     end if;
     if subsum = submake then
       return '多模台_已满';
     end if;
     if subacquirefinish >0 then
       return '多模台_待完_'||to_char(subacquirefinish);
     end if;
     Result := '多模台_加工_'||to_char(submake)||'空闲:'||to_char(subtemp);
  end; end if;
  close mycursor;

  return Result;
end;
/
