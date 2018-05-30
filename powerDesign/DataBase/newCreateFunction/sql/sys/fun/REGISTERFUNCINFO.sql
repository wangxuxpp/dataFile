drop function REGISTERFUNCINFO
/


create or replace function REGISTERFUNCINFO return integer as
n integer :=0;
begin
    select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;

    if (n != 188) then begin
        return 0;
    end ;else
        return 1;
    end if;
exception
  when others then
  return 0;
end;
/
