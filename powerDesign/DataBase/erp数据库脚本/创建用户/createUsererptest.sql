drop user erptest cascade;
create user erptest identified by erptest ACCOUNT unlock
default tablespace users
temporary tablespace temp;

grant resource to erptest;
grant connect to erptest;
grant create any table to erptest;
grant select on OBJ$ to erptest;
grant create any view to erptest;
grant create any library to erptest;
grant create any materialized view to erptest;