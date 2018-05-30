drop function FUN_PRODAUTOLINECENTERCSS
/


create or replace function FUN_PRODAUTOLINECENTERCSS(state varchar)
  return varchar2 is
  r varchar2(100) := 'line_work_1';
  s varchar2(100) := '';
  /**
  根据状态返回流水线样式
  **/
begin
  if (REGISTERFUNCINFO() !=1) then
    return '';
  end if;
  s := trim(substr(state , 1 , 6));
  if (s = '等待生产') then
    return 'line_work_3';
  end if;
  if (s = '生产中') then
    return 'line_common_3'; -- 线状态用生产中状态代替
  end if;
  if (s = '等待质检') then
    return 'line_work_5';
  end if;
  if (s = '质检未通过') then
    return 'line_work_6';
  end if;
  if (s = '多模台_空闲') then
     return 'line_work_7';
  end if;
  if (s = '多模台_已满') then
    return 'line_work_8';
  end if;
  if (s = '多模台_待完') then
    return 'line_work_9';
  end if;
  if (s = '多模台_加工') then
    return 'line_work_10';
  end if;
  if (s = '故障') then
    return 'line_work_11';
  end if;

  return r;
 end;
/
