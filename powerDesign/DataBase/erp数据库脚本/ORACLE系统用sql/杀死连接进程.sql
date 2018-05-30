declare 
type cur_type is ref cursor;

mycursors cur_type ;

str varchar(500);
a varchar(500);
b varchar(500);
begin


  str:='SELECT s.Sid '|| '||'',''||' ||'s.Serial# AAA'
       ||' FROM  V$session s';

  dbms_output.put_line(str );
  open mycursors for str;
  loop
       a :='';
       fetch mycursors into a ;
       exit when mycursors%notfound;

          b := 'alter system kill session '|| '''' || a || '''';
          dbms_output.put_line(a );
          execute immediate b;


  end loop;
  
end;
