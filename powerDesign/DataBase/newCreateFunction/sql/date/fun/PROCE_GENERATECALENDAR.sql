drop procedure PROCE_GENERATECALENDAR
/


create or replace procedure PROCE_GENERATECALENDAR(d varchar) as
-- Created on 2011/7/22 by ADM
  i integer;
  begindate date;
  nowdate date;
  enddate date;
begin
  if (REGISTERFUNCINFO() !=1) then
    return ;
  end if; 
  i := 0;

  select count(1) into i from SYS_CALENDAR where trunc(d_day , 'yyyy') = trunc(to_date(d , 'yyyy-mm-dd') , 'yyyy');
  if (i >0) then
     return ;
  end if;

  i := 0;
  begindate :=to_date(regexp_substr(d,'^\w{4}')||'-01-01' ,'yyyy-mm-dd');
  enddate := to_date( regexp_substr(d,'^\w{4}')||'-12-31' ,'yyyy-mm-dd');
  nowdate := begindate;
  --dbms_output.put_line(to_char(begindate ,'yyyy-mm-dd'));
  --dbms_output.put_line(to_char(enddate ,'yyyy-mm-dd'));
  select count(1) into i from SYS_CALENDAR where D_DAY between begindate and enddate;
  --dbms_output.put_line(i);
  if i<=0 then
    loop
       exit when nowdate >  enddate;
       insert into SYS_CALENDAR (D_DAY ,C_WEEK) values(nowdate ,to_char(nowdate ,'day'));
       --dbms_output.put_line(to_char(nowdate ,'yyyy-mm-dd'));
       nowdate := nowdate+1;
    end loop;
  end if;
/*  select add_months(last_day(to_date('2011-07-01', 'yyyy-mm-dd')),-1)+1,
       last_day(to_date('2011-07-01', 'yyyy-mm-dd')),
       to_char(to_date('2011-07-01', 'yyyy-mm-dd') ,'day')
  from dual ;*/

end;
/
