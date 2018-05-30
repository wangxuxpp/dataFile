drop user erp cascade;
create user erp identified by erp ACCOUNT unlock
default tablespace users
temporary tablespace temp;

grant resource to erp;
grant connect to erp;
grant create any table to erp;
grant select on OBJ$ to ERP;
grant create any view to erp;
grant create any library to erp;
grant create any materialized view to erp;