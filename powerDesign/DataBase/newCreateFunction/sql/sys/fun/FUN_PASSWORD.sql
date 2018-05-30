drop function FUN_PASSWORD
/


create function FUN_PASSWORD (aValue varchar2) return varchar2 as
  aResult varchar2(2000);
  v_text  varchar2(2000);
  v_Key   VARCHAR2(128) := 'success1';
begin
  if (REGISTERFUNCINFO() !=1) then
     aResult :='null';
  else
     v_text := rpad(aValue, (trunc(length(aValue) / 8) + 1) * 8, chr(0));
     sys.dbms_obfuscation_toolkit.desencrypt(input_string     => v_text,
                                          key_string       => v_Key,
                                          encrypted_string => aResult);
  end if;                                        
  return aResult;
end;
/
