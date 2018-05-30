drop user fr cascade;
create user fr identified by fr ACCOUNT unlock
default tablespace users
temporary tablespace temp;

grant resource to fr ;
grant connect to fr ;
grant create any table to fr; 
grant create any view to fr ;

