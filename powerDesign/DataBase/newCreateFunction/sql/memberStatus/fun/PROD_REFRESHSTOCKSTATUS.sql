drop procedure PROD_REFRESHSTOCKSTATUS
/


create or replace procedure PROD_REFRESHSTOCKSTATUS as

begin

 DBMS_MVIEW.REFRESH('mview_memberstatus_stockin','C');
 DBMS_MVIEW.REFRESH('mview_memberstatus_stocking','C');
 DBMS_MVIEW.REFRESH('mview_memberstatus_stock_out','C');

end;
/
