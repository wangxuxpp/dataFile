drop function FUN_GETSTRGENERAL
/


create function FUN_GETSTRGENERAL  (p_text varchar2,
                                                p_key  varchar2)
  return varchar2 is
  v_text varchar2(4000);
  v_Key  varchar2(128);
  n      integer;
begin
  n := REGISTERFUNCINFO();
  if n != 1 then 
    return p_text;
  end if;
  v_Key := rpad(p_key, (trunc(length(p_key) / 8) + 1) * 8, chr(0));
  sys.dbms_obfuscation_toolkit.desdecrypt(input_string     => p_text,
                                          key_string       => v_Key,
                                          decrypted_string => v_text);
  return rtrim(v_text, chr(0));
end;
/
