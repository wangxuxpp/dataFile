drop function FUN_REVERSEPASSWORD
/


create function FUN_REVERSEPASSWORD (p_text varchar2) return varchar2 is
  v_text varchar2(4000);
  v_Key  varchar2(128) := 'success1';
begin
  if (REGISTERFUNCINFO() !=1) then
    return '0';
  end if; 
     
  sys.dbms_obfuscation_toolkit.desdecrypt(input_string     => p_text,
                                      key_string       => v_Key,
                                      decrypted_string => v_text);
                                         
  return rtrim(v_text, chr(0));
end;
/
