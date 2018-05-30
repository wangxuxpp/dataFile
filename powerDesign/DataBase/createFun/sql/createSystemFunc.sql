--1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
drop procedure REGISTERORACLEDLL
/
create or replace library registerOracleDll
as 'E:\app\adm\product\11.2.0\dbhome_1\BIN\oracleRegisterdll.dll';
/
--1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111


--22222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
drop function REGISTERFUNC
/
create or replace function registerFunc(nowdate binary_integer)
return binary_integer
as
external
library registerOracleDll  --链接库名
name "registerfunc"		   --函数名					
language c
parameters (nowdate int, return short);
/
--22222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222

--33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
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
--33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
