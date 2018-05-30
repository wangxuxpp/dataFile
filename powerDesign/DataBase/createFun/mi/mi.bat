@wrap iname=.\abc.sql oname=.\abc.plb 
@cls
@sqlplus erp/erp@wdserver @.\abc.plb
@pause
@exit

