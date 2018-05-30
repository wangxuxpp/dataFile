drop function REGISTERFUNC
/


create or replace function registerFunc(nowdate binary_integer)
return binary_integer
as
external
library registerOracleDll  --链接库名
name "registerfunc"		   --函数名					
language c
parameters (nowdate int, return short);
/
----------------------------------------------------------------------------------------------------------------
drop function FUN_RETSEARCHTABLE
/


create or replace function FUN_RETSEARCHTABLE(strType varchar2 , strTableName varchar2) return varchar2 as
    Result varchar2(500);
    n integer;
begin
    Result :='';
    select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;
    if (n != 188) then begin
       return Result;
    end ; end if;
    --委案统计视图
    if (upper(strTableName)='WEIANTOTALVIEW') then begin
       --'信用卡','车贷','房贷','小额贷款'
       if (strType='车贷' ) then
          Result :='VIEW_TONGJIWEIAN_CAR';
       end if ;
       if (strType='信用卡' ) then
          Result :='VIEW_TONGJIWEIAN_CARD';
       end if ;
       if (strType='房贷' ) then
          Result :='';
       end if ;
       if (strType='小额贷款' ) then
          Result :='';
       end if ;
    end ; end if ;

    --委案明细视图
    if (upper(strTableName)='WEIANMINGXIVIEW') then begin
       --'信用卡','车贷','房贷','小额贷款'
       if (strType='车贷' ) then
          Result :='VIEW_WEIAN_CAR';
       end if ;
       if (strType='信用卡' ) then
          Result :='VIEW_WEIAN_CARD';
       end if ;
       if (strType='房贷' ) then
          Result :='';
       end if ;
       if (strType='小额贷款' ) then
          Result :='';
       end if ;
    end ; end if ;

    --催收记录视图
    if (upper(strTableName)='WEIANMINGXICUISHOUVIEW') then begin
       --'信用卡','车贷','房贷','小额贷款'
       if (strType='车贷' ) then
          Result :='VIEW_WEIANCUISHOUJILU_CAR';
       end if ;
       if (strType='信用卡' ) then
          Result :='VIEW_WEIANCUISHOUJILU_CARD';
       end if ;
       if (strType='房贷' ) then
          Result :='';
       end if ;
       if (strType='小额贷款' ) then
          Result :='';
       end if ;
    end ; end if ;

    --还款记录视图
    if (upper(strTableName)='WEIANMINGXIHUANKUANVIEW') then begin
       --'信用卡','车贷','房贷','小额贷款'
       if (strType='车贷' ) then
          Result :='VIEW_WEIANHUANKUAN_CAR';
       end if ;
       if (strType='信用卡' ) then
          Result :='VIEW_WEIANHUANKUAN_CARD';
       end if ;
       if (strType='房贷' ) then
          Result :='';
       end if ;
       if (strType='小额贷款' ) then
          Result :='';
       end if ;
    end ; end if ;

    return Result;
end;
/

----------------------------------------------------------------------------------------------------------------
drop function FUN_HUJITYPE
/
create or replace function FUN_HUJITYPE(weianid number) return varchar2 as
    Result varchar2(500);
    i integer :=0;
    n integer;
begin
    Result :='';
    select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;
    if (n != 188) then begin
       return Result;
    end ; end if;
    select count(1) into i from WEIAN_HUJIWENJIAN where I_WEIAN_ID = weianid;
    if i <=0 then 
      return '未申请';
      end if;
    select C_SHIFOUFANHUI into Result from WEIAN_HUJIWENJIAN where I_WEIAN_ID = weianid;
    if Result ='' then
      return '已申请未返回';
      end if;
    return Result;  
end;
/
----------------------------------------------------------------------------------------------------------------
drop function FUN_CUISHOURECOD
/
create or replace function FUN_CUISHOURECOD(weianid number) return varchar2 as
    Result varchar2(2000);
    cursor mycursor  is
           select * from VIEW_CUISHOUJILU
           where I_WEIAN_ID=weianid;
    arow VIEW_CUISHOUJILU%rowtype;
    n integer;
begin
    Result :='';
    select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;
    if (n != 188) then begin
       return Result;
    end ; end if;
    open mycursor;
    loop
       fetch mycursor into arow ;
       exit when mycursor%notfound;
       Result := Result
                 ||'【催收日期】'||arow.C_RIQI||' '||arow.C_SHIJIAN
                 ||'【催收内容】'||arow.C_NEIRONG
                 ||CHR(13);
   end loop;
   close mycursor;
    return Result;
end;
/

----------------------------------------------------------------------------------------------------------------
drop function FUN_RETINFOYUE
/
create or replace function FUN_RETINFOYUE(i_weianmingxi_id number) return number as
    Result number(18,4) := null;
    n integer;
begin 
    select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;
    if (n != 188) then begin
       return Result;
    end ; end if;
    select n_yue into Result from (
    select row_number() over(order by d_huankuanriqi desc,d_huankuanshijian desc,n_yue asc) id,
       a.n_yue
    from HUANKUANJILU a
    where i_weianmingxiid = i_weianmingxi_id) where id = 1;    
    return Result;
end;
/
----------------------------------------------------------------------------------------------------------------
drop function FUN_RETINFOSTATE
/
create or replace function FUN_RETINFOSTATE(i_weianmingxi_id number) return varchar2 as
    Result varchar2(100) := '无还款';
    n integer;
begin 
    select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;
    if (n != 188) then begin
       return Result;
    end ; end if;
    select C_HUANKUANQINGKUANG into Result from (
    select row_number() over(order by d_huankuanriqi desc, d_huankuanshijian desc,n_yue asc) id,
       a.C_HUANKUANQINGKUANG
    from HUANKUANJILU a
    where i_weianmingxiid = i_weianmingxi_id) where id = 1;
    return Result;
end;
/
----------------------------------------------------------------------------------------------------------------
drop function FUN_SETSTRGENERAL
/


create or replace function FUN_SETSTRGENERAL(aValue   varchar2,
                                             keyValue varchar2)
  return varchar2 as
  aResult varchar2(2000);
  v_text  varchar2(2000);
  v_Key   VARCHAR2(128);
begin
  v_text := rpad(aValue, (trunc(length(aValue) / 8) + 1) * 8, chr(0));
  v_Key  := rpad(keyValue, (trunc(length(keyValue) / 8) + 1) * 8, chr(0));
  sys.dbms_obfuscation_toolkit.desencrypt(input_string     => v_text,
                                          key_string       => v_Key,
                                          encrypted_string => aResult);
  return aResult;
end;
/

----------------------------------------------------------------------------------------------------------------
drop function FUN_GETSTRGENERAL
/

create or replace function FUN_GETSTRGENERAL(p_text varchar2,
                                                p_key  varchar2)
  return varchar2 is
  v_text varchar2(4000);
  v_Key  varchar2(128);
  n      integer;
begin
  select registerfunc(to_number(to_char(sysdate, 'yyyymmdd')))
    into n
    from dual;
  if (n != 188) then
    begin
      return p_text;
    end;
  end if;
  v_Key := rpad(p_key, (trunc(length(p_key) / 8) + 1) * 8, chr(0));
  sys.dbms_obfuscation_toolkit.desdecrypt(input_string     => p_text,
                                          key_string       => v_Key,
                                          decrypted_string => v_text);
  return rtrim(v_text, chr(0));
end;
/


----------------------------------------------------------------------------------------------------------------
drop function FUN_SETSTR
/


create or replace function FUN_SETSTR(aValue varchar2) return varchar2 as
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

----------------------------------------------------------------------------------------------------------------
drop function FUN_GETSTR
/


create or replace function FUN_GETSTR(p_text varchar2) return varchar2 is
  v_text varchar2(4000);
  v_Key  varchar2(128) := 'success1';
  n      integer;
begin
  select registerfunc(to_number(to_char(sysdate, 'yyyymmdd')))
    into n
    from dual;
  if (n != 188) then
    begin
      return p_text;
    end;
  end if;
  sys.dbms_obfuscation_toolkit.desdecrypt(input_string     => p_text,
                                          key_string       => v_Key,
                                          decrypted_string => v_text);
  return rtrim(v_text, chr(0));
end;
/

----------------------------------------------------------------------------------------------------------------
drop function FUN_GSINFO
/
create or replace function FUN_GSINFO return type_gs_table as
  vt type_gs_table;
begin
  select type_gs_object(id,
                        c_bianhao,
                        c_name,
                        c_pagedirectory,
                        to_char(D_ENDTDATE, 'yyyy-mm-dd'),
                        to_char(d_startdate, 'yyyy-mm-dd'),
                        C_URLADDR) BULK COLLECT
    INTO vt
    from GONGSIXINXI a 
    where a.i_del <>1
          and a.c_registercode is not null
          and to_date(fun_getstrgeneral(a.c_registercode , a.c_urladdr) ,'yyyy-mm-dd')>trunc(sysdate);
  return vt;
end;
/
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------