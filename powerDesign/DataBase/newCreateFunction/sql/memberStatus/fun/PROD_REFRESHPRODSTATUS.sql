drop procedure PROD_REFRESHPRODSTATUS
/


create or replace procedure PROD_REFRESHPRODSTATUS as

begin
     DBMS_MVIEW.REFRESH('mview_memberstatus_prodmake','C');
end;
/
