drop procedure PROCE_TENDATE
/


create or replace procedure PROCE_TENDATE as
  i integer;
begin
  if (REGISTERFUNCINFO() !=1) then
    return ;
  end if; 
  i := 0;
  while i<=5 loop
        PROCE_GENERATECALENDAR(to_char(sysdate + 365 * i , 'yyyy-mm-dd'));
        i := i+1;
  end loop;
end;
/
