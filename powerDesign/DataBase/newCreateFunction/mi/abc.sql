create or replace function REGISTERFUNCINFO return integer as
begin
    if (to_number( to_char(sysdate ,'yyyymmdd')) > 20150630) then begin
        return 0;
    end ;else
        return 1;
    end if;
exception
  when others then
  return 0;
end;