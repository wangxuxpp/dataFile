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
