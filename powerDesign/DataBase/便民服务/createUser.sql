drop user esa cascade;
create user esa identified by esa ACCOUNT unlock
default tablespace users
temporary tablespace temp;

grant resource to esa ;
grant connect to esa ;
grant create any table to esa ;
grant create any view to esa ;
grant create any library to esa ;
grant create any materialized view to esa ;