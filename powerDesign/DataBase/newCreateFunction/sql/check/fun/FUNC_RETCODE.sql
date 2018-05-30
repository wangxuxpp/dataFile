drop function FUNC_RETCODE
/


create or replace function FUNC_RETCODE(strtablename varchar2 , strtableid integer) return varchar2 is
Result varchar2(500);
rc integer;
str varchar2(500);
type cur_type is ref cursor;
mycursors cur_type ;
n integer;
begin
  Result :='';
  rc := 0;
  select nvl(count(1),0) into rc from user_col_comments
         where table_name = ''||upper(strtablename)||''
         and column_name='C_CODE' ;     
  if rc >0 then begin
     str:='select C_CODE from '
                  ||strtablename
                  ||' where id ='||to_char(nvl(strtableid,0));
  open mycursors for str;
    loop
      fetch mycursors into Result ;
      exit when mycursors%notfound;
    end loop;
  close mycursors;  
  end; end if ;
  
  return Result;
end FUNC_RETCODE;
/
