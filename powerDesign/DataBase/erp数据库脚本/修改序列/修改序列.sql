
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


  str:='select sequence_name from user_sequences';

  dbms_output.put_line(str );
  open mycursors for str;
  loop
       a :='';
       b :='';
       fetch mycursors into a ;
       exit when mycursors%notfound;
       b :=  substr(a ,5,100);
       
       if (a='SEQ_BUY_BACKWARENOTIFICA') OR (a='SEQ_BUY_COMEWARENOTIFICA') then 
          b := b||'TION';
       end if;
       
       if (a='SEQ_BUY_COMEWARENOTIFICASUB') then 
          b := 'BUY_COMEWARENOTIFICATIONSUB';
       end if;
       
       if (a='SEQ_BUY_BACKWARENOTIFICASUB') then 
          b := 'BUY_BACKWARENOTIFICATIONSUB';
       end if;
       dbms_output.put_line(a);
       dbms_output.put_line(b);
       se := 'select '|| a||'.NEXTVAL from dual';
       te := 'select nvl(max(id),0) from '||b;
       --dbms_output.put_line(se);
       --dbms_output.put_line(te);
       ti := 0;
       open id for te;
       fetch id into ti ;
       DBMS_OUTPUT.put_line(ti);
       if (ti>0) then 
          loop
              open seq for se;
              fetch seq into si;
              DBMS_OUTPUT.put_line(si);
              exit when si>ti;
              close seq;
          end loop;   
       end if;
       close id;
       
       
  end loop;
  close mycursors;
end;