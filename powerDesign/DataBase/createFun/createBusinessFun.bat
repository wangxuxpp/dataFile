@wrap iname=.\sql\createBusinessFunc.sql oname=.\out\businessFunc.plb 
@cls
@sqlplus erp/erp@wdserver @.\sbusinessFun.sql
@pause
@exit

