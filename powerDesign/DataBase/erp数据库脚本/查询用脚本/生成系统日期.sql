-- Created on 2011/7/22 by ADM 
declare 
  i integer; 
  d varchar(200);
  begindate date;
  nowdate date;
  enddate date;
begin
  d := '2011-07-01';
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