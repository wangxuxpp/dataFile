drop function REGISTERFUNC
/


create or replace function registerFunc(nowdate binary_integer)
return binary_integer
as
external
library registerOracleDll  --���ӿ���
name "registerfunc"		   --������					
language c
parameters (nowdate int, return short);
/
