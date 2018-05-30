drop user erpkb cascade;
create user erpkb identified by erpkb ACCOUNT unlock
default tablespace users
temporary tablespace temp;

grant resource to erpkb;
grant connect to erpkb;
grant create any table to erpkb;
grant select on OBJ$ to erpkb;
grant create any view to erpkb;
grant create any library to erpkb;
grant create any materialized view to erpkb;