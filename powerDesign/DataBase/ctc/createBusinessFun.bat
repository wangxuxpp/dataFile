@wrap iname=.\sql\createBusinessFunc.sql oname=.\out\businessFunc.plb 
@cls
@sqlplus ctc/ctc@sjjz @.\out\businessFunc.plb 
@pause
@exit

