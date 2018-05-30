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
drop function FUNC_RETTABLENAME
/


create or replace function FUNC_RETTABLENAME(crowid varchar2) return varchar2 is
Result varchar2(500);
n integer;
begin
    Result :='';
    --验证是否过期
    select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;
    if (n != 188) then begin
  
       return Result;
    end ; end if;
    
    
    select a.name into Result from sys.obj$ a where dbms_rowid.rowid_object(crowid) = a.obj#;
    return Result;
end FUNC_RETTABLENAME;
/
drop function FUNC_RETPREFLOW
/


create or replace function FUNC_RETPREFLOW(flowId integer) return number is
  Result number;

type cur_type is ref cursor;

cursor mycursor  is
select * from check_flow
where id=flowId;

mycursors cur_type ;

flowRow  check_flow%rowtype;
preFlow check_flow.i_flow%type;
nowFlow Check_Flow.i_Flow%type;
str varchar(500);

n integer;
begin
    --验证是否过期
    select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;
    if (n != 188) then begin
       return -1;
    end ; end if;
    

  Result := -1;
  preFlow := -1;
  nowFlow := -1;
  open mycursor;

  FETCH   mycursor   INTO   flowRow;
  close mycursor;

  str:='select i_flow  from check_flow a '
              ||' where a.c_type ='''
              || flowrow.c_type
              ||''' group by a.i_flow'
              ||' order by a.i_flow';


  open mycursors for str;
  loop
       fetch mycursors into nowFlow ;
       exit when mycursors%notfound;

       if nowFlow = flowRow.i_Flow then
          exit;
       else
           preFlow :=nowFlow;
       end if;

  end loop;

  result := preFlow;
  return Result;
end FUNC_RETPREFLOW;
/
drop function FUNC_RETCODE
/


create or replace function FUNC_RETCODE(strtablename varchar2 , strtableid integer) return varchar2 is
Result varchar2(500);
rc integer;
str varchar2(500);
type cur_type is ref cursor;
mycursors cur_type ;
n integer;
begin
  Result :='';
  select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;
    if (n != 188) then begin
       return Result;
    end ; end if;
  rc := 0;
  select nvl(count(1),0) into rc from user_col_comments
         where table_name = ''||upper(strtablename)||''
         and column_name='C_CODE' ;     
  if rc >0 then begin
     str:='select C_CODE from '
                  ||strtablename
                  ||' where id ='||to_char(nvl(strtableid,0));
  open mycursors for str;
    loop
      fetch mycursors into Result ;
      exit when mycursors%notfound;
    end loop;
  end; end if ;

  return Result;
end FUNC_RETCODE;
/
drop procedure PROCE_GENERATECALENDAR
/


create or replace procedure PROCE_GENERATECALENDAR(d varchar) as
-- Created on 2011/7/22 by ADM  
  i integer; 
  begindate date;
  nowdate date;
  enddate date;
begin
  i := 0;
  begindate :=to_date(regexp_substr(d,'^\w{4}')||'-01-01' ,'yyyy-mm-dd');
  enddate := to_date( regexp_substr(d,'^\w{4}')||'-12-31' ,'yyyy-mm-dd');
  nowdate := begindate;
  --dbms_output.put_line(to_char(begindate ,'yyyy-mm-dd'));
  --dbms_output.put_line(to_char(enddate ,'yyyy-mm-dd'));
  select count(1) into i from SYS_CALENDAR where D_DAY between begindate and enddate;
  --dbms_output.put_line(i);
  if i<=0 then 
    loop
       exit when nowdate >  enddate;
       insert into SYS_CALENDAR (D_DAY ,C_WEEK) values(nowdate ,to_char(nowdate ,'day')); 
       --dbms_output.put_line(to_char(nowdate ,'yyyy-mm-dd'));
       nowdate := nowdate+1;                                    
    end loop;
  end if;
/*  select add_months(last_day(to_date('2011-07-01', 'yyyy-mm-dd')),-1)+1,
       last_day(to_date('2011-07-01', 'yyyy-mm-dd')), 
       to_char(to_date('2011-07-01', 'yyyy-mm-dd') ,'day')
  from dual ;*/
  
end;
/
drop function REBOMWAREID
/


create or replace function ReBomWareId(wareId integer  ,wareUnitId integer  ) return varchar2 is
Result varchar2(500);
rc integer;
str varchar2(500);
type cur_type is ref cursor;
mycursors cur_type ;
n integer;
begin
  Result :='';
  --验证是否过期
    select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;
    if (n != 188) then begin
  
       return Result;
    end ; end if;
  rc := 0;
  select nvl(count(1),0) into rc from PROD_WAREBOM
         where i_del<>1 and I_BASE_WAREUNIT_ID = wareUnitId;

  if rc >0 then begin
     str:='select id from PROD_WAREBOM where i_del<>1 and I_BASE_WAREUNIT_ID ='||to_char(wareUnitId);
      open mycursors for str;
        loop
          fetch mycursors into Result ;
          exit when mycursors%notfound;
        end loop;
      end; 
  else  begin
        select nvl(count(1),0) into rc from PROD_WAREBOM
         where i_del<>1 and I_BASE_WARE_ID = wareId;    
        if rc>0 then begin
           str:='select id from PROD_WAREBOM where i_del<>1 and I_BASE_WARE_ID ='||to_char(wareId);
           open mycursors for str;
           loop
                fetch mycursors into Result ;
                exit when mycursors%notfound;
           end loop;
        end ; else begin
            Result := 0 ;   
        end; end if;
  end;
  end if ;

  return Result;
end ReBomWareId;
/
drop function FUN_RETURNROWID
/


create or replace function FUN_RETURNROWID(strtablename varchar2 , strtableid integer) return urowid deterministic as
    Result varchar2(500);
    str varchar2(500);
    type cur_type is ref cursor;
    mycursors cur_type ;
begin
    Result :='';
    str:='select rowidtochar(rowid) from '
                  ||strtablename
                  ||' where id ='||to_char(nvl(strtableid,0));
    open mycursors for str;
    fetch mycursors into Result ;
    close mycursors;
    return chartorowid(Result);
end;
/
drop function FUNC_PRICELENGTH
/


create or replace function FUNC_PRICELENGTH(nv NUMBER) return NUMBER deterministic as

Result number;
n integer;
begin
  n := 0;
  Result := 3;

  select count(1) into n from NF_NUMBERLENGTH where c_name='单价长度';
  if n = 1 then begin
     select n_number into Result from NF_NUMBERLENGTH where c_name='单价长度';

  end ;end if;
  return round(nv , Result);
end;
/
drop function FUNC_MONEYLENGTH
/


create or replace function FUNC_MONEYLENGTH(nv number) return number deterministic as
Result number;
n integer;
begin
  n := 0;
  Result := 2;

  select count(1) into n from NF_NUMBERLENGTH where c_name='金额长度';
  if n = 1 then begin
     select n_number into Result from NF_NUMBERLENGTH where c_name='金额长度';

  end ;end if;
  return round(nv , Result);
end;
/

drop function FUNC_LPRICELENGTH
/


create or replace function FUNC_LPRICELENGTH(nv NUMBER) return varchar2 deterministic as
Result number :=0;
n integer := 0 ;
i integer := 3;
r varchar(50) := '999,999,999,999,999';

begin

  select count(1) into n from NF_NUMBERLENGTH where c_name='单价长度';
  if n = 1 then begin
     select n_number into i from NF_NUMBERLENGTH where c_name='单价长度';
  end ;end if;
  Result := round(nv , i);
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
drop function FUNC_LMONEYLENGTH
/


create or replace function FUNC_LMONEYLENGTH(nv number) return varchar2 deterministic as
Result number :=0;
n integer := 0 ;
i integer := 2;
r varchar(50) := '999,999,999,999,999';
begin
  select count(1) into n from NF_NUMBERLENGTH where c_name='金额长度';
  if n = 1 then begin
     select n_number into i from NF_NUMBERLENGTH where c_name='金额长度';

  end ;end if;
  Result:= round(nv , i);
  
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

drop function FUNC_PPRICELENGTH
/


create or replace function FUNC_PPRICELENGTH(nv NUMBER) return varchar2 deterministic as
Result number :=0;
n integer := 0 ;
i integer := 3;
r varchar(50) := '999999999999999';

begin

  select count(1) into n from NF_NUMBERLENGTH where c_name='单价长度';
  if n = 1 then begin
     select n_number into i from NF_NUMBERLENGTH where c_name='单价长度';
  end ;end if;
  Result := round(nv , i);
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

drop function FUNC_PMONEYLENGTH
/


create or replace function FUNC_PMONEYLENGTH(nv number) return varchar2 deterministic as
Result number :=0;
n integer := 0 ;
i integer := 2;
r varchar(50) := '999999999999999';
begin
  select count(1) into n from NF_NUMBERLENGTH where c_name='金额长度';
  if n = 1 then begin
     select n_number into i from NF_NUMBERLENGTH where c_name='金额长度';

  end ;end if;
  Result:= round(nv , i);
  
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
drop function FUNC_NOTCONTAINRATE
/


create or replace function FUNC_NOTCONTAINRATE(nv number , rt integer) return number deterministic as
n number := 0 ;
f number := 0;
i integer := 0;

begin
  select count(1) into i from nf_rate where id=rt;
  if i = 1 then begin
     select i_type , f_rate into n, f from nf_rate where id=rt;
     
     if n = 1 then begin
        --增值税发票 不含税金额 = 函数金额 / （1+税率）
        return nv / (1+ f);
     end; else begin
        --普通发票 不含税金额 = 函数金额 * （1-税率）
        return nv * (1-f);
     end; end if;

  end ;end if;
  
  return nv;
  
end;
/
drop function RETSUBJECT
/


create or replace function RETSUBJECT(startdate date, enddate date) return type_subject_table as
    vt type_subject_table;
begin
    SELECT type_subject_object(
       a.I_NF_ACCOUNT_ID  ,
       a.C_SUBJECT , 
       a.C_NAME , 
       a.C_DIRECT , 
       a.I_BASE_DEPT_ID , 
       a.I_HUMAN_EMPLOYEE_ID , 
       a.I_BUY_CLIENT_ID , 
       a.I_SELL_CLIENT_ID , 
       a.I_NF_PROJECT_ID , 
       a.I_BASE_WARE_ID , 
       a.I_NF_BANK_ID , 
       a.I_NF_RATE_ID , 
       a.I_BASE_STOCKCLASS_ID , 
       a.I_PROD_WORKSHOP_ID ,
       a.C_SUBJECTFIRSTCHAR ,
       a.C_SUBJECTCLASSNAME,
       a.C_BASE_DEPT_ID,
       a.C_HUMAN_EMPLOYEE_ID ,
       a.C_BUY_CLIENT_ID,
       a.C_SELL_CLIENT_ID ,
       a.C_NF_PROJECT_ID ,
       a.C_BASE_WARE_ID,
       a.C_LAYOUT ,
       a.C_NF_BANK_ID ,
       a.C_NF_RATE_ID ,
       a.C_BASE_STOCKCLASS_ID ,
       a.C_PROD_WORKSHOP_ID ,
       a.c_nf_account_name ,
       a.d_nf_account_date ,
       a.i_nf_account_default ,
       a.c_nf_account_code) BULK COLLECT
    INTO vt
    FROM (select b.I_NF_ACCOUNT_ID,
                 b.C_SUBJECT,
                 b.C_NAME,
                 b.C_DIRECT,
                 b.I_BASE_DEPT_ID,
                 b.I_HUMAN_EMPLOYEE_ID,
                 b.I_BUY_CLIENT_ID,
                 b.I_SELL_CLIENT_ID,
                 b.I_NF_PROJECT_ID,
                 b.I_BASE_WARE_ID,
                 b.I_NF_BANK_ID,
                 b.I_NF_RATE_ID,
                 b.I_BASE_STOCKCLASS_ID,
                 b.I_PROD_WORKSHOP_ID,
                 b.C_SUBJECTFIRSTCHAR,
                 b.C_SUBJECTCLASSNAME,
                 b.C_BASE_DEPT_ID,
                 b.C_HUMAN_EMPLOYEE_ID,
                 b.C_BUY_CLIENT_ID,
                 b.C_SELL_CLIENT_ID,
                 b.C_NF_PROJECT_ID,
                 b.C_BASE_WARE_ID,
                 b.C_LAYOUT,
                 b.C_NF_BANK_ID,
                 b.C_NF_RATE_ID,
                 b.C_BASE_STOCKCLASS_ID,
                 b.C_PROD_WORKSHOP_ID,
                 b.c_nf_account_name,
                 b.d_nf_account_date,
                 b.i_nf_account_default,
                 b.c_nf_account_code
            from VIEW_NF_MVOUCHERSUB b
            where trunc(b.d_inAccountDate ,'dd') between trunc(startdate ,'dd') and trunc(enddate ,'dd')
           group by b.I_NF_ACCOUNT_ID,
                    b.C_SUBJECT,
                    b.C_NAME,
                    b.C_DIRECT,
                    b.I_BASE_DEPT_ID,
                    b.I_HUMAN_EMPLOYEE_ID,
                    b.I_BUY_CLIENT_ID,
                    b.I_SELL_CLIENT_ID,
                    b.I_NF_PROJECT_ID,
                    b.I_BASE_WARE_ID,
                    b.I_NF_BANK_ID,
                    b.I_NF_RATE_ID,
                    b.I_BASE_STOCKCLASS_ID,
                    b.I_PROD_WORKSHOP_ID,
                    b.C_SUBJECTFIRSTCHAR,
                    b.C_SUBJECTCLASSNAME,
                    b.C_BASE_DEPT_ID,
                    b.C_HUMAN_EMPLOYEE_ID,
                    b.C_BUY_CLIENT_ID,
                    b.C_SELL_CLIENT_ID,
                    b.C_NF_PROJECT_ID,
                    b.C_BASE_WARE_ID,
                    b.C_LAYOUT,
                    b.C_NF_BANK_ID,
                    b.C_NF_RATE_ID,
                    b.C_BASE_STOCKCLASS_ID,
                    b.C_PROD_WORKSHOP_ID,
                    b.c_nf_account_name,
                    b.d_nf_account_date,
                    b.i_nf_account_default,
                    b.c_nf_account_code
          union all
          select I_NF_ACCOUNT_ID,
                 C_SUBJECT,
                 C_NAME,
                 C_DIRECT,
                 I_BASE_DEPT_ID,
                 I_HUMAN_EMPLOYEE_ID,
                 I_BUY_CLIENT_ID,
                 I_SELL_CLIENT_ID,
                 I_NF_PROJECT_ID,
                 I_BASE_WARE_ID,
                 I_NF_BANK_ID,
                 I_NF_RATE_ID,
                 I_BASE_STOCKCLASS_ID,
                 I_PROD_WORKSHOP_ID,
                 C_SUBJECTFIRSTCHAR,
                 C_SUBJECTCLASSNAME,
                 C_BASE_DEPT_ID,
                 C_HUMAN_EMPLOYEE_ID,
                 C_BUY_CLIENT_ID,
                 C_SELL_CLIENT_ID,
                 C_NF_PROJECT_ID,
                 C_BASE_WARE_ID,
                 C_LAYOUT,
                 C_NF_BANK_ID,
                 C_NF_RATE_ID,
                 C_BASE_STOCKCLASS_ID,
                 C_PROD_WORKSHOP_ID,
                 c_nf_account_name,
                 d_nf_account_date,
                 i_nf_account_default,
                 c_nf_account_code
            from VIEW_NF_GENERALLEDGERNOTSUM) a
   group by a.I_NF_ACCOUNT_ID,
            a.C_SUBJECT,
            a.C_NAME,
            a.C_DIRECT,
            a.I_BASE_DEPT_ID,
            a.I_HUMAN_EMPLOYEE_ID,
            a.I_BUY_CLIENT_ID,
            a.I_SELL_CLIENT_ID,
            a.I_NF_PROJECT_ID,
            a.I_BASE_WARE_ID,
            a.I_NF_BANK_ID,
            a.I_NF_RATE_ID,
            a.I_BASE_STOCKCLASS_ID,
            a.I_PROD_WORKSHOP_ID,
            a.C_SUBJECTFIRSTCHAR,
            a.C_SUBJECTCLASSNAME,
            a.C_BASE_DEPT_ID,
            a.C_HUMAN_EMPLOYEE_ID,
            a.C_BUY_CLIENT_ID,
            a.C_SELL_CLIENT_ID,
            a.C_NF_PROJECT_ID,
            a.C_BASE_WARE_ID,
            a.C_LAYOUT,
            a.C_NF_BANK_ID,
            a.C_NF_RATE_ID,
            a.C_BASE_STOCKCLASS_ID,
            a.C_PROD_WORKSHOP_ID,
            a.c_nf_account_name,
            a.d_nf_account_date,
            a.i_nf_account_default,
            a.c_nf_account_code;
  RETURN vt;
end;
/

drop function RETLEGER
/


create or replace function RETLEGER(account_id integer,startdate  date,enddate    date) return type_leger_table as
  vt         type_leger_table;
  vlegerDate date;
  maxDate    date;
  minDate    date;
  vic        integer := 0;
begin
       select count(1)
    into vic
    from NF_GENERALLEDGER a
   where a.i_nf_account_id = account_id;
  --如果现总账表内没有初始化数据，则不统计初始化数据，期初数全部为0；
  if (vic <= 0) then
    begin
      select type_leger_object(startdate,
                               b.I_NF_ACCOUNT_ID ,
                               b.C_SUBJECT ,
                               b.C_NAME ,
                               b.C_DIRECT ,
                               b.I_BASE_DEPT_ID ,
                               b.I_HUMAN_EMPLOYEE_ID ,
                               b.I_BUY_CLIENT_ID ,
                               b.I_SELL_CLIENT_ID ,
                               b.I_NF_PROJECT_ID ,
                               b.I_BASE_WARE_ID ,
                               b.I_NF_BANK_ID ,
                               b.I_NF_RATE_ID ,
                               b.I_BASE_STOCKCLASS_ID ,
                               b.I_PROD_WORKSHOP_ID ,
                               b.C_SUBJECTFIRSTCHAR ,
                               b.C_SUBJECTCLASSNAME ,
                               b.C_BASE_DEPT_ID ,
                               b.C_HUMAN_EMPLOYEE_ID ,
                               b.C_BUY_CLIENT_ID ,
                               b.C_SELL_CLIENT_ID ,
                               b.C_NF_PROJECT_ID ,
                               b.C_BASE_WARE_ID ,
                               b.C_LAYOUT ,
                               b.C_NF_BANK_ID ,
                               b.C_NF_RATE_ID ,
                               b.C_BASE_STOCKCLASS_ID ,
                               b.C_PROD_WORKSHOP_ID ,
                               b.c_nf_account_name ,
                               b.d_nf_account_date ,
                               b.i_nf_account_default ,
                               b.c_nf_account_code ,
                               0,
                               0,
                               0,
                               0,
                               sum(b.n_borrownowcount),
                               sum(b.N_BORROWNOWMONEY),
                               sum(b.N_LOANNOWCOUNT),
                               sum(b.N_LOANNOWMONEY),
                               --借方剩余数量
                               sum(decode(b.c_direct,
                                      '借',
                                      nvl(b.n_borrownowcount, 0) -
                                      nvl(b.N_LOANNOWCOUNT, 0),
                                      0)),
                               --借方剩余金额
                               sum(decode(b.c_direct,
                                      '借',
                                      nvl(b.N_BORROWNOWMONEY, 0) -
                                      nvl(b.N_LOANNOWMONEY, 0),
                                      0)),
                               --贷方剩余数量
                               sum(decode(b.c_direct,
                                      '贷',
                                      nvl(b.N_LOANNOWCOUNT, 0) -
                                      nvl(b.n_borrownowcount, 0),
                                      0)),
                               --贷方剩余金额
                               sum(decode(b.c_direct,
                                      '贷',
                                      nvl(b.N_LOANNOWMONEY, 0) -
                                      nvl(b.N_BORROWNOWMONEY, 0),
                                      0))) BULK COLLECT
        INTO vt
        from VIEW_NF_MVOUCHERSUB b
       where b.d_inAccountDate between startdate and enddate
         and b.i_nf_account_id = account_id
       group by b.I_NF_ACCOUNT_ID ,
                               b.C_SUBJECT ,
                               b.C_NAME ,
                               b.C_DIRECT ,
                               b.I_BASE_DEPT_ID ,
                               b.I_HUMAN_EMPLOYEE_ID ,
                               b.I_BUY_CLIENT_ID ,
                               b.I_SELL_CLIENT_ID ,
                               b.I_NF_PROJECT_ID ,
                               b.I_BASE_WARE_ID ,
                               b.I_NF_BANK_ID ,
                               b.I_NF_RATE_ID ,
                               b.I_BASE_STOCKCLASS_ID ,
                               b.I_PROD_WORKSHOP_ID ,
                               b.C_SUBJECTFIRSTCHAR ,
                               b.C_SUBJECTCLASSNAME ,
                               b.C_BASE_DEPT_ID ,
                               b.C_HUMAN_EMPLOYEE_ID ,
                               b.C_BUY_CLIENT_ID ,
                               b.C_SELL_CLIENT_ID ,
                               b.C_NF_PROJECT_ID ,
                               b.C_BASE_WARE_ID ,
                               b.C_LAYOUT ,
                               b.C_NF_BANK_ID ,
                               b.C_NF_RATE_ID ,
                               b.C_BASE_STOCKCLASS_ID ,
                               b.C_PROD_WORKSHOP_ID ,
                               b.c_nf_account_name ,
                               b.d_nf_account_date ,
                               b.i_nf_account_default ,
                               b.c_nf_account_code;
      return vt;
    end;
  end if;
  --总账表中有初始化数据
  select trunc(d_date, 'mm')
    into vlegerDate
    from NF_GENERALLEDGER a
   where a.i_nf_account_id = account_id
   group by trunc(d_date, 'mm');

  if (startdate >= vlegerDate) then
    maxDate := startdate;
    minDate := vlegerDate;
  else
    maxDate := vlegerDate;
    minDate := startdate;
  end if;

  select type_leger_object(    vlegerDate,
                               a.I_NF_ACCOUNT_ID ,
                               a.C_SUBJECT ,
                               a.C_NAME ,
                               a.C_DIRECT ,
                               a.I_BASE_DEPT_ID ,
                               a.I_HUMAN_EMPLOYEE_ID ,
                               a.I_BUY_CLIENT_ID ,
                               a.I_SELL_CLIENT_ID ,
                               a.I_NF_PROJECT_ID ,
                               a.I_BASE_WARE_ID ,
                               a.I_NF_BANK_ID ,
                               a.I_NF_RATE_ID ,
                               a.I_BASE_STOCKCLASS_ID ,
                               a.I_PROD_WORKSHOP_ID ,
                               a.C_SUBJECTFIRSTCHAR ,
                               a.C_SUBJECTCLASSNAME ,
                               a.C_BASE_DEPT_ID ,
                               a.C_HUMAN_EMPLOYEE_ID ,
                               a.C_BUY_CLIENT_ID ,
                               a.C_SELL_CLIENT_ID ,
                               a.C_NF_PROJECT_ID ,
                               a.C_BASE_WARE_ID ,
                               a.C_LAYOUT ,
                               a.C_NF_BANK_ID ,
                               a.C_NF_RATE_ID ,
                               a.C_BASE_STOCKCLASS_ID ,
                               a.C_PROD_WORKSHOP_ID ,
                               a.c_nf_account_name ,
                               a.d_nf_account_date ,
                               a.i_nf_account_default ,
                               a.c_nf_account_code ,
                           --期初借方数量
                           decode(a.c_direct,
                                  '借',
                                  nvl(d.N_BORROWBEGINCOUNT, 0) -
                                  nvl(d.N_LOANBEGINCOUNT, 0) +
                                  nvl(c.n_borrownowcount, 0) -
                                  nvl(c.N_LOANNOWCOUNT, 0),
                                  0),
                           --期初借方金额
                           decode(a.c_direct,
                                  '借',
                                  nvl(d.N_BORROWBEGINMONEY, 0) -
                                  nvl(d.N_LOANBEGINMONEY, 0) +
                                  nvl(c.N_BORROWNOWMONEY, 0) -
                                  nvl(c.N_LOANNOWMONEY, 0),
                                  0),
                           --期初贷方数量
                           decode(a.c_direct,
                                  '贷',
                                  nvl(d.N_LOANBEGINCOUNT, 0) -
                                  nvl(d.N_BORROWBEGINCOUNT, 0) +
                                  nvl(c.N_LOANNOWCOUNT, 0) -
                                  nvl(c.n_borrownowcount, 0),
                                  0),
                           --期初贷方金额
                           decode(a.c_direct,
                                  '贷',
                                  nvl(d.N_LOANBEGINMONEY, 0) -
                                  nvl(d.N_BORROWBEGINMONEY, 0) +
                                  nvl(c.N_LOANNOWMONEY, 0) -
                                  nvl(c.N_BORROWNOWMONEY, 0),
                                  0),
                           nvl(b.n_borrownowcount, 0),
                           nvl(b.N_BORROWNOWMONEY, 0),
                           nvl(b.N_LOANNOWCOUNT, 0),
                           nvl(b.N_LOANNOWMONEY, 0),
                           --借方剩余数量
                           decode(a.c_direct,
                                  '借',
                                  nvl(d.N_BORROWBEGINCOUNT, 0) -
                                  nvl(d.N_LOANBEGINCOUNT, 0) +
                                  nvl(c.n_borrownowcount, 0) -
                                  nvl(c.N_LOANNOWCOUNT, 0) +
                                  nvl(b.n_borrownowcount, 0) -
                                  nvl(b.N_LOANNOWCOUNT, 0),
                                  0),
                           --借方剩余金额
                           decode(a.c_direct,
                                  '借',
                                  nvl(d.N_BORROWBEGINMONEY, 0) -
                                  nvl(d.N_LOANBEGINMONEY, 0) +
                                  nvl(c.N_BORROWNOWMONEY, 0) -
                                  nvl(c.N_LOANNOWMONEY, 0) +
                                  nvl(b.N_BORROWNOWMONEY, 0) -
                                  nvl(b.N_LOANNOWMONEY, 0),
                                  0),
                           --贷方剩余数量
                           decode(a.c_direct,
                                  '贷',
                                  nvl(d.N_LOANBEGINCOUNT, 0) -
                                  nvl(d.N_BORROWBEGINCOUNT, 0) +
                                  nvl(c.N_LOANNOWCOUNT, 0) -
                                  nvl(c.n_borrownowcount, 0) +
                                  nvl(b.N_LOANNOWCOUNT, 0) -
                                  nvl(b.n_borrownowcount, 0),
                                  0),
                           --贷方剩余金额
                           decode(a.c_direct,
                                  '贷',
                                  nvl(d.N_LOANBEGINMONEY, 0) -
                                  nvl(d.N_BORROWBEGINMONEY, 0) +
                                  nvl(c.N_LOANNOWMONEY, 0) -
                                  nvl(c.N_BORROWNOWMONEY, 0) +
                                  nvl(b.N_LOANNOWMONEY, 0) -
                                  nvl(b.N_BORROWNOWMONEY, 0),
                                  0)
                           
                           ) BULK COLLECT
    INTO vt
  
    from (select *
            from table(retsubject(minDate, enddate))
           where i_nf_account_id = account_id) a
  --当前凭证表中的发生额
    left join (select b.i_nf_account_id,
                      b.c_subject,
                      b.c_name,
                      b.C_DIRECT,
                      b.I_BASE_DEPT_ID,
                      b.I_HUMAN_EMPLOYEE_ID,
                      b.I_BUY_CLIENT_ID,
                      b.I_SELL_CLIENT_ID,
                      b.I_NF_PROJECT_ID,
                      b.I_BASE_WARE_ID,
                      b.I_NF_BANK_ID,
                      b.I_NF_RATE_ID,
                      b.I_BASE_STOCKCLASS_ID,
                      b.I_PROD_WORKSHOP_ID,
                      sum(b.n_borrownowcount) n_borrownowcount,
                      sum(b.N_BORROWNOWMONEY) N_BORROWNOWMONEY,
                      sum(b.N_LOANNOWCOUNT) N_LOANNOWCOUNT,
                      sum(b.N_LOANNOWMONEY) N_LOANNOWMONEY
               
                 from VIEW_NF_MVOUCHERSUB b
                where b.d_inAccountDate between maxDate and enddate
                  and b.i_nf_account_id = account_id
                group by b.i_nf_account_id,
                         b.c_subject,
                         b.c_name,
                         b.C_DIRECT,
                         b.I_BASE_DEPT_ID,
                         b.I_HUMAN_EMPLOYEE_ID,
                         b.I_BUY_CLIENT_ID,
                         b.I_SELL_CLIENT_ID,
                         b.I_NF_PROJECT_ID,
                         b.I_BASE_WARE_ID,
                         b.I_NF_BANK_ID,
                         b.I_NF_RATE_ID,
                         b.I_BASE_STOCKCLASS_ID,
                         b.I_PROD_WORKSHOP_ID) b
      on a.i_nf_account_id = b.i_nf_account_id
     and a.c_subject = b.c_subject
     and a.c_name = b.c_name
     and a.C_DIRECT = b.C_DIRECT
     and a.I_BASE_DEPT_ID = b.I_BASE_DEPT_ID
     and a.I_HUMAN_EMPLOYEE_ID = b.I_HUMAN_EMPLOYEE_ID
     and a.I_BUY_CLIENT_ID = b.I_BUY_CLIENT_ID
     and a.I_SELL_CLIENT_ID = b.I_SELL_CLIENT_ID
     and a.I_NF_PROJECT_ID = b.I_NF_PROJECT_ID
     and a.I_BASE_WARE_ID = b.I_BASE_WARE_ID
     and a.I_NF_BANK_ID = b.I_NF_BANK_ID
     and a.I_NF_RATE_ID = b.I_NF_RATE_ID
     and a.I_BASE_STOCKCLASS_ID = b.I_BASE_STOCKCLASS_ID
     and a.I_PROD_WORKSHOP_ID = b.I_PROD_WORKSHOP_ID
    left join (select b.i_nf_account_id,
                      b.c_subject,
                      b.c_name,
                      b.C_DIRECT,
                      b.I_BASE_DEPT_ID,
                      b.I_HUMAN_EMPLOYEE_ID,
                      b.I_BUY_CLIENT_ID,
                      b.I_SELL_CLIENT_ID,
                      b.I_NF_PROJECT_ID,
                      b.I_BASE_WARE_ID,
                      b.I_NF_BANK_ID,
                      b.I_NF_RATE_ID,
                      b.I_BASE_STOCKCLASS_ID,
                      b.I_PROD_WORKSHOP_ID,
                      sum(b.n_borrownowcount) n_borrownowcount,
                      sum(b.N_BORROWNOWMONEY) N_BORROWNOWMONEY,
                      sum(b.N_LOANNOWCOUNT) N_LOANNOWCOUNT,
                      sum(b.N_LOANNOWMONEY) N_LOANNOWMONEY
               
                 from VIEW_NF_MVOUCHERSUB b
                where b.d_inAccountDate < startdate
                  and b.d_inAccountDate >= vlegerDate
                  and b.i_nf_account_id = account_id
                group by b.i_nf_account_id,
                         b.c_subject,
                         b.c_name,
                         b.C_DIRECT,
                         b.I_BASE_DEPT_ID,
                         b.I_HUMAN_EMPLOYEE_ID,
                         b.I_BUY_CLIENT_ID,
                         b.I_SELL_CLIENT_ID,
                         b.I_NF_PROJECT_ID,
                         b.I_BASE_WARE_ID,
                         b.I_NF_BANK_ID,
                         b.I_NF_RATE_ID,
                         b.I_BASE_STOCKCLASS_ID,
                         b.I_PROD_WORKSHOP_ID) c
      on a.i_nf_account_id = c.i_nf_account_id
     and a.c_subject = c.c_subject
     and a.c_name = c.c_name
     and a.C_DIRECT = c.C_DIRECT
     and a.I_BASE_DEPT_ID = c.I_BASE_DEPT_ID
     and a.I_HUMAN_EMPLOYEE_ID = c.I_HUMAN_EMPLOYEE_ID
     and a.I_BUY_CLIENT_ID = c.I_BUY_CLIENT_ID
     and a.I_SELL_CLIENT_ID = c.I_SELL_CLIENT_ID
     and a.I_NF_PROJECT_ID = c.I_NF_PROJECT_ID
     and a.I_BASE_WARE_ID = c.I_BASE_WARE_ID
     and a.I_NF_BANK_ID = c.I_NF_BANK_ID
     and a.I_NF_RATE_ID = c.I_NF_RATE_ID
     and a.I_BASE_STOCKCLASS_ID = c.I_BASE_STOCKCLASS_ID
     and a.I_PROD_WORKSHOP_ID = c.I_PROD_WORKSHOP_ID
    left join (select *
                 from VIEW_NF_GENERALLEDGER
                where trunc(d_date, 'mm') = trunc(vlegerDate, 'mm')
                  and i_nf_account_id = account_id) d
      on a.i_nf_account_id = d.i_nf_account_id
     and a.c_subject = d.c_subject
     and a.c_name = d.c_name
     and a.C_DIRECT = d.C_DIRECT
     and a.I_BASE_DEPT_ID = d.I_BASE_DEPT_ID
     and a.I_HUMAN_EMPLOYEE_ID = d.I_HUMAN_EMPLOYEE_ID
     and a.I_BUY_CLIENT_ID = d.I_BUY_CLIENT_ID
     and a.I_SELL_CLIENT_ID = d.I_SELL_CLIENT_ID
     and a.I_NF_PROJECT_ID = d.I_NF_PROJECT_ID
     and a.I_BASE_WARE_ID = d.I_BASE_WARE_ID
     and a.I_NF_BANK_ID = d.I_NF_BANK_ID
     and a.I_NF_RATE_ID = d.I_NF_RATE_ID
     and a.I_BASE_STOCKCLASS_ID = d.I_BASE_STOCKCLASS_ID
     and a.I_PROD_WORKSHOP_ID = d.I_PROD_WORKSHOP_ID;

  RETURN vt;
end;
/
drop function RETLEGERDEFER
/


create or replace function RETLEGERDEFER(account_id integer,startdate  date,enddate    date) return type_leger_table as
  vt         type_leger_table;
  vlegerDate date;
  maxDate    date;
  minDate    date;
  vic        integer := 0;
  fx         integer := 1;
begin
       select count(1)
    into vic
    from NF_GENERALLEDGER a
   where a.i_nf_account_id = account_id;
  --如果现总账表内没有初始化数据，则不统计初始化数据，期初数全部为0；
  if (vic <= 0) then
    begin
      select type_leger_object(startdate,
                               b.I_NF_ACCOUNT_ID ,
                               b.C_SUBJECT ,
                               b.C_NAME ,
                               b.C_DIRECT ,
                               b.I_BASE_DEPT_ID ,
                               b.I_HUMAN_EMPLOYEE_ID ,
                               b.I_BUY_CLIENT_ID ,
                               b.I_SELL_CLIENT_ID ,
                               b.I_NF_PROJECT_ID ,
                               b.I_BASE_WARE_ID ,
                               b.I_NF_BANK_ID ,
                               b.I_NF_RATE_ID ,
                               b.I_BASE_STOCKCLASS_ID ,
                               b.I_PROD_WORKSHOP_ID ,
                               b.C_SUBJECTFIRSTCHAR ,
                               b.C_SUBJECTCLASSNAME ,
                               b.C_BASE_DEPT_ID ,
                               b.C_HUMAN_EMPLOYEE_ID ,
                               b.C_BUY_CLIENT_ID ,
                               b.C_SELL_CLIENT_ID ,
                               b.C_NF_PROJECT_ID ,
                               b.C_BASE_WARE_ID ,
                               b.C_LAYOUT ,
                               b.C_NF_BANK_ID ,
                               b.C_NF_RATE_ID ,
                               b.C_BASE_STOCKCLASS_ID ,
                               b.C_PROD_WORKSHOP_ID ,
                               b.c_nf_account_name ,
                               b.d_nf_account_date ,
                               b.i_nf_account_default ,
                               b.c_nf_account_code ,
                               0,
                               0,
                               0,
                               0,
                               sum(b.n_borrownowcount),
                               sum(b.N_BORROWNOWMONEY),
                               sum(b.N_LOANNOWCOUNT),
                               sum(b.N_LOANNOWMONEY),
                               --借方剩余数量
                               sum(decode(b.c_direct,
                                      '借',
                                      nvl(b.n_borrownowcount, 0) -
                                      nvl(b.N_LOANNOWCOUNT, 0),
                                      0)),
                               --借方剩余金额
                               sum(decode(b.c_direct,
                                      '借',
                                      nvl(b.N_BORROWNOWMONEY, 0) -
                                      nvl(b.N_LOANNOWMONEY, 0),
                                      0)),
                               --贷方剩余数量
                               sum(decode(b.c_direct,
                                      '贷',
                                      nvl(b.N_LOANNOWCOUNT, 0) -
                                      nvl(b.n_borrownowcount, 0),
                                      0)),
                               --贷方剩余金额
                               sum(decode(b.c_direct,
                                      '贷',
                                      nvl(b.N_LOANNOWMONEY, 0) -
                                      nvl(b.N_BORROWNOWMONEY, 0),
                                      0))) BULK COLLECT
        INTO vt
        from VIEW_NF_MVOUCHERSUB b
       where b.d_inAccountDate between startdate and enddate
         and b.i_nf_account_id = account_id
       group by b.I_NF_ACCOUNT_ID ,
                               b.C_SUBJECT ,
                               b.C_NAME ,
                               b.C_DIRECT ,
                               b.I_BASE_DEPT_ID ,
                               b.I_HUMAN_EMPLOYEE_ID ,
                               b.I_BUY_CLIENT_ID ,
                               b.I_SELL_CLIENT_ID ,
                               b.I_NF_PROJECT_ID ,
                               b.I_BASE_WARE_ID ,
                               b.I_NF_BANK_ID ,
                               b.I_NF_RATE_ID ,
                               b.I_BASE_STOCKCLASS_ID ,
                               b.I_PROD_WORKSHOP_ID ,
                               b.C_SUBJECTFIRSTCHAR ,
                               b.C_SUBJECTCLASSNAME ,
                               b.C_BASE_DEPT_ID ,
                               b.C_HUMAN_EMPLOYEE_ID ,
                               b.C_BUY_CLIENT_ID ,
                               b.C_SELL_CLIENT_ID ,
                               b.C_NF_PROJECT_ID ,
                               b.C_BASE_WARE_ID ,
                               b.C_LAYOUT ,
                               b.C_NF_BANK_ID ,
                               b.C_NF_RATE_ID ,
                               b.C_BASE_STOCKCLASS_ID ,
                               b.C_PROD_WORKSHOP_ID ,
                               b.c_nf_account_name ,
                               b.d_nf_account_date ,
                               b.i_nf_account_default ,
                               b.c_nf_account_code;
      return vt;
    end;
  end if;
  --总账表中有初始化数据
  select count(1)
  into vic
  from VIEW_NF_GENERALLEDGERHISTORY a
  where a.i_nf_account_id = account_id and d_date <= startdate;
  --总账中有大于等于查询时间的余额
  if (vic<=0) then begin
       select d_date into vlegerDate
       from VIEW_NF_GENERALLEDGERHISTORY a
       where d_date > startdate and a.i_nf_account_id = account_id
       group by d_date
       having d_date = (select min(d_date)
       from VIEW_NF_GENERALLEDGERHISTORY a
       where d_date > startdate and a.i_nf_account_id = account_id);

       vlegerDate := trunc(vlegerDate, 'mm');

       fx := -1;
       maxDate := vlegerDate;
       minDate := startdate;

  --总账中有小于等于查询时间的余额
  end; else begin
       select d_date into vlegerDate
       from VIEW_NF_GENERALLEDGERHISTORY a
       where d_date <= startdate and a.i_nf_account_id = account_id
       group by d_date
       having d_date = (select max(d_date)
       from VIEW_NF_GENERALLEDGERHISTORY a
       where d_date <= startdate and a.i_nf_account_id = account_id);

       vlegerDate := trunc(vlegerDate, 'mm');

       fx := 1;
       maxDate := startdate;
       minDate := vlegerDate;

  end; end if;

  select type_leger_object(    vlegerDate,
                               a.I_NF_ACCOUNT_ID ,
                               a.C_SUBJECT ,
                               a.C_NAME ,
                               a.C_DIRECT ,
                               a.I_BASE_DEPT_ID ,
                               a.I_HUMAN_EMPLOYEE_ID ,
                               a.I_BUY_CLIENT_ID ,
                               a.I_SELL_CLIENT_ID ,
                               a.I_NF_PROJECT_ID ,
                               a.I_BASE_WARE_ID ,
                               a.I_NF_BANK_ID ,
                               a.I_NF_RATE_ID ,
                               a.I_BASE_STOCKCLASS_ID ,
                               a.I_PROD_WORKSHOP_ID ,
                               a.C_SUBJECTFIRSTCHAR ,
                               a.C_SUBJECTCLASSNAME ,
                               a.C_BASE_DEPT_ID ,
                               a.C_HUMAN_EMPLOYEE_ID ,
                               a.C_BUY_CLIENT_ID ,
                               a.C_SELL_CLIENT_ID ,
                               a.C_NF_PROJECT_ID ,
                               a.C_BASE_WARE_ID ,
                               a.C_LAYOUT ,
                               a.C_NF_BANK_ID ,
                               a.C_NF_RATE_ID ,
                               a.C_BASE_STOCKCLASS_ID ,
                               a.C_PROD_WORKSHOP_ID ,
                               a.c_nf_account_name ,
                               a.d_nf_account_date ,
                               a.i_nf_account_default ,
                               a.c_nf_account_code ,
                           --期初借方数量
                           decode(a.c_direct,
                                  '借',
                                  nvl(d.N_BORROWBEGINCOUNT, 0) -
                                  nvl(d.N_LOANBEGINCOUNT, 0) +
                                  nvl(c.n_borrownowcount, 0) -
                                  nvl(c.N_LOANNOWCOUNT, 0),
                                  0),
                           --期初借方金额
                           decode(a.c_direct,
                                  '借',
                                  nvl(d.N_BORROWBEGINMONEY, 0) -
                                  nvl(d.N_LOANBEGINMONEY, 0) +
                                  nvl(c.N_BORROWNOWMONEY, 0) -
                                  nvl(c.N_LOANNOWMONEY, 0),
                                  0),
                           --期初贷方数量
                           decode(a.c_direct,
                                  '贷',
                                  nvl(d.N_LOANBEGINCOUNT, 0) -
                                  nvl(d.N_BORROWBEGINCOUNT, 0) +
                                  nvl(c.N_LOANNOWCOUNT, 0) -
                                  nvl(c.n_borrownowcount, 0),
                                  0),
                           --期初贷方金额
                           decode(a.c_direct,
                                  '贷',
                                  nvl(d.N_LOANBEGINMONEY, 0) -
                                  nvl(d.N_BORROWBEGINMONEY, 0) +
                                  nvl(c.N_LOANNOWMONEY, 0) -
                                  nvl(c.N_BORROWNOWMONEY, 0),
                                  0),
                           nvl(b.n_borrownowcount, 0),
                           nvl(b.N_BORROWNOWMONEY, 0),
                           nvl(b.N_LOANNOWCOUNT, 0),
                           nvl(b.N_LOANNOWMONEY, 0),
                           --借方剩余数量
                           decode(a.c_direct,
                                  '借',
                                  nvl(d.N_BORROWBEGINCOUNT, 0) -
                                  nvl(d.N_LOANBEGINCOUNT, 0) +
                                  nvl(c.n_borrownowcount, 0) -
                                  nvl(c.N_LOANNOWCOUNT, 0) +
                                  nvl(b.n_borrownowcount, 0) -
                                  nvl(b.N_LOANNOWCOUNT, 0),
                                  0),
                           --借方剩余金额
                           decode(a.c_direct,
                                  '借',
                                  nvl(d.N_BORROWBEGINMONEY, 0) -
                                  nvl(d.N_LOANBEGINMONEY, 0) +
                                  nvl(c.N_BORROWNOWMONEY, 0) -
                                  nvl(c.N_LOANNOWMONEY, 0) +
                                  nvl(b.N_BORROWNOWMONEY, 0) -
                                  nvl(b.N_LOANNOWMONEY, 0),
                                  0),
                           --贷方剩余数量
                           decode(a.c_direct,
                                  '贷',
                                  nvl(d.N_LOANBEGINCOUNT, 0) -
                                  nvl(d.N_BORROWBEGINCOUNT, 0) +
                                  nvl(c.N_LOANNOWCOUNT, 0) -
                                  nvl(c.n_borrownowcount, 0) +
                                  nvl(b.N_LOANNOWCOUNT, 0) -
                                  nvl(b.n_borrownowcount, 0),
                                  0),
                           --贷方剩余金额
                           decode(a.c_direct,
                                  '贷',
                                  nvl(d.N_LOANBEGINMONEY, 0) -
                                  nvl(d.N_BORROWBEGINMONEY, 0) +
                                  nvl(c.N_LOANNOWMONEY, 0) -
                                  nvl(c.N_BORROWNOWMONEY, 0) +
                                  nvl(b.N_LOANNOWMONEY, 0) -
                                  nvl(b.N_BORROWNOWMONEY, 0),
                                  0)

                           ) BULK COLLECT
    INTO vt

    from (select *
            from table(retsubject(minDate, enddate))
           where i_nf_account_id = account_id) a
  --当前凭证表中的发生额
    left join (select b.i_nf_account_id,
                      b.c_subject,
                      b.c_name,
                      b.C_DIRECT,
                      b.I_BASE_DEPT_ID,
                      b.I_HUMAN_EMPLOYEE_ID,
                      b.I_BUY_CLIENT_ID,
                      b.I_SELL_CLIENT_ID,
                      b.I_NF_PROJECT_ID,
                      b.I_BASE_WARE_ID,
                      b.I_NF_BANK_ID,
                      b.I_NF_RATE_ID,
                      b.I_BASE_STOCKCLASS_ID,
                      b.I_PROD_WORKSHOP_ID,
                      sum(b.n_borrownowcount) n_borrownowcount,
                      sum(b.N_BORROWNOWMONEY) N_BORROWNOWMONEY,
                      sum(b.N_LOANNOWCOUNT) N_LOANNOWCOUNT,
                      sum(b.N_LOANNOWMONEY) N_LOANNOWMONEY

                 from VIEW_NF_MVOUCHERSUB b
                where b.d_inAccountDate between startdate and enddate
                  and b.i_nf_account_id = account_id
                group by b.i_nf_account_id,
                         b.c_subject,
                         b.c_name,
                         b.C_DIRECT,
                         b.I_BASE_DEPT_ID,
                         b.I_HUMAN_EMPLOYEE_ID,
                         b.I_BUY_CLIENT_ID,
                         b.I_SELL_CLIENT_ID,
                         b.I_NF_PROJECT_ID,
                         b.I_BASE_WARE_ID,
                         b.I_NF_BANK_ID,
                         b.I_NF_RATE_ID,
                         b.I_BASE_STOCKCLASS_ID,
                         b.I_PROD_WORKSHOP_ID) b
      on a.i_nf_account_id = b.i_nf_account_id
     and a.c_subject = b.c_subject
     and a.c_name = b.c_name
     and a.C_DIRECT = b.C_DIRECT
     and a.I_BASE_DEPT_ID = b.I_BASE_DEPT_ID
     and a.I_HUMAN_EMPLOYEE_ID = b.I_HUMAN_EMPLOYEE_ID
     and a.I_BUY_CLIENT_ID = b.I_BUY_CLIENT_ID
     and a.I_SELL_CLIENT_ID = b.I_SELL_CLIENT_ID
     and a.I_NF_PROJECT_ID = b.I_NF_PROJECT_ID
     and a.I_BASE_WARE_ID = b.I_BASE_WARE_ID
     and a.I_NF_BANK_ID = b.I_NF_BANK_ID
     and a.I_NF_RATE_ID = b.I_NF_RATE_ID
     and a.I_BASE_STOCKCLASS_ID = b.I_BASE_STOCKCLASS_ID
     and a.I_PROD_WORKSHOP_ID = b.I_PROD_WORKSHOP_ID
    --凭证中没有结转的金额
    left join (select b.i_nf_account_id,
                      b.c_subject,
                      b.c_name,
                      b.C_DIRECT,
                      b.I_BASE_DEPT_ID,
                      b.I_HUMAN_EMPLOYEE_ID,
                      b.I_BUY_CLIENT_ID,
                      b.I_SELL_CLIENT_ID,
                      b.I_NF_PROJECT_ID,
                      b.I_BASE_WARE_ID,
                      b.I_NF_BANK_ID,
                      b.I_NF_RATE_ID,
                      b.I_BASE_STOCKCLASS_ID,
                      b.I_PROD_WORKSHOP_ID,
                      sum(b.n_borrownowcount)*fx n_borrownowcount,
                      sum(b.N_BORROWNOWMONEY)*fx N_BORROWNOWMONEY,
                      sum(b.N_LOANNOWCOUNT)*fx N_LOANNOWCOUNT,
                      sum(b.N_LOANNOWMONEY)*fx N_LOANNOWMONEY

                 from VIEW_NF_MVOUCHERSUB b
                where b.d_inAccountDate < maxDate
                  and b.d_inAccountDate >= minDate
                  and b.i_nf_account_id = account_id
                group by b.i_nf_account_id,
                         b.c_subject,
                         b.c_name,
                         b.C_DIRECT,
                         b.I_BASE_DEPT_ID,
                         b.I_HUMAN_EMPLOYEE_ID,
                         b.I_BUY_CLIENT_ID,
                         b.I_SELL_CLIENT_ID,
                         b.I_NF_PROJECT_ID,
                         b.I_BASE_WARE_ID,
                         b.I_NF_BANK_ID,
                         b.I_NF_RATE_ID,
                         b.I_BASE_STOCKCLASS_ID,
                         b.I_PROD_WORKSHOP_ID) c
      on a.i_nf_account_id = c.i_nf_account_id
     and a.c_subject = c.c_subject
     and a.c_name = c.c_name
     and a.C_DIRECT = c.C_DIRECT
     and a.I_BASE_DEPT_ID = c.I_BASE_DEPT_ID
     and a.I_HUMAN_EMPLOYEE_ID = c.I_HUMAN_EMPLOYEE_ID
     and a.I_BUY_CLIENT_ID = c.I_BUY_CLIENT_ID
     and a.I_SELL_CLIENT_ID = c.I_SELL_CLIENT_ID
     and a.I_NF_PROJECT_ID = c.I_NF_PROJECT_ID
     and a.I_BASE_WARE_ID = c.I_BASE_WARE_ID
     and a.I_NF_BANK_ID = c.I_NF_BANK_ID
     and a.I_NF_RATE_ID = c.I_NF_RATE_ID
     and a.I_BASE_STOCKCLASS_ID = c.I_BASE_STOCKCLASS_ID
     and a.I_PROD_WORKSHOP_ID = c.I_PROD_WORKSHOP_ID
    --当前最近月份的总账金额
    left join (select *
                 from VIEW_NF_GENERALLEDGERHISTORY
                where trunc(d_date, 'mm') = trunc(vlegerDate, 'mm')
                  and i_nf_account_id = account_id) d
      on a.i_nf_account_id = d.i_nf_account_id
     and a.c_subject = d.c_subject
     and a.c_name = d.c_name
     and a.C_DIRECT = d.C_DIRECT
     and a.I_BASE_DEPT_ID = d.I_BASE_DEPT_ID
     and a.I_HUMAN_EMPLOYEE_ID = d.I_HUMAN_EMPLOYEE_ID
     and a.I_BUY_CLIENT_ID = d.I_BUY_CLIENT_ID
     and a.I_SELL_CLIENT_ID = d.I_SELL_CLIENT_ID
     and a.I_NF_PROJECT_ID = d.I_NF_PROJECT_ID
     and a.I_BASE_WARE_ID = d.I_BASE_WARE_ID
     and a.I_NF_BANK_ID = d.I_NF_BANK_ID
     and a.I_NF_RATE_ID = d.I_NF_RATE_ID
     and a.I_BASE_STOCKCLASS_ID = d.I_BASE_STOCKCLASS_ID
     and a.I_PROD_WORKSHOP_ID = d.I_PROD_WORKSHOP_ID;

  RETURN vt;
end;
/

