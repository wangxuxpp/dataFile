
----------------------------------------------------------------------------------------------------------------------
drop function FUNC_PRICELENGTH
/


create or replace function FUNC_PRICELENGTH(nv NUMBER) return NUMBER deterministic as

Result number;
n integer;
vl number;
begin
  n := 0;
  Result := 3;
  if (nv is null) or (nv ='') then
    vl := 0;
  else 
    vl := nv;
  end if;

  select count(1) into n from NF_NUMBERLENGTH where c_name='单价位数';
  if n = 1 then begin
     select n_number into Result from NF_NUMBERLENGTH where c_name='单价位数';

  end ;end if;
  return round(vl , Result);
end;
/

----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
drop function FUNC_MONEYLENGTH
/


create or replace function FUNC_MONEYLENGTH(nv number) return number deterministic as
Result number;
n integer;
vl number;
begin
  n := 0;
  Result := 2;
  if (nv is null) or (nv ='') then
    vl := 0;
  else
    vl := nv;
  end if;

  select count(1) into n from NF_NUMBERLENGTH where c_name='金额位数';
  if n = 1 then begin
     select n_number into Result from NF_NUMBERLENGTH where c_name='金额位数';

  end ;end if;
  return round(vl , Result);
end;
/

----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
drop function FUNC_LPRICELENGTH
/


create or replace function FUNC_LPRICELENGTH(nv NUMBER) return varchar2 deterministic as
Result number :=0;
n integer := 0 ;
i integer := 3;
r varchar(50) := '999,999,999,999,999';
vl number;
begin
   if (nv is null) or (nv ='') then
    vl := 0;
  else
    vl := nv;
  end if;  

  select count(1) into n from NF_NUMBERLENGTH where c_name='单价位数';
  if n = 1 then begin
     select n_number into i from NF_NUMBERLENGTH where c_name='单价位数';
  end ;end if;
  Result := round(vl , i);
  n := 0;
  
  while n<i loop begin
    if n = 0 then begin
        r := r||'.0';
    end ; else begin
        r := r||'0';
    end ; end if;
    n := n+1;    
  end; end loop;
  return trim(to_char(Result , r));
end;
/

----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
drop function FUNC_LMONEYLENGTH
/


create or replace function FUNC_LMONEYLENGTH(nv number) return varchar2 deterministic as
Result number :=0;
n integer := 0 ;
i integer := 2;
r varchar(50) := '999,999,999,999,999';
vl number;
begin

  if (nv is null) or (nv ='') then
    vl := 0;
  else
    vl := nv;
  end if;
    
  select count(1) into n from NF_NUMBERLENGTH where c_name='金额位数';
  if n = 1 then begin
     select n_number into i from NF_NUMBERLENGTH where c_name='金额位数';
  end ;end if;
  Result:= round(vl , i);
  
  n:=0;
  while n<i loop begin
    if n =0 then 
        r := r||'.0';
    else 
        r := r||'0';
    end if ;
    
    n := n+1;
  end ; end loop;
  return trim(to_char(Result , r));
end;
/

----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
drop function FUNC_PPRICELENGTH
/


create or replace function FUNC_PPRICELENGTH(nv NUMBER) return varchar2 deterministic as
Result number :=0;
n integer := 0 ;
i integer := 3;
r varchar(50) := '999999999999999';
vl number;
begin

  if (nv is null) or (nv ='') then
    vl := 0;
  else
    vl := nv;
  end if;  

  select count(1) into n from NF_NUMBERLENGTH where c_name='单价位数';
  if n = 1 then begin
     select n_number into i from NF_NUMBERLENGTH where c_name='单价位数';
  end ;end if;
  Result := round(vl , i);
  n := 0;
  
  while n<i loop begin
    if n = 0 then begin
        r := r||'.0';
    end ; else begin
        r := r||'0';
    end ; end if;
    n := n+1;    
  end; end loop;
  
  return trim(replace(to_char(Result,r) ,'.' ,''));
end;
/

----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
drop function FUNC_PMONEYLENGTH
/


create or replace function FUNC_PMONEYLENGTH(nv number) return varchar2 deterministic as
Result number :=0;
n integer := 0 ;
i integer := 2;
r varchar(50) := '999999999999999';
vl number;
begin
  if (nv is null) or (nv ='') then
    vl := 0;
  else
    vl := nv;
  end if;

  select count(1) into n from NF_NUMBERLENGTH where c_name='金额位数';
  if n = 1 then begin
     select n_number into i from NF_NUMBERLENGTH where c_name='金额位数';

  end ;end if;
  Result:= round(vl , i);
  
  n:=0;
  while n<i loop begin
    if n =0 then 
        r := r||'.0';
    else 
        r := r||'0';
    end if ;
    
    n := n+1;
  end ; end loop;
  return trim(replace(to_char(Result,r) ,'.' ,''));
end;
/

----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
drop function FUNC_NOTCONTAINRATE
/


create or replace function FUNC_NOTCONTAINRATE(nv number , rt integer) return number deterministic as
n number := 0 ;
f number := 0;
i integer := 0;
vl number;
begin
  if (nv is null) or (nv ='') then
    vl := 0;
  else
    vl := nv;
  end if;
  
    
  select count(1) into i from nf_rate where id=rt;
  if i = 1 then begin
     select i_type , f_rate into n, f from nf_rate where id=rt;
     
     if n = 1 then begin
        --增值税发票 不含税金额 = 函数金额 / （1+税率）
        return vl / (1+ f);
     end; else begin
        --普通发票 不含税金额 = 函数金额 * （1-税率）
        return vl * (1-f);
     end; end if;

  end ;end if;
  
  return nv;
  
end;
/

----------------------------------------------------------------------------------------------------------------------