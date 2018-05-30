drop function FUN_SETSTRGENERAL
/


create function FUN_SETSTRGENERAL (aValue   varchar2,
                                             keyValue varchar2)
  return varchar2 as
  aResult varchar2(2000);
  v_text  varchar2(2000);
  v_Key   VARCHAR2(128);
begin
  if REGISTERFUNCINFO() != 1 then 
    return aValue;
  end if;  
  v_text := rpad(aValue, (trunc(length(aValue) / 8) + 1) * 8, chr(0));
  v_Key  := rpad(keyValue, (trunc(length(keyValue) / 8) + 1) * 8, chr(0));
  sys.dbms_obfuscation_toolkit.desencrypt(input_string     => v_text,
                                          key_string       => v_Key,
                                          encrypted_string => aResult);
  return aResult;
end;
/
