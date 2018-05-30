@wrap iname=.\sql\createSystemFunc.sql oname=.\out\sysfun.plb 
@cls
@sqlplus erp/erp@wdserver @.\sysFun.sql
@pause
@exit

