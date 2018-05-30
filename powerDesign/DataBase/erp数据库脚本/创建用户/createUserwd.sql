drop user erpwd cascade;
create user erpwd identified by erpwd ACCOUNT unlock
default tablespace users
temporary tablespace temp;

grant resource to erpwd ;
grant connect to erpwd ;
grant create any table to erpwd ;
grant select on OBJ$ to erpwd ;
grant create any view to erpwd ;
grant create any library to erpwd ;
grant create any materialized view to erpwd ;