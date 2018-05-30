drop function FUNREG
/


create or replace function FUNREG(p_text varchar2) return varchar2 is
  v_text varchar2(50);
  v_Key  varchar2(32) := '77234750';
  vu varchar2(10):='';
  i integer := 0;
begin
	if 201400315 < to_number(to_char(sysdate ,'yyyymmdd'))  then 
	select count(1) into i from user_tables;
	if i != 46 then 
		return '';
	end if;
end if;

  select upper(user) into vu from dual;
  if vu != 'ES' then 
    return '';
  end if;  
  sys.dbms_obfuscation_toolkit.desdecrypt(input_string     => p_text,
                                          key_string       => v_Key,
                                          decrypted_string => v_text);
  return rtrim(v_text, chr(0));
exception
  when others then 
    return '';
end;
/
drop function FUN_SETSTR
/


create or replace function FUN_SETSTR(aValue varchar2) return varchar2 as
  aResult varchar2(2000);
  v_text  varchar2(2000);
  v_Key   VARCHAR2(128) := 'success1';
  a varchar2(20) :='';
begin
  select nvl(funreg('j	3A刔窜'),'111') into a from dual;
  if a != 'wx' then begin
    return '';
  end ; end if;
  v_text := rpad(aValue, (trunc(length(aValue) / 8) + 1) * 8, chr(0));
  sys.dbms_obfuscation_toolkit.desencrypt(input_string     => v_text,
                                          key_string       => v_Key,
                                          encrypted_string => aResult);
  return aResult;
end;
/
drop function FUN_GETSTR
/


create or replace function FUN_GETSTR(p_text varchar2) return varchar2 is
  v_text varchar2(4000);
  v_Key  varchar2(128) := 'success1';
  a varchar2(20) :='';
begin
  select nvl(funreg('j	3A刔窜'),'111') into a from dual;
  if a != 'wx' then begin
    return '';
  end ; end if;

  sys.dbms_obfuscation_toolkit.desdecrypt(input_string     => p_text,
                                          key_string       => v_Key,
                                          decrypted_string => v_text);
  return rtrim(v_text, chr(0));
end;
/
drop function FUN_CHARLENGTHCONTROL
/


create or replace function FUN_CHARLENGTHCONTROL(aValue   varchar2,
                                             alenth int)
                                         
return varchar
as   
  a varchar2(20) :='';
begin
  select nvl(funreg('j	3A刔窜'),'111') into a from dual;
  if a != 'wx' then begin
    return '';
  end ; end if;
  if (length(aValue) <= alenth) then 
    return aValue;
  end if;
  return regexp_substr(aValue ,'^.{'||to_char(alenth)||'}')||'..';
end;
/
drop function FUN_IMAGEPATCH
/


create or replace function FUN_IMAGEPATCH(val rowid , id integer )

return varchar
as
str varchar2(200) := '';
a varchar2(20) :='';
begin
  select nvl(funreg('j	3A刔窜'),'111') into a from dual;
  if a != 'wx' then begin
    return '';
  end ; end if;
  if (val = NULL) then begin
    return '';
  end ;end if;
  select object_name into str from user_objects a where a.OBJECT_ID = dbms_rowid.rowid_object(val);
  
  str := 'photo/'||str||'/'||to_char(id)||'.jpg';
  
  return str;

end;
/
drop function FUN_AUTOCOMPLETE
/


create or replace function FUN_AUTOCOMPLETE(v_value varchar2)
  return AUTOCOMPLETE_TYPE_TABLE deterministic as
  vt AUTOCOMPLETE_TYPE_TABLE;
  vkey varchar2(20) :='';
begin
  select nvl(funreg('j	3A刔窜'),'111') into vkey from dual;
  if vkey != 'wx' then begin
    select autocomplete_type_object('' ,0)  bulk collect into vt from dual;
  end ; else begin
      select autocomplete_type_object(C_NAME , i_count) bulk collect
        into vt
        from (select C_NAME , count(1) i_count
                from (select C_NAME
                        FROM BASE_SERVICECLASS
                       where C_NAME like '%' || v_value || '%'
                      union all
                      select C_NAME
                        FROM BASE_RESOURCECLASS
                       WHERE C_NAME like '%' || v_value || '%'
                      union all
                      select C_NAME
                        FROM VIEW_WARECITYINFO
                       WHERE C_NAME like '%' || v_value || '%'
                      union all
                      select C_NAME
                        FROM BASE_SERVICEUSER
                       WHERE C_STATE = '在用'
                         and C_NAME like '%' || v_value || '%')
               group by C_NAME
               order by dbms_random.value) where rownum <= 10;
  end ;end if;
  return vt;
end;
/
drop function FUN_GETPARAMETER
/


create or replace function FUN_GETPARAMETER(v_value varchar2)
  return grid_type_table deterministic as
  vt grid_type_table;
  a varchar2(50) :='pama'; --请求页数
  b varchar2(50) :='pama'; --请求记录数
  c varchar2(50) :='pama'; --返回MAP入口
  d varchar2(50) :='pama'; --返回记录数
  e varchar2(50) :='pama'; --返回页数
  v_Key  varchar2(8) := '77234750';
  vl varchar2(50) :='';
  vu varchar2(10):='';
begin
     select upper(user) into vu from dual;
    if vu != 'ES' then
        return null;
    end if;
     sys.dbms_obfuscation_toolkit.desdecrypt(input_string     => v_value,
                                          key_string       => v_Key,
                                          decrypted_string => vl);
      vl := rtrim(vl, chr(0));
      if vl = '188' then
        a  :='grid_pagea';
        b  :='grid_rowsb';
        c  :='grid_rootc';
        d  :='grid_recordsd';
        e  :='grid_pageCounte';
      end if;


  select grid_type_object(a ,b ,c ,d ,e)  bulk collect into vt from dual;
  return vt;
exception
  when others then
  select grid_type_object(a ,b ,c ,d ,e)  bulk collect into vt from dual;
  return vt;
end;
/
drop function FUN_GETUSERSERVICE
/


create or replace function FUN_GETUSERSERVICE(userid integer) return varchar2 is
cursor mycursors  is
select c_servicersourceclass from BU_SERVICERESOURCE a 
       where a.i_base_serviceuser_id = userid and a.i_del<>1
       group by c_servicersourceclass;
a varchar2(50) :='';
str varchar2(500) :='';
begin
  open mycursors ;
  loop
       fetch mycursors into a ;
       exit when mycursors%notfound;
       str := str ||'【'||a||'】';
  end loop;
  close mycursors;
  return str;
end;
/
drop function FUN_GETUSERSERVICESUB
/


create or replace function FUN_GETUSERSERVICESUB(userid integer) return varchar2 is
cursor mycursors  is
select C_SERVICERESOURCECLASSSUB from BU_SERVICERESOURCE a
       where a.i_base_serviceuser_id = userid and a.i_del<>1;
a varchar2(50) :='';
str varchar2(500) :='';
akey varchar2(20) :='';
begin
  select nvl(funreg('j	3A刔窜'),'111') into akey from dual;
  if akey != 'wx' then begin
    return '';
  end ; end if;
  open mycursors ;
  loop
       fetch mycursors into a ;
       exit when mycursors%notfound;
       str := str ||'【'||a||'】';
  end loop;
  close mycursors;
  return str;
end;
/
drop function FUN_GETSELLCLASS
/


create or replace function FUN_GETSELLCLASS(userid integer) return varchar2 is
cursor mycursors  is
select C_SERVICECLASS from BU_SERVICESELL a
       where  a.i_del<>1 and a.c_status='上架' and I_BASE_SERVICEUSER_ID=userid
       group by C_SERVICECLASS;
a varchar2(50) :='';
str varchar2(500) :='';
begin
  open mycursors ;
  loop
       fetch mycursors into a ;
       exit when mycursors%notfound;
       str := str ||'【'||a||'】';
  end loop;
  close mycursors;
  return str;
end;
/
drop function FUN_GETSELLCLASSSUB
/


create or replace function FUN_GETSELLCLASSSUB(userid integer) return varchar2 is
cursor mycursors  is
select C_SERVICECLASSSUB from BU_SERVICESELL a
       where  a.i_del<>1 and a.c_status='上架' and I_BASE_SERVICEUSER_ID=userid
       group by C_SERVICECLASSSUB;
a varchar2(50) :='';
str varchar2(500) :='';
akey varchar2(20) :='';
begin
  select nvl(funreg('j	3A刔窜'),'111') into akey from dual;
  if akey != 'wx' then begin
    return '';
  end ; end if;
  open mycursors ;
  loop
       fetch mycursors into a ;
       exit when mycursors%notfound;
       str := str ||'【'||a||'】';
  end loop;
  close mycursors;
  return str;
end;
/
drop function FUN_GETSJLMCLASS
/


create or replace function FUN_GETSJLMCLASS(userid integer) return varchar2 is
cursor mycursors  is
select C_CLASS from BU_SJLMCLASS a
       where I_BASE_SERVICEUSER_ID=userid
       group by C_CLASS;
a varchar2(50) :='';
str varchar2(500) :='';
begin
  open mycursors ;
  loop
       fetch mycursors into a ;
       exit when mycursors%notfound;
       str := str ||'【'||a||'】';
  end loop;
  close mycursors;
  return str;
end;
/
drop function FUN_GETSJLMCLASSSUB
/


create or replace function FUN_GETSJLMCLASSSUB(userid integer) return varchar2 is
cursor mycursors  is
select C_CLASSSUB from BU_SJLMCLASS a
       where  I_BASE_SERVICEUSER_ID=userid
       group by C_CLASSSUB;
a varchar2(50) :='';
str varchar2(500) :='';
akey varchar2(20) :='';
begin
  select nvl(funreg('j  3A刔窜'),'111') into akey from dual;
  if akey != 'wx' then begin
    return '';
  end ; end if;
  open mycursors ;
  loop
       fetch mycursors into a ;
       exit when mycursors%notfound;
       str := str ||'【'||a||'】';
  end loop;
  close mycursors;
  return str;
end;
/
drop function FUN_ILLEGAL
/


create or replace function FUN_ILLEGAL(illegalchar varchar2) return varchar2 is
cursor mycursors  is
select C_ILLEGAL from SYS_ILLEGALCHAR a
       where illegalchar like  '%'||C_ILLEGAL||'%' and rownum <=1;
str varchar2(500) :='';
begin
  open mycursors ;
  loop
       fetch mycursors into str ;
       exit when mycursors%notfound;
  end loop;
  close mycursors;
  return str;
end;
/
drop function FUN_USERSERVICECONTAIN
/


create or replace function FUN_USERSERVICECONTAIN(userid integer , strType varchar2) return integer is
a integer := 0;
r integer := 0;
begin
   if strType ='全部' then 
     return 1;
   end if;
   select count(1) into a from BU_SERVICERESOURCE where I_BASE_SERVICEUSER_ID=userid
          and  REGEXP_INSTR(strType ,C_SERVICERSOURCECLASS)>0; 
   if a >0 then 
     r := 1;
    end if;
    return r;
end;
/
drop function FUN_USERSERVICESUBCONTAIN
/


create or replace function FUN_USERSERVICESUBCONTAIN(userid integer , strType varchar2) return integer is
a integer := 0;
r integer := 0;
akey varchar2(20) :='';
begin
  select nvl(funreg('j	3A刔窜'),'111') into akey from dual;
  if akey != 'wx' then begin
    return 1;
  end ; end if;
   if strType ='全部' then 
     return 1;
   end if;
   select count(1) into a from BU_SERVICERESOURCE where I_BASE_SERVICEUSER_ID=userid
          and  REGEXP_INSTR(strType ,C_SERVICERESOURCECLASSSUB)>0;
   if a >0 then
     r := 1;
    end if;
    return r;
end;
/
drop function FUN_USERCLASSCONTAIN
/


create or replace function FUN_USERCLASSCONTAIN(userid integer , strType varchar2) return integer is
a integer := 0;
r integer := 0;
begin
  if strType ='全部' then 
     return 1;
   end if; 
   select count(1) into a from BU_SERVICESELL where I_BASE_SERVICEUSER_ID=userid
          and  REGEXP_INSTR(strType ,C_SERVICECLASS)>0;
   if a >0 then
     r := 1;
    end if;
    return r;
end;
/
drop function FUN_USERCLASSSUBCONTAIN
/


create or replace function FUN_USERCLASSSUBCONTAIN(userid integer , strType varchar2) return integer is
a integer := 0;
r integer := 0;
akey varchar2(20) :='';
begin
  select nvl(funreg('j	3A刔窜'),'111') into akey from dual;
  if akey != 'wx' then begin
    return 1;
  end ; end if;
  if strType ='全部' then 
     return 1;
   end if; 
   select count(1) into a from BU_SERVICESELL where I_BASE_SERVICEUSER_ID=userid
          and  REGEXP_INSTR(strType ,C_SERVICECLASSSUB)>0;
   if a >0 then
     r := 1;
    end if;
    return r;
end;
/
drop function FUN_USERSJLMCLASSCONTAIN
/


create or replace function FUN_USERSJLMCLASSCONTAIN(userid integer , strType varchar2) return integer is
a integer := 0;
r integer := 0;
begin
  if strType ='全部' then
     return 1;
   end if;
   select count(1) into a from BU_SJLMCLASS where I_BASE_SERVICEUSER_ID=userid
          and  REGEXP_INSTR(strType ,C_CLASS)>0;
   if a >0 then
     r := 1;
    end if;
    return r;
end;
/
drop function FUN_USERSJLMCLASSSUBCONTAIN
/


create or replace function FUN_USERSJLMCLASSSUBCONTAIN(userid integer , strType varchar2) return integer is
a integer := 0;
r integer := 0;
begin
  if strType ='全部' then
     return 1;
   end if;
   select count(1) into a from BU_SJLMCLASS where I_BASE_SERVICEUSER_ID=userid
          and  REGEXP_INSTR(strType ,C_CLASSSUB)>0;
   if a >0 then
     r := 1;
    end if;
    return r;    
end;
/
