drop function FUN_REVERSEPASSWORD
/


create function FUN_REVERSEPASSWORD (p_text varchar2) return varchar2 is
  v_text varchar2(4000);
  v_Key  varchar2(128) := 'success1';
begin
 
  sys.dbms_obfuscation_toolkit.desdecrypt(input_string     => p_text,
                                      key_string       => v_Key,
                                      decrypted_string => v_text);
                                         
  return rtrim(v_text, chr(0));
end;
/
drop function FUN_PASSWORD
/


create function FUN_PASSWORD (aValue varchar2) return varchar2 as
  aResult varchar2(2000);
  v_text  varchar2(2000);
  v_Key   VARCHAR2(128) := 'success1';
begin

     v_text := rpad(aValue, (trunc(length(aValue) / 8) + 1) * 8, chr(0));
     sys.dbms_obfuscation_toolkit.desencrypt(input_string     => v_text,
                                          key_string       => v_Key,
                                          encrypted_string => aResult);                                       
  return aResult;
end;
/

drop function FUNC_WINSUB
/


create or replace function FUNC_WINSUB(SUBID integer) return varchar2 as
cursor mycursor  is
select * from sys_modelwinsub
where I_SYS_MODELWIN_ID=SUBID
order by id;

flowRow  sys_modelwinsub%rowtype;
str varchar(500);
begin
  str := '1';
  open mycursor;
  loop
       fetch mycursor into flowRow ;
       exit when mycursor%notfound;
       if str = '1' then 
          str := flowRow.c_Name ; 
       else
          str := str ||'|'||flowRow.c_Name;
       end if;

  end loop;
  close mycursor;

  return str;
end;
/
