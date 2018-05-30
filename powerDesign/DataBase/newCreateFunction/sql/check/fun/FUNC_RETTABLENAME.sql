drop function FUNC_RETTABLENAME
/


create or replace function FUNC_RETTABLENAME(crowid varchar2) return varchar2 is
Result varchar2(500);
n integer;
begin
    Result :='';
    --验证是否过期
    if REGISTERFUNCINFO() != 1 then 
        return Result;
    end if; 
    
    select a.name into Result from sys.obj$ a where dbms_rowid.rowid_object(crowid) = a.obj#;
    return Result;
end FUNC_RETTABLENAME;
/
