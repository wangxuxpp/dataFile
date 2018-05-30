drop function FUN_RETURNROWID
/


create or replace function FUN_RETURNROWID(strtablename varchar2 , strtableid integer) return urowid deterministic as
    Result varchar2(500);
    str varchar2(500);
    type cur_type is ref cursor;
    mycursors cur_type ;
    n integer;
begin
    Result :='';
    if REGISTERFUNCINFO() != 1 then 
        return Result;
    end if; 
    str:='select rowidtochar(rowid) from '
                  ||strtablename
                  ||' where id ='||to_char(nvl(strtableid,0));
    open mycursors for str;
    fetch mycursors into Result ;
    close mycursors;
    return chartorowid(Result);
end;
/
