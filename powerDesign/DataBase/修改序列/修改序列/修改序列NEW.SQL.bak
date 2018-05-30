
declare 
type cur_type is ref cursor;

mycursors cur_type ;
id cur_type;
seq cur_type;

str varchar(500);
a varchar(500);
b varchar(500);

se varchar(500);
te varchar(500);

si integer;
ti integer;
begin


  str:='select a.SEQUENCE_NAME from user_sequences a inner join user_tables b on upper(a.SEQUENCE_NAME) = upper(trim(''SEQ_'' || b.TABLE_NAME))';

  open mycursors for str;
  loop
       a :='';
       b :='';
       fetch mycursors into a ;
       exit when mycursors%notfound;
       b :=  substr(a ,5,100);

       --dbms_output.put_line(a);
       dbms_output.put_line(b);
       se := 'select '|| a||'.NEXTVAL from dual';
       te := 'select nvl(max(id),0) from '||b;
       --dbms_output.put_line(se);
       --dbms_output.put_line(te);
       ti := 0;
       open id for te;
       fetch id into ti ;
       --DBMS_OUTPUT.put_line(ti);
       if (ti>0) then 
          loop
              open seq for se;
              fetch seq into si;
              --DBMS_OUTPUT.put_line(si);
              exit when si>ti;
              close seq;
          end loop;   
       end if;
       close id;
       
       
  end loop;
  close mycursors;
end;