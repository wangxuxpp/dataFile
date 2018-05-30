----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 注册函数$$$
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
prompt 结束创建 注册函数
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
prompt 
prompt
prompt 
prompt  
prompt $$$开始创建 返回表ROWID$$$
drop function FUN_RETURNROWID
/
create or replace function FUN_RETURNROWID(strtablename varchar2 , strtableid integer) return urowid deterministic as
    Result varchar2(500);
    str varchar2(500);
    type cur_type is ref cursor;
    mycursors cur_type ;
    n integer;
begin
    Result :='';
    select registerfunc(to_number( to_char(sysdate ,'yyyymmdd'))) into n from dual;
    if (n != 188) then begin
        return chartorowid(Result);
    end ; end if;
    str:='select rowidtochar(rowid) from '
                  ||strtablename
                  ||' where id ='||to_char(nvl(strtableid,0));
    open mycursors for str;
    fetch mycursors into Result ;
    close mycursors;
    return chartorowid(Result);
end;
/
prompt 结束创建 返回表ROWID
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 返回表名函数$$$
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
prompt 结束创建 返回表名函数
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 返回审批流程的上一审批步骤$$$
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
  close mycursors;
  result := preFlow;
  return Result;
end FUNC_RETPREFLOW;
/
prompt 结束创建 返回审批流程的上一审批步骤
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 返回表CODE值$$$
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
  close mycursors;  
  end; end if ;
  
  return Result;
end FUNC_RETCODE;
/
prompt 结束创建 返回表CODE值
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 生成生产工作日期日期函数$$$
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
prompt 结束创建 生成生产工作日期日期函数
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 返回指定物品的BOMID$$$
drop function REBOMWAREID
/
create or replace function ReBomWareId(wareId integer  ,wareUnitId integer  ) return integer deterministic is
Result integer :=0 ;
rc integer;
str varchar2(500);
type cur_type is ref cursor;
mycursors cur_type ;
n integer;
begin
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
      close mycursors;
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
           close mycursors;
        end ; else begin
            Result := 0 ;   
        end; end if;
  end;
  end if ;

  return Result;
end ReBomWareId;
/
prompt 结束创建 返回指定物品的BOMID
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 根据派工单生成的开工单班组$$$
drop function FUNC_PRODWORK
/
create or replace function FUNC_PRODWORK(workstartid integer) return varchar2 is 
Result varchar2(500);
rc varchar2(500);
str varchar2(500);
type cur_type is ref cursor;
mycursors cur_type ;
begin
    Result := '';
    rc :='';
    str :='select c_PROD_WORKGROUPname C_NAME from VIEW_PROD_WORKMAKE where I_DEL<>1 and I_STATE_FLAG>=2 and I_CLOSE_FLAG<>1 and I_PROD_STARTWORING_ID = '||to_char(workstartid);
    open mycursors for str;
    loop
         fetch mycursors into rc ;
         exit when mycursors%notfound;
         Result := Result || ' '|| rc;
    end loop;
    close mycursors;
    return Result;
end;
/
prompt 结束创建 根据派工单生成的开工单班组
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 返回指定物品的生产工艺ID$$$
drop function RECRAFTID
/
create or replace function RECRAFTID(wareId integer  ,wareUnitId integer , workshopId integer ) return integer deterministic is
Result integer := 0;
rc integer;
str varchar2(500);
type cur_type is ref cursor;
mycursors cur_type ;
myobj VIEW_PROD_CRAFT%rowtype;
begin
  rc := 0;
  Result := 0;
  str :='select * from VIEW_PROD_CRAFT where i_del<>1 and i_workcenter_del <> 1';
  select nvl(count(1),0) into rc from VIEW_PROD_CRAFT where i_del<>1 and i_workcenter_del <> 1 and I_BASE_WAREUNIT_ID = wareUnitId;
  if rc >0 then begin
    str := str || ' and I_BASE_WAREUNIT_ID='||to_char(wareUnitId); 
  end; else begin
    select nvl(count(1),0) into rc from VIEW_PROD_CRAFT where i_del<>1  and i_workcenter_del <> 1 and I_WARE_ID = wareId;   
    if rc<=0 then
      return Result; 
    end if;  
    str := str || ' and I_WARE_ID='||to_char(wareId);   
  end; end if; 
        
  if (workshopId != 0)then begin
     str := str ||' and I_PROD_WORKSHOP_ID='||to_char(workshopId);
  end; end if;
  
  open mycursors for str;
    if mycursors%rowcount = 1 then 
       fetch mycursors into myobj ;
       Result :=myobj.id;    
    else  
      loop
        fetch mycursors into myobj ;
        Result :=myobj.id;
        exit when mycursors%notfound;
        if (myobj.i_default =1) then
           Result :=myobj.id;
           exit;   
        end if;
      end loop;
    end if;
  close mycursors;
  return Result;
end ;
/
prompt 结束创建 返回指定物品的生产工艺ID
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 根据全局配置返回损耗率计算的数值$$$
drop function FUNC_ATTRITIONRATE
/
create or replace function FUNC_ATTRITIONRATE(  
                                           produnum number , 
                                           rate number) return number as
    vr number := 0 ;

    sumtype varchar2(50) := '0';
begin

    --返回全局配置BOM算法 【0： 1+损耗率算法】  【其他：1-损耗率算法 】
    select nvl(C_VALUE,'0') into sumtype from SYS_ENVIRONMENT where C_NAME='BOM_ALGORITHM';
    if sumtype = '0' then begin
        vr :=  produnum * (1+rate)   ;
    end ;else begin
        if (1-rate) = 0 then begin
           vr :=  produnum ;  
        end ; else begin
           vr :=  produnum / (1 - rate);
        end ; end if;   
    end ;end if;
    return vr;
end;
/
prompt 结束创建 根据全局配置返回损耗率计算的数值
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 根据物品返回相应的BOM子表物品信息包括用料信息$$$
drop function FUNC_BOMSUBWARE
/
create or replace function FUNC_BOMSUBWARE(iwareid integer ,
                                           iwareunitid integer ,  
                                           produnum number , 
                                           swapnum number , 
                                           ilevel integer) return type_bomsubware_table as
    vt type_bomsubware_table;
    bomid integer := 0;
    sumtype varchar2(50) := '0';
begin
    --返回BOM主表ID
    select rebomwareid(iwareid , iwareunitid) into bomid  from dual;
    --返回全局配置BOM算法 【0： 1+损耗率算法】  【其他：1-损耗率算法 】
    select nvl(C_VALUE,'0') into sumtype from SYS_ENVIRONMENT where C_NAME='BOM_ALGORITHM';
    if sumtype = '0' then begin
        select type_bomsubware_object(
               a.id,
               a.i_prod_warebom_id,
               a.i_acquirewarestock,
               a.i_base_ware_id,
               a.i_base_wareunit_id,
               a.warename,
               a.UNIT_LAYOUT,
               a.UNIT_NAME,
               a.UNIT_SWAP,
               a.c_aliascode,
               a.n_batchcount,
               a.f_requirement,
               a.f_attritionrate,
               a.f_upperrate,
               a.f_lowrate,
               ilevel,
               round(produnum * swapnum * a.f_requirement / b.f_output / b.UNIT_SWAP *(1+a.f_attritionrate) ,4),
               round(produnum * swapnum * a.f_requirement * (1+a.f_upperrate) /(b.f_output *decode(b.f_lowrate ,0 ,1 ,b.f_lowrate)) / b.UNIT_SWAP,4) ,
               round(produnum * swapnum * a.f_requirement * (1+a.f_lowrate) / (b.f_output  *decode(b.f_upperrate ,0 ,1 ,b.f_upperrate)) / b.UNIT_SWAP ,4),
               rebomwareid(a.i_base_ware_id , a.i_base_wareunit_id) ,
               'BOM物品',
               a.c_type
               ) BULK COLLECT into vt
          from (select * from VIEW_PROD_WAREBOMSUB
               where i_prod_warebom_id = bomid) a
         inner join VIEW_PROD_WAREBOM b
            on a.i_prod_warebom_id = b.id;
    end ;else begin
         select type_bomsubware_object(
               a.id,
               a.i_prod_warebom_id,
               a.i_acquirewarestock,
               a.i_base_ware_id,
               a.i_base_wareunit_id,
               a.warename,
               a.UNIT_LAYOUT,
               a.UNIT_NAME,
               a.UNIT_SWAP,
               a.c_aliascode,
               a.n_batchcount,
               a.f_requirement,
               a.f_attritionrate,
               a.f_upperrate,
               a.f_lowrate,
               ilevel,
               round(produnum * swapnum * a.f_requirement / b.f_output / b.UNIT_SWAP / (1-a.f_attritionrate) ,4),
               round(produnum * swapnum * a.f_requirement / decode(1-a.f_upperrate,0 ,1 ,1-a.f_upperrate) /(b.f_output *decode(b.f_lowrate ,0 ,1 ,b.f_lowrate)) / b.UNIT_SWAP,4) ,
               round(produnum * swapnum * a.f_requirement / decode(1-a.f_lowrate,0 ,1 ,1-a.f_lowrate) / (b.f_output  *decode(b.f_upperrate ,0 ,1 ,b.f_upperrate)) / b.UNIT_SWAP ,4),
               rebomwareid(a.i_base_ware_id , a.i_base_wareunit_id) ,
               'BOM物品',
               a.c_type
               ) BULK COLLECT into vt
          from (select * from VIEW_PROD_WAREBOMSUB
               where i_prod_warebom_id = bomid) a
         inner join VIEW_PROD_WAREBOM b
            on a.i_prod_warebom_id = b.id;
    end ;end if;
    return vt;
end;
/

prompt 结束创建 根据物品返回相应的BOM子表物品信息包括用料信息
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 根据物品返回相应的BOM子表物品信息包括用料信息包含替换物品$$$
drop function FUNC_BOMSUBANDREPLACEWARE
/
create or replace function FUNC_BOMSUBANDREPLACEWARE(iwareid integer ,
                                           iwareunitid integer ,
                                           produnum number ,
                                           swapnum number ,
                                           ilevel integer) return type_bomsubware_table as
  vt type_bomsubware_table;

begin
  select type_bomsubware_object(id,
                                i_prod_warebom_id,
                                I_ACQUIREWARESTOCK,
                                i_base_ware_id,
                                i_base_wareunit_id,
                                warename,
                                UNIT_LAYOUT,
                                UNIT_NAME,
                                UNIT_SWAP,
                                c_aliascode,
                                n_batchcount,
                                f_requirement,
                                f_attritionrate,
                                f_upperrate,
                                f_lowrate,
                                ilevel,
                                N_REQUIREMENT,
                                N_UPPERRATE,
                                N_LOWRATE,
                                I_BOMID,
                                C_WARETYPE,
                                C_TYPE) BULK COLLECT
    into vt
    from (select *
            from table(func_bomsubware(iwareid,
                                       iwareunitid,
                                       produnum,
                                       swapnum,
                                       ilevel))
          union all
          select a.ID,
                 a.I_PROD_WAREBOM_ID,
                 b.I_DES_ACQUIREWARESTOCK,
                 b.i_desware_id,
                 b.i_destinationwareunit_id,
                 b.c_deswarename WARENAME,
                 b.c_desUNIT_LAYOUT UNIT_LAYOUT,
                 b.c_desUNIT_NAME UNIT_NAME,
                 b.i_desUNIT_SWAP UNIT_SWAP,
                 b.c_des_aliascode C_ALIASCODE,
                 b.N_DES_BATCHCOUNT N_BATCHCOUNT,
                 a.F_REQUIREMENT * a.UNIT_SWAP / b.i_sourceUNIT_SWAP /
                 b.n_num,
                 a.F_ATTRITIONRATE,
                 a.F_UPPERRATE,
                 a.F_LOWRATE,
                 a.I_LEVEL,
                 round(a.N_REQUIREMENT * a.UNIT_SWAP / b.i_sourceUNIT_SWAP /
                       b.n_num,
                       4) N_REQUIREMENT,
                 round(a.N_UPPERRATE * a.UNIT_SWAP / b.i_sourceUNIT_SWAP /
                       b.n_num,
                       4) N_UPPERRATE,
                 round(a.N_LOWRATE * a.UNIT_SWAP / b.i_sourceUNIT_SWAP /
                       b.n_num,
                       4) N_LOWRATE,
                 0 I_BOMID,
                 '替换物品' C_WARETYPE,
                 a.C_TYPE
            from table(func_bomsubware(iwareid,
                                       iwareunitid,
                                       produnum,
                                       swapnum,
                                       ilevel)) a
           inner join VIEW_PROD_BOMWAREREPLACE b
              on a.i_base_ware_id = b.i_sourceware_id);

  return vt;
end;
/

prompt 结束创建 根据物品返回相应的BOM子表物品信息包括用料信息包含替换物品
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 根据物品BOM信息返回单步生产需要领料信息子函数 $$$
drop function FUNC_BOMSTEPWARESUB
/
create or replace function FUNC_BOMSTEPWARESUB(iwareid integer ,
                                           iwareunitid integer ,
                                           produnum number ,
                                           swapnum number ,
                                           ilevel integer) return type_bomsubware_table
                                            as
    vt type_bomsubware_table :=type_bomsubware_table() ;
    vtsub type_bomsubware_table;
    i integer;
    j integer;
    cursor mycursors
    is
    select * from table(FUNC_BOMSUBWARE(iwareid,iwareunitid,produnum,swapnum,ilevel));
    myrow mycursors%rowtype;

begin
    if ( ilevel >=100 ) then begin
      return vt ;
    end ; end if;
    open mycursors;
         loop
           fetch mycursors into myrow;
           exit when mycursors%notfound;

                vtsub := null;
                if ilevel =0 then begin
                    if (myrow.c_type ='加工' ) and (myrow.i_bomid<>0) then begin
                       vtsub := FUNC_BOMSTEPWARESUB(
                                     myrow.i_base_ware_id,
                                     myrow.i_base_wareunit_id,
                                     myrow.n_Requirement,
                                     myrow.unit_swap,
                                     ilevel+1 );
                    end ; end if;
                end ; else begin
                    if (myrow.i_bomid<>0) then begin
                       vtsub := FUNC_BOMSTEPWARESUB(
                                     myrow.i_base_ware_id,
                                     myrow.i_base_wareunit_id,
                                     myrow.n_Requirement,
                                     myrow.unit_swap,
                                     ilevel+1 );
                    end ; end if;
                end; end if;
                if (vtsub is null) or (vtsub.count<=0) then begin
                    i := vt.count +1;
                    vt.extend;
                    vt(i) := type_bomsubware_object(myrow.id,
                                                 myrow.i_prod_warebom_id,
                                                 myrow.i_acquirewarestock,
                                                 myrow.i_base_ware_id,
                                                 myrow.i_base_wareunit_id,
                                                 myrow.warename,
                                                 myrow.unit_layout,
                                                 myrow.unit_name,
                                                 myrow.unit_swap,
                                                 myrow.c_aliascode,
                                                 myrow.n_batchcount,
                                                 myrow.f_requirement,
                                                 myrow.f_attritionrate,
                                                 myrow.f_upperrate,
                                                 myrow.f_lowrate,
                                                 myrow.i_level,
                                                 myrow.n_requirement,
                                                 myrow.n_upperrate,
                                                 myrow.n_lowrate,
                                                 myrow.i_bomid,
                                                 myrow.c_waretype,
                                                 myrow.c_type);
                end ; else begin
                    j := 1;
                    while j <= vtsub.count  loop
                        i := vt.count +1;
                        vt.extend;
                        vt(i) := vtsub(j);
                        j := j+1;
                    end loop;
                end ; end if;
         end loop;
    close mycursors;
    return vt;
end;
/

prompt 结束创建 根据物品BOM信息返回单步生产需要领料信息子函数
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 根据物品BOM信息返回单步生产需要领料信息函数 $$$
drop function FUNC_BOMSTEPWARE
/
create or replace function FUNC_BOMSTEPWARE(iwareid integer ,
                                           iwareunitid integer ,
                                           produnum number ,
                                           swapnum number ,
                                           ilevel integer) return type_bomsubware_table as
begin
    return FUNC_BOMSTEPWARESUB(iwareid ,iwareunitid , produnum , swapnum ,0 );
end;
/

prompt 结束创建 根据物品BOM信息返回单步生产需要领料信息函数
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建  根据物品BOM信息返回单步生产领料信息函数包括替换物$$$
drop function FUNC_BOMSTEPWAREANDREPLACE
/
create or replace function FUNC_BOMSTEPWAREANDREPLACE(iwareid integer ,
                                           iwareunitid integer ,  
                                           produnum number , 
                                           swapnum number , 
                                           ilevel integer) return type_bomsubware_table as
 vt type_bomsubware_table;

begin
  select type_bomsubware_object(id,
                                i_prod_warebom_id,
                                I_ACQUIREWARESTOCK,
                                i_base_ware_id,
                                i_base_wareunit_id,
                                warename,
                                UNIT_LAYOUT,
                                UNIT_NAME,
                                UNIT_SWAP,
                                c_aliascode,
                                n_batchcount,
                                f_requirement,
                                f_attritionrate,
                                f_upperrate,
                                f_lowrate,
                                ilevel,
                                N_REQUIREMENT,
                                N_UPPERRATE,
                                N_LOWRATE,
                                I_BOMID,
                                C_WARETYPE,
                                C_TYPE ) BULK COLLECT
    into vt
    from (select *
            from table(FUNC_BOMSTEPWARE(iwareid,
                                       iwareunitid,
                                       produnum,
                                       swapnum,
                                       ilevel))
          union all
          select a.ID,
                 a.I_PROD_WAREBOM_ID,
                 b.I_DES_ACQUIREWARESTOCK,
                 b.i_desware_id,
                 b.i_destinationwareunit_id,
                 b.c_deswarename WARENAME,
                 b.c_desUNIT_LAYOUT UNIT_LAYOUT,
                 b.c_desUNIT_NAME UNIT_NAME,
                 b.i_desUNIT_SWAP UNIT_SWAP,
                 b.c_des_aliascode C_ALIASCODE,
                 b.N_DES_BATCHCOUNT N_BATCHCOUNT,
                 a.F_REQUIREMENT * a.UNIT_SWAP / b.i_sourceUNIT_SWAP /
                 b.n_num,
                 a.F_ATTRITIONRATE,
                 a.F_UPPERRATE,
                 a.F_LOWRATE,
                 a.I_LEVEL,
                 round(a.N_REQUIREMENT * a.UNIT_SWAP / b.i_sourceUNIT_SWAP /
                       b.n_num,
                       4) N_REQUIREMENT,
                 round(a.N_UPPERRATE * a.UNIT_SWAP / b.i_sourceUNIT_SWAP /
                       b.n_num,
                       4) N_UPPERRATE,
                 round(a.N_LOWRATE * a.UNIT_SWAP / b.i_sourceUNIT_SWAP /
                       b.n_num,
                       4) N_LOWRATE,
                 0 I_BOMID,
                 '替换物品' C_WARETYPE,
                 '领料' C_TYPE
            from table(FUNC_BOMSTEPWARE(iwareid,
                                       iwareunitid,
                                       produnum,
                                       swapnum,
                                       ilevel)) a
           inner join VIEW_PROD_BOMWAREREPLACE b
              on a.i_base_ware_id = b.i_sourceware_id);

  return vt;
end;
/

prompt 结束创建 根据物品BOM信息返回单步生产领料信息函数包括替换物
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建  根据物品BOM信息返回所有需要的原材料子函数$$$
drop function FUNC_BOMACQUIREWARESUB
/
create or replace function FUNC_BOMACQUIREWARESUB(iwareid integer ,
                                           iwareunitid integer ,
                                           produnum number ,
                                           swapnum number ,
                                           ilevel integer) return type_bomsubware_table
                                            as
    vt type_bomsubware_table :=type_bomsubware_table() ;
    vtsub type_bomsubware_table;
    i integer;
    j integer;
    cursor mycursors
    is
    select * from table(FUNC_BOMSUBWARE(iwareid,iwareunitid,produnum,swapnum,ilevel));
    myrow mycursors%rowtype;

begin
    if ( ilevel >=100 ) then begin
      return vt ;
    end ; end if;
    open mycursors;
         loop
           fetch mycursors into myrow;
           exit when mycursors%notfound;
                vtsub := null;
                if (myrow.i_bomid<>0) then begin
                   vtsub :=  FUNC_BOMACQUIREWARESUB(myrow.i_base_ware_id,
                                     myrow.i_base_wareunit_id,
                                     myrow.n_Requirement,
                                     myrow.unit_swap,
                                     ilevel+1 );                        
                end ; end if;
                if (vtsub is null) or (vtsub.count<=0) then begin
                    i := vt.count +1;
                    vt.extend;
                    vt(i) := type_bomsubware_object(myrow.id,
                                                 myrow.i_prod_warebom_id,
                                                 myrow.i_acquirewarestock,
                                                 myrow.i_base_ware_id,
                                                 myrow.i_base_wareunit_id,
                                                 myrow.warename,
                                                 myrow.unit_layout,
                                                 myrow.unit_name,
                                                 myrow.unit_swap,
                                                 myrow.c_aliascode,
                                                 myrow.n_batchcount,
                                                 myrow.f_requirement,
                                                 myrow.f_attritionrate,
                                                 myrow.f_upperrate,
                                                 myrow.f_lowrate,
                                                 myrow.i_level,
                                                 myrow.n_requirement,
                                                 myrow.n_upperrate,
                                                 myrow.n_lowrate,
                                                 myrow.i_bomid,
                                                 myrow.c_waretype,
                                                 myrow.c_type);
                end ; else begin
                    j := 1;
                    while j <= vtsub.count  loop
                        i := vt.count +1;
                        vt.extend;
                        vt(i) := vtsub(j);
                        j := j+1;
                    end loop;
                end ; end if;
         end loop;
    close mycursors;
    return vt;
end;
/

prompt 结束创建 根据物品BOM信息返回所有需要的原材料子函数
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 根据物品BOM信息返回所有需要的原材料 $$$
drop function FUNC_BOMACQUIREWARE
/
create or replace function FUNC_BOMACQUIREWARE(iwareid integer ,
                                           iwareunitid integer ,
                                           produnum number ,
                                           swapnum number ,
                                           ilevel integer) return type_bomsubware_table as
begin
    return FUNC_BOMACQUIREWARESUB(iwareid ,iwareunitid , produnum , swapnum ,0 );
end;
/

prompt 结束创建 根据物品BOM信息返回所有需要的原材料
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 根据物品BOM信息返回所有需要生产的中间体子函数 $$$
drop function FUNC_BOMMAKEWARESUB
/
create or replace function FUNC_BOMMAKEWARESUB(iwareid integer ,
                                           iwareunitid integer ,
                                           produnum number ,
                                           swapnum number ,
                                           ilevel integer) return type_bomsubware_table
                                            as

    vt type_bomsubware_table :=type_bomsubware_table() ;
    vtsub type_bomsubware_table;
    i integer;
    j integer;
    
    type warecursor is ref cursor;
    mywarecursor warecursor ;
    myware view_wareall%rowtype;
    
    cursor mycursors
    is
    select * from table(FUNC_BOMSUBWARE(iwareid,iwareunitid,produnum,swapnum,ilevel));
    myrow mycursors%rowtype;

begin
    if ( ilevel >=100 ) then begin
      return vt ;
    end ; end if;
    open mycursors;
         loop
            fetch mycursors into myrow;
            exit when mycursors%notfound;
            vtsub := null;
            if (myrow.i_bomid<>0) and (myrow.c_type !='加工') then begin
                i := vt.count +1;
                vt.extend;
                vt(i) := type_bomsubware_object(myrow.id,
                                         myrow.i_prod_warebom_id,
                                         myrow.i_acquirewarestock,
                                         myrow.i_base_ware_id,
                                         myrow.i_base_wareunit_id,
                                         myrow.warename,
                                         myrow.unit_layout,
                                         myrow.unit_name,
                                         myrow.unit_swap,
                                         myrow.c_aliascode,
                                         myrow.n_batchcount,
                                         myrow.f_requirement,
                                         myrow.f_attritionrate,
                                         myrow.f_upperrate,
                                         myrow.f_lowrate,
                                         myrow.i_level,
                                         myrow.n_requirement,
                                         myrow.n_upperrate,
                                         myrow.n_lowrate,
                                         myrow.i_bomid,
                                         myrow.c_waretype,
                                         myrow.c_type);
                vtsub := FUNC_BOMMAKEWARESUB(
                                       myrow.i_base_ware_id,
                                       myrow.i_base_wareunit_id,
                                       myrow.n_Requirement,
                                       myrow.unit_swap,
                                       ilevel+1 );  
                if (vtsub is not null) or (vtsub.count<=0) then begin
                    j := 1;
                    while j <= vtsub.count  loop
                        i := vt.count +1;
                        vt.extend;
                        vt(i) := vtsub(j);
                        j := j+1;
                    end loop;
                end ; end if;                                                                                            
            end ; end if;
         end loop;
    close mycursors;
    
    if (ilevel= 0 ) then begin
       open mywarecursor for select * from view_wareall a where a.UNIT_ID = iwareunitid;
            loop
                fetch mywarecursor into myware;
                exit when mywarecursor%notfound;  
                i := vt.count +1;
                vt.extend;
                vt(i) := type_bomsubware_object(0 ,--myrow.id,
                                             0,--myrow.i_prod_warebom_id,
                                             0,--myrow.i_acquirewarestock,
                                             iwareid,--myrow.i_base_ware_id,
                                             iwareunitid,--myrow.i_base_wareunit_id,
                                             myware.c_name,-- myrow.warename,
                                             myware.unit_layout,-- myrow.unit_layout,
                                             myware.unit_name,-- myrow.unit_name,
                                             myware.unit_swap,-- myrow.unit_swap,
                                             myware.c_aliascode, --myrow.c_aliascode,
                                             myware.n_batchcount, -- myrow.n_batchcount,
                                             produnum,--myrow.f_requirement,
                                             0,--myrow.f_attritionrate,
                                             0,--myrow.f_upperrate,
                                             0,--myrow.f_lowrate,
                                             0,--myrow.i_level,
                                             produnum,--myrow.n_requirement,
                                             produnum,--myrow.n_upperrate,
                                             produnum,--myrow.n_lowrate,
                                             0,--myrow.i_bomid,
                                             'BOM物品',--myrow.c_waretype,
                                             '加工' );--myrow.c_type);    
           exit;                                                                                                                                                 
       end loop;                                    
       close mywarecursor;       
    end ; end if;  
    
    return vt;
end;
/

prompt 结束创建 根据物品BOM信息返回所有需要生产的中间体子函数
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建  根据物品BOM信息返回所有需要生产的中间体$$$
drop function FUNC_BOMMAKEWARE
/
create or replace function FUNC_BOMMAKEWARE(iwareid integer ,
                                           iwareunitid integer ,
                                           produnum number ,
                                           swapnum number ,
                                           ilevel integer) return type_bomsubware_table as
begin
    return FUNC_BOMMAKEWARESUB(iwareid ,iwareunitid , produnum , swapnum ,0 );
end;
/
prompt 结束创建 根据物品BOM信息返回所有需要生产的中间体
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 根据物品BOM主表生成物料信息 $$$
drop function FUNC_BOMSTEPWAREBOMID
/
create or replace function FUNC_BOMSTEPWAREBOMID(iwareid integer ,
                                           iwareunitid integer ,
                                           produnum number ,
                                           swapnum number ,
                                           ilevel integer) return type_bomsubware_table deterministic as
vt type_bomsubware_table;
begin
    select type_bomsubware_object(
              a.ID ,
              a.I_PROD_WAREBOM_ID  , 
              a.I_ACQUIREWARESTOCK   ,                                     
              a.I_BASE_WARE_ID ,                                     
              a.I_BASE_WAREUNIT_ID ,
              a.WARENAME,
              a.UNIT_LAYOUT ,
              a.UNIT_NAME ,
              a.UNIT_SWAP ,
              a.C_ALIASCODE ,
              a.N_BATCHCOUNT ,    
              a.F_REQUIREMENT ,                 
              a.F_ATTRITIONRATE ,           
              a.F_UPPERRATE ,            
              a.F_LOWRATE ,          
              ilevel,                                                           
              a.N_REQUIREMENT,  
              a.N_UPPERRATE,     
              a.N_LOWRATE ,       
              a.I_BOMID    ,          
              a.C_WARETYPE ,     
              a.C_TYPE 
           ) bulk collect into vt
      from table(FUNC_BOMSTEPWARESUB(iwareid,
                                     iwareunitid,
                                     produnum,
                                     swapnum,
                                     0)) a;
     return vt;                                                                     
end;
/
prompt 结束创建 根据物品BOM主表生成物料信息
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 返回业务单据名称 $$$
drop function FUNC_RETNAME
/

create or replace function FUNC_RETNAME(strtablename varchar2 , strtableid integer) return varchar2 is
Result varchar2(500);
rc integer;
str varchar2(500);
type cur_type is ref cursor;
mycursors cur_type ;
n integer;
begin
  Result :='';
  rc := 0;
  select nvl(count(1),0) into rc from user_col_comments
         where table_name = ''||upper(strtablename)||''
         and column_name='C_NAME' ;
  if rc >0 then begin
     str:='select C_NAME from '
                  ||strtablename
                  ||' where id ='||to_char(nvl(strtableid,0));
  open mycursors for str;
    loop
      fetch mycursors into Result ;
      exit when mycursors%notfound;
    end loop;
  close mycursors;
  end; end if ;

  return Result;
end FUNC_RETNAME;
/
prompt 结束创建 返回业务单据名称
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 返回使用的科目与辅助核算 $$$
drop function FUNC_NF_SUBJECT
/
create or replace function FUNC_NF_SUBJECT(account_id integer,
                                          startdate  date,
                                          enddate    date) return type_subject_table as
  vt         type_subject_table;
begin


  select type_subject_object (
                         a.c_subject,
                         a.c_auxiliary1,
                         a.c_auxiliary2,
                         a.c_auxiliary3,
                         a.c_auxiliary4,
                         a.c_auxiliary5,
                         a.c_auxiliary6,
                         a.c_auxiliary7,
                         a.c_auxiliary8,
                         a.c_auxiliary9,
                         a.c_auxiliary10,
                         a.c_auxiliary11,
                         a.c_auxiliary12,
                         a.c_auxiliary13,
                         a.c_auxiliary14,
                         a.c_auxiliary15,
                         a.c_auxiliary16,
                         a.c_auxiliary17,
                         a.c_auxiliary18,
                         a.c_auxiliary19,
                         a.c_auxiliary20,
                         a.c_bankcode,
                         a.c_bankname,
         decode(upper(a.c_auxiliary1) ,'CNULL' ,'' ,a.c_auxiliary1)
         || decode(upper(a.c_auxiliary2) ,'CNULL' ,'' ,'*' || a.c_auxiliary2)
         || decode(upper(a.c_auxiliary3) ,'CNULL' ,'' ,'*' || a.c_auxiliary3)
         || decode(upper(a.c_auxiliary4) ,'CNULL' ,'' ,'*' || a.c_auxiliary4)
         || decode(upper(a.c_auxiliary5) ,'CNULL' ,'' ,'*' || a.c_auxiliary5)
         || decode(upper(a.c_auxiliary6) ,'CNULL' ,'' ,'*' || a.c_auxiliary6)
         || decode(upper(a.c_auxiliary7) ,'CNULL' ,'' ,'*' || a.c_auxiliary7)
         || decode(upper(a.c_auxiliary8) ,'CNULL' ,'' ,'*' || a.c_auxiliary8)
         || decode(upper(a.c_auxiliary9) ,'CNULL' ,'' ,'*' || a.c_auxiliary9)
         || decode(upper(a.c_auxiliary10) ,'CNULL' ,'' ,'*' || a.c_auxiliary10)
         || decode(upper(a.c_auxiliary11) ,'CNULL' ,'' ,'*' || a.c_auxiliary11)
         || decode(upper(a.c_auxiliary12) ,'CNULL' ,'' ,'*' || a.c_auxiliary12)
         || decode(upper(a.c_auxiliary13) ,'CNULL' ,'' ,'*' || a.c_auxiliary13)
         || decode(upper(a.c_auxiliary14) ,'CNULL' ,'' ,'*' || a.c_auxiliary14)
         || decode(upper(a.c_auxiliary15) ,'CNULL' ,'' ,'*' || a.c_auxiliary15)
         || decode(upper(a.c_auxiliary16) ,'CNULL' ,'' ,'*' || a.c_auxiliary16)
         || decode(upper(a.c_auxiliary17) ,'CNULL' ,'' ,'*' || a.c_auxiliary17)
         || decode(upper(a.c_auxiliary18) ,'CNULL' ,'' ,'*' || a.c_auxiliary18)
         || decode(upper(a.c_auxiliary19) ,'CNULL' ,'' ,'*' || a.c_auxiliary19)
         || decode(upper(a.c_auxiliary20) ,'CNULL' ,'' ,'*' || a.c_auxiliary20)
         || decode(upper(a.c_bankcode) ,'CNULL' ,'' ,'*' || a.c_bankcode)
         || decode(upper(a.c_bankname) ,'CNULL' ,'' ,'*' || a.c_bankname ) ,rownum )

         bulk collect into vt

    from /*1************************************************************************************************************/
         (select c_subject,
                 c_auxiliary1,
                 c_auxiliary2,
                 c_auxiliary3,
                 c_auxiliary4,
                 c_auxiliary5,
                 c_auxiliary6,
                 c_auxiliary7,
                 c_auxiliary8,
                 c_auxiliary9,
                 c_auxiliary10,
                 c_auxiliary11,
                 c_auxiliary12,
                 c_auxiliary13,
                 c_auxiliary14,
                 c_auxiliary15,
                 c_auxiliary16,
                 c_auxiliary17,
                 c_auxiliary18,
                 c_auxiliary19,
                 c_auxiliary20,
                 c_bankcode,
                 c_bankname
            from (select c_subject,
                         c_auxiliary1,
                         c_auxiliary2,
                         c_auxiliary3,
                         c_auxiliary4,
                         c_auxiliary5,
                         c_auxiliary6,
                         c_auxiliary7,
                         c_auxiliary8,
                         c_auxiliary9,
                         c_auxiliary10,
                         c_auxiliary11,
                         c_auxiliary12,
                         c_auxiliary13,
                         c_auxiliary14,
                         c_auxiliary15,
                         c_auxiliary16,
                         c_auxiliary17,
                         c_auxiliary18,
                         c_auxiliary19,
                         c_auxiliary20,
                         c_bankcode,
                         c_bankname
                    from NF_GENERALLEDGER
                   where i_nf_account_id = account_id
                   group by c_subject,
                            c_auxiliary1,
                            c_auxiliary2,
                            c_auxiliary3,
                            c_auxiliary4,
                            c_auxiliary5,
                            c_auxiliary6,
                            c_auxiliary7,
                            c_auxiliary8,
                            c_auxiliary9,
                            c_auxiliary10,
                            c_auxiliary11,
                            c_auxiliary12,
                            c_auxiliary13,
                            c_auxiliary14,
                            c_auxiliary15,
                            c_auxiliary16,
                            c_auxiliary17,
                            c_auxiliary18,
                            c_auxiliary19,
                            c_auxiliary20,
                            c_bankcode,
                            c_bankname
                  union all
                  select a.c_subject,
                         a.c_auxiliary1,
                         a.c_auxiliary2,
                         a.c_auxiliary3,
                         a.c_auxiliary4,
                         a.c_auxiliary5,
                         a.c_auxiliary6,
                         a.c_auxiliary7,
                         a.c_auxiliary8,
                         a.c_auxiliary9,
                         a.c_auxiliary10,
                         a.c_auxiliary11,
                         a.c_auxiliary12,
                         a.c_auxiliary13,
                         a.c_auxiliary14,
                         a.c_auxiliary15,
                         a.c_auxiliary16,
                         a.c_auxiliary17,
                         a.c_auxiliary18,
                         a.c_auxiliary19,
                         a.c_auxiliary20,
                         a.c_bankcode,
                         a.c_bankname
                    from NF_VOUCHERSUB a
                   inner join NF_VOUCHER b
                      on a.i_nf_voucher_id = b.id
                   where b.i_del <> 1
                     and b.i_nf_account_id = account_id
                     and b.I_ACCOUNT = 1
                     and trunc(b.d_date) <= enddate
                   group by a.c_subject,
                            a.c_auxiliary1,
                            a.c_auxiliary2,
                            a.c_auxiliary3,
                            a.c_auxiliary4,
                            a.c_auxiliary5,
                            a.c_auxiliary6,
                            a.c_auxiliary7,
                            a.c_auxiliary8,
                            a.c_auxiliary9,
                            a.c_auxiliary10,
                            a.c_auxiliary11,
                            a.c_auxiliary12,
                            a.c_auxiliary13,
                            a.c_auxiliary14,
                            a.c_auxiliary15,
                            a.c_auxiliary16,
                            a.c_auxiliary17,
                            a.c_auxiliary18,
                            a.c_auxiliary19,
                            a.c_auxiliary20,
                            a.c_bankcode,
                            a.c_bankname)
           group by c_subject,
                    c_auxiliary1,
                    c_auxiliary2,
                    c_auxiliary3,
                    c_auxiliary4,
                    c_auxiliary5,
                    c_auxiliary6,
                    c_auxiliary7,
                    c_auxiliary8,
                    c_auxiliary9,
                    c_auxiliary10,
                    c_auxiliary11,
                    c_auxiliary12,
                    c_auxiliary13,
                    c_auxiliary14,
                    c_auxiliary15,
                    c_auxiliary16,
                    c_auxiliary17,
                    c_auxiliary18,
                    c_auxiliary19,
                    c_auxiliary20,
                    c_bankcode,
                    c_bankname) a;

  RETURN vt;
end;
/

prompt 结束创建 返回使用的科目与辅助核算
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建  总账查询$$$
drop function FUNC_NF_LEGERDEFER
/


create or replace function FUNC_NF_LEGERDEFER(account_id integer,
                                          startdate  date,
                                          enddate    date,
                                          isShowLoss integer :=0 ) return type_leger_table as
  vt         type_leger_table;
  dstart     date; --年起初时间
  dopen      date; --开帐日期
  dInitialQC date;
  dInitialLJ date;
  dEndLj     date;
  vic        integer := 0;
  i_flag   integer  := -999;
begin

  dInitialQC := to_date('0001-01-01', 'yyyy-mm-dd');
  dInitialLJ := to_date('0001-01-01', 'yyyy-mm-dd');
  dEndLj     := to_date('0001-01-01', 'yyyy-mm-dd');

  if isShowLoss = 1 then 
    i_flag := 1;
  end if;

  select count(1)
    into vic
    from NF_GENERALLEDGER a
   where a.i_nf_account_id = account_id;

  if vic <= 0 then
    return vt;
  end if;

  select d_yeardate, d_nowdate
    into dstart, dopen
    from (select trunc(D_DATE+1, 'yy') d_yeardate,
                 (D_DATE+1) d_nowdate,
                 rownum abc
            from NF_GENERALLEDGER a
           where a.i_nf_account_id = account_id)
   where abc = 1;

  if (startdate = dstart) and (enddate > dopen) and (enddate >= startdate) then
    dInitialQC := dopen-1;
    dInitialLJ := to_date('0001-01-01', 'yyyy-mm-dd');
    dEndLj     := dopen-1;
  end if;

  if (startdate >= dopen) and (enddate >= dopen) and (enddate >= startdate) and(startdate != dstart) then
    dInitialQC := dopen-1;
    dInitialLJ := dopen-1;
    dEndLj     := to_date('0001-01-01', 'yyyy-mm-dd');
  end if;

  select type_leger_object (
                         a.c_subject,
                         a.c_auxiliary1,
                         a.c_auxiliary2,
                         a.c_auxiliary3,
                         a.c_auxiliary4,
                         a.c_auxiliary5,
                         a.c_auxiliary6,
                         a.c_auxiliary7,
                         a.c_auxiliary8,
                         a.c_auxiliary9,
                         a.c_auxiliary10,
                         a.c_auxiliary11,
                         a.c_auxiliary12,
                         a.c_auxiliary13,
                         a.c_auxiliary14,
                         a.c_auxiliary15,
                         a.c_auxiliary16,
                         a.c_auxiliary17,
                         a.c_auxiliary18,
                         a.c_auxiliary19,
                         a.c_auxiliary20,
                         a.c_bankcode,
                         a.c_bankname,
         g.c_name ,
         g.i_type ,
         g.c_direction ,
         a.C_MEMO,
         a.c_subject ||'-辅助核算'||to_char(a.ID),
         a.id,
         case when (count(1) over (partition by a.c_subject) =1 and a.C_MEMO is not null) then 2 else
           count(1) over (partition by a.c_subject) end ,
         case when g.c_direction ='借'
           then
             nvl(b.N_BORROWBEGINSUM, 0) + nvl(c.N_BORROWSUM, 0) + nvl(d.N_BORROWSUM, 0) -
             nvl(b.N_LENDBEGINSUM, 0) - nvl(c.N_LENDSUM, 0) - nvl(d.N_LENDSUM, 0) else 0 end ,
         case when g.c_direction ='借'
           then
             nvl(b.N_BORROWBEGINNUM, 0) + nvl(c.N_BORROWNUM, 0) + nvl(d.N_BORROWNUM, 0)  -
             nvl(b.N_LENDBEGINNUM, 0) - nvl(c.N_LENDNUM, 0) - nvl(d.N_LENDNUM, 0) else 0 end ,
         case when g.c_direction ='贷'
           then
             nvl(b.N_LENDBEGINSUM, 0) + nvl(c.N_LENDSUM, 0) + nvl(d.N_LENDSUM, 0)  -
             nvl(b.N_BORROWBEGINSUM, 0) - nvl(c.N_BORROWSUM, 0) - nvl(d.N_BORROWSUM, 0) else 0 end  ,
         case when g.c_direction ='贷'
           then
             nvl(b.N_LENDBEGINNUM, 0) + nvl(c.N_LENDNUM, 0) + nvl(d.N_LENDNUM, 0)  -
             nvl(b.N_BORROWBEGINNUM, 0) - nvl(c.N_BORROWNUM, 0) - nvl(d.N_BORROWNUM, 0)   else 0 end ,

         --nvl(b.N_BORROWBEGINSUM, 0) + nvl(c.N_BORROWSUM, 0) + nvl(d.N_BORROWSUM, 0) ,
         --nvl(b.N_BORROWBEGINNUM, 0) + nvl(c.N_BORROWNUM, 0) + nvl(d.N_BORROWNUM, 0) ,
         --nvl(b.N_LENDBEGINSUM, 0) + nvl(c.N_LENDSUM, 0) + nvl(d.N_LENDSUM, 0) ,
         --nvl(b.N_LENDBEGINNUM, 0) + nvl(c.N_LENDNUM, 0) + nvl(d.N_LENDNUM, 0) ,

         nvl(e.N_BORROWSUM, 0) + nvl(f.N_BORROWSUM, 0) ,
         nvl(e.N_BORROWNUM, 0) + nvl(f.N_BORROWNUM, 0) ,
         nvl(e.N_LENDSUM, 0) + nvl(f.N_LENDSUM, 0) ,
         nvl(e.N_LENDNUM, 0) + nvl(f.N_LENDNUM, 0) ,

         case when g.c_direction ='借'
           then
             nvl(b.N_BORROWBEGINSUM, 0) + nvl(c.N_BORROWSUM, 0) + nvl(d.N_BORROWSUM, 0) -
             nvl(b.N_LENDBEGINSUM, 0) - nvl(c.N_LENDSUM, 0) - nvl(d.N_LENDSUM, 0) +
             nvl(e.N_BORROWSUM, 0) + nvl(f.N_BORROWSUM, 0) -
             nvl(e.N_LENDSUM, 0) - nvl(f.N_LENDSUM, 0) else 0 end ,
         case when g.c_direction ='借'
           then
             nvl(b.N_BORROWBEGINNUM, 0) + nvl(c.N_BORROWNUM, 0) + nvl(d.N_BORROWNUM, 0)  -
             nvl(b.N_LENDBEGINNUM, 0) - nvl(c.N_LENDNUM, 0) - nvl(d.N_LENDNUM, 0) +
             nvl(e.N_BORROWNUM, 0) + nvl(f.N_BORROWNUM, 0) -
             nvl(e.N_LENDNUM, 0) - nvl(f.N_LENDNUM, 0)  else 0 end ,
         case when g.c_direction ='贷'
           then
             nvl(b.N_LENDBEGINSUM, 0) + nvl(c.N_LENDSUM, 0) + nvl(d.N_LENDSUM, 0)  -
             nvl(b.N_BORROWBEGINSUM, 0) - nvl(c.N_BORROWSUM, 0) - nvl(d.N_BORROWSUM, 0) +
             nvl(e.N_LENDSUM, 0) + nvl(f.N_LENDSUM, 0) -
            nvl(e.N_BORROWSUM, 0) - nvl(f.N_BORROWSUM, 0)  else 0 end  ,
         case when g.c_direction ='贷'
           then
             nvl(b.N_LENDBEGINNUM, 0) + nvl(c.N_LENDNUM, 0) + nvl(d.N_LENDNUM, 0)  -
             nvl(b.N_BORROWBEGINNUM, 0) - nvl(c.N_BORROWNUM, 0) - nvl(d.N_BORROWNUM, 0) +
             nvl(e.N_LENDNUM, 0) + nvl(f.N_LENDNUM, 0) -
            nvl(e.N_BORROWNUM, 0) - nvl(f.N_BORROWNUM, 0)  else 0 end )

            bulk collect into vt

    from /*1************************************************************************************************************/
         (select * from table(func_nf_subject(account_id ,startdate  , enddate ))) a
  /*2************************************************************************************************************/
    left join -- 总账起初
   (select c_subject,
           c_auxiliary1,
           c_auxiliary2,
           c_auxiliary3,
           c_auxiliary4,
           c_auxiliary5,
           c_auxiliary6,
           c_auxiliary7,
           c_auxiliary8,
           c_auxiliary9,
           c_auxiliary10,
           c_auxiliary11,
           c_auxiliary12,
           c_auxiliary13,
           c_auxiliary14,
           c_auxiliary15,
           c_auxiliary16,
           c_auxiliary17,
           c_auxiliary18,
           c_auxiliary19,
           c_auxiliary20,
           c_bankcode,
           c_bankname,
           sum(N_BORROWBEGINSUM) N_BORROWBEGINSUM,
           sum(N_BORROWBEGINNUM) N_BORROWBEGINNUM,
           sum(N_LENDBEGINSUM) N_LENDBEGINSUM,
           sum(N_LENDBEGINNUM) N_LENDBEGINNUM
      from NF_GENERALLEDGER
     where i_nf_account_id = account_id
       and trunc(d_date) = dInitialQC
     group by c_subject,
              c_auxiliary1,
              c_auxiliary2,
              c_auxiliary3,
              c_auxiliary4,
              c_auxiliary5,
              c_auxiliary6,
              c_auxiliary7,
              c_auxiliary8,
              c_auxiliary9,
              c_auxiliary10,
              c_auxiliary11,
              c_auxiliary12,
              c_auxiliary13,
              c_auxiliary14,
              c_auxiliary15,
              c_auxiliary16,
              c_auxiliary17,
              c_auxiliary18,
              c_auxiliary19,
              c_auxiliary20,
              c_bankcode,
              c_bankname) b
      on a.c_subject = b.c_subject
     and a.c_auxiliary1 = b.c_auxiliary1
     and a.c_auxiliary2 = b.c_auxiliary2
     and a.c_auxiliary3 = b.c_auxiliary3
     and a.c_auxiliary4 = b.c_auxiliary4
     and a.c_auxiliary5 = b.c_auxiliary5
     and a.c_auxiliary6 = b.c_auxiliary6
     and a.c_auxiliary7 = b.c_auxiliary7
     and a.c_auxiliary8 = b.c_auxiliary8
     and a.c_auxiliary9 = b.c_auxiliary9
     and a.c_auxiliary10 = b.c_auxiliary10
     and a.c_auxiliary11 = b.c_auxiliary11
     and a.c_auxiliary12 = b.c_auxiliary12
     and a.c_auxiliary13 = b.c_auxiliary13
     and a.c_auxiliary14 = b.c_auxiliary14
     and a.c_auxiliary15 = b.c_auxiliary15
     and a.c_auxiliary16 = b.c_auxiliary16
     and a.c_auxiliary17 = b.c_auxiliary17
     and a.c_auxiliary18 = b.c_auxiliary18
     and a.c_auxiliary19 = b.c_auxiliary19
     and a.c_auxiliary20 = b.c_auxiliary20
     and a.c_bankcode = b.c_bankcode
     and a.c_bankname = b.c_bankname
    left join -- 总账累计
  /*3************************************************************************************************************/
   (select c_subject,
           c_auxiliary1,
           c_auxiliary2,
           c_auxiliary3,
           c_auxiliary4,
           c_auxiliary5,
           c_auxiliary6,
           c_auxiliary7,
           c_auxiliary8,
           c_auxiliary9,
           c_auxiliary10,
           c_auxiliary11,
           c_auxiliary12,
           c_auxiliary13,
           c_auxiliary14,
           c_auxiliary15,
           c_auxiliary16,
           c_auxiliary17,
           c_auxiliary18,
           c_auxiliary19,
           c_auxiliary20,
           c_bankcode,
           c_bankname,
           sum(N_BORROWSUM) N_BORROWSUM,
           sum(N_BORROWNUM) N_BORROWNUM,
           sum(N_LENDSUM) N_LENDSUM,
           sum(N_LENDNUM) N_LENDNUM
      from NF_GENERALLEDGER
     where i_nf_account_id = account_id
       and trunc(d_date) = dInitialLJ
     group by c_subject,
              c_auxiliary1,
              c_auxiliary2,
              c_auxiliary3,
              c_auxiliary4,
              c_auxiliary5,
              c_auxiliary6,
              c_auxiliary7,
              c_auxiliary8,
              c_auxiliary9,
              c_auxiliary10,
              c_auxiliary11,
              c_auxiliary12,
              c_auxiliary13,
              c_auxiliary14,
              c_auxiliary15,
              c_auxiliary16,
              c_auxiliary17,
              c_auxiliary18,
              c_auxiliary19,
              c_auxiliary20,
              c_bankcode,
              c_bankname) c
      on a.c_subject = c.c_subject
     and a.c_auxiliary1 = c.c_auxiliary1
     and a.c_auxiliary2 = c.c_auxiliary2
     and a.c_auxiliary3 = c.c_auxiliary3
     and a.c_auxiliary4 = c.c_auxiliary4
     and a.c_auxiliary5 = c.c_auxiliary5
     and a.c_auxiliary6 = c.c_auxiliary6
     and a.c_auxiliary7 = c.c_auxiliary7
     and a.c_auxiliary8 = c.c_auxiliary8
     and a.c_auxiliary9 = c.c_auxiliary9
     and a.c_auxiliary10 = c.c_auxiliary10
     and a.c_auxiliary11 = c.c_auxiliary11
     and a.c_auxiliary12 = c.c_auxiliary12
     and a.c_auxiliary13 = c.c_auxiliary13
     and a.c_auxiliary14 = c.c_auxiliary14
     and a.c_auxiliary15 = c.c_auxiliary15
     and a.c_auxiliary16 = c.c_auxiliary16
     and a.c_auxiliary17 = c.c_auxiliary17
     and a.c_auxiliary18 = c.c_auxiliary18
     and a.c_auxiliary19 = c.c_auxiliary19
     and a.c_auxiliary20 = c.c_auxiliary20
     and a.c_bankcode = c.c_bankcode
     and a.c_bankname = c.c_bankname
  /*4************************************************************************************************************/
  --凭证起初
    left join (select a.c_subject,
                      a.c_auxiliary1,
                      a.c_auxiliary2,
                      a.c_auxiliary3,
                      a.c_auxiliary4,
                      a.c_auxiliary5,
                      a.c_auxiliary6,
                      a.c_auxiliary7,
                      a.c_auxiliary8,
                      a.c_auxiliary9,
                      a.c_auxiliary10,
                      a.c_auxiliary11,
                      a.c_auxiliary12,
                      a.c_auxiliary13,
                      a.c_auxiliary14,
                      a.c_auxiliary15,
                      a.c_auxiliary16,
                      a.c_auxiliary17,
                      a.c_auxiliary18,
                      a.c_auxiliary19,
                      a.c_auxiliary20,
                      a.c_bankcode,
                      a.c_bankname,
                      sum(N_BORROWSUM) N_BORROWSUM,
                      sum(N_BORROWNUM) N_BORROWNUM,
                      sum(N_LENDSUM) N_LENDSUM,
                      sum(N_LENDNUM) N_LENDNUM
                 from NF_VOUCHERSUB a
                inner join NF_VOUCHER b
                   on a.i_nf_voucher_id = b.id
                where b.i_del <> 1
                  and b.i_nf_account_id = account_id
                  and b.I_ACCOUNT = 1
                  and trunc(b.d_date) < startdate
                group by a.c_subject,
                         a.c_auxiliary1,
                         a.c_auxiliary2,
                         a.c_auxiliary3,
                         a.c_auxiliary4,
                         a.c_auxiliary5,
                         a.c_auxiliary6,
                         a.c_auxiliary7,
                         a.c_auxiliary8,
                         a.c_auxiliary9,
                         a.c_auxiliary10,
                         a.c_auxiliary11,
                         a.c_auxiliary12,
                         a.c_auxiliary13,
                         a.c_auxiliary14,
                         a.c_auxiliary15,
                         a.c_auxiliary16,
                         a.c_auxiliary17,
                         a.c_auxiliary18,
                         a.c_auxiliary19,
                         a.c_auxiliary20,
                         a.c_bankcode,
                         a.c_bankname) d
      on a.c_subject = d.c_subject
     and a.c_auxiliary1 = d.c_auxiliary1
     and a.c_auxiliary2 = d.c_auxiliary2
     and a.c_auxiliary3 = d.c_auxiliary3
     and a.c_auxiliary4 = d.c_auxiliary4
     and a.c_auxiliary5 = d.c_auxiliary5
     and a.c_auxiliary6 = d.c_auxiliary6
     and a.c_auxiliary7 = d.c_auxiliary7
     and a.c_auxiliary8 = d.c_auxiliary8
     and a.c_auxiliary9 = d.c_auxiliary9
     and a.c_auxiliary10 = d.c_auxiliary10
     and a.c_auxiliary11 = d.c_auxiliary11
     and a.c_auxiliary12 = d.c_auxiliary12
     and a.c_auxiliary13 = d.c_auxiliary13
     and a.c_auxiliary14 = d.c_auxiliary14
     and a.c_auxiliary15 = d.c_auxiliary15
     and a.c_auxiliary16 = d.c_auxiliary16
     and a.c_auxiliary17 = d.c_auxiliary17
     and a.c_auxiliary18 = d.c_auxiliary18
     and a.c_auxiliary19 = d.c_auxiliary19
     and a.c_auxiliary20 = d.c_auxiliary20
     and a.c_bankcode = d.c_bankcode
     and a.c_bankname = d.c_bankname
  /*5************************************************************************************************************/
  --总账累计
    left join (select c_subject,
                      c_auxiliary1,
                      c_auxiliary2,
                      c_auxiliary3,
                      c_auxiliary4,
                      c_auxiliary5,
                      c_auxiliary6,
                      c_auxiliary7,
                      c_auxiliary8,
                      c_auxiliary9,
                      c_auxiliary10,
                      c_auxiliary11,
                      c_auxiliary12,
                      c_auxiliary13,
                      c_auxiliary14,
                      c_auxiliary15,
                      c_auxiliary16,
                      c_auxiliary17,
                      c_auxiliary18,
                      c_auxiliary19,
                      c_auxiliary20,
                      c_bankcode,
                      c_bankname,
                      sum(N_BORROWSUM) N_BORROWSUM,
                      sum(N_BORROWNUM) N_BORROWNUM,
                      sum(N_LENDSUM) N_LENDSUM,
                      sum(N_LENDNUM) N_LENDNUM
                 from NF_GENERALLEDGER
                where i_nf_account_id = account_id
                  and trunc(d_date) = dEndLj
                group by c_subject,
                         c_auxiliary1,
                         c_auxiliary2,
                         c_auxiliary3,
                         c_auxiliary4,
                         c_auxiliary5,
                         c_auxiliary6,
                         c_auxiliary7,
                         c_auxiliary8,
                         c_auxiliary9,
                         c_auxiliary10,
                         c_auxiliary11,
                         c_auxiliary12,
                         c_auxiliary13,
                         c_auxiliary14,
                         c_auxiliary15,
                         c_auxiliary16,
                         c_auxiliary17,
                         c_auxiliary18,
                         c_auxiliary19,
                         c_auxiliary20,
                         c_bankcode,
                         c_bankname) e
      on a.c_subject = e.c_subject
     and a.c_auxiliary1 = e.c_auxiliary1
     and a.c_auxiliary2 = e.c_auxiliary2
     and a.c_auxiliary3 = e.c_auxiliary3
     and a.c_auxiliary4 = e.c_auxiliary4
     and a.c_auxiliary5 = e.c_auxiliary5
     and a.c_auxiliary6 = e.c_auxiliary6
     and a.c_auxiliary7 = e.c_auxiliary7
     and a.c_auxiliary8 = e.c_auxiliary8
     and a.c_auxiliary9 = e.c_auxiliary9
     and a.c_auxiliary10 = e.c_auxiliary10
     and a.c_auxiliary11 = e.c_auxiliary11
     and a.c_auxiliary12 = e.c_auxiliary12
     and a.c_auxiliary13 = e.c_auxiliary13
     and a.c_auxiliary14 = e.c_auxiliary14
     and a.c_auxiliary15 = e.c_auxiliary15
     and a.c_auxiliary16 = e.c_auxiliary16
     and a.c_auxiliary17 = e.c_auxiliary17
     and a.c_auxiliary18 = e.c_auxiliary18
     and a.c_auxiliary19 = e.c_auxiliary19
     and a.c_auxiliary20 = e.c_auxiliary20
     and a.c_bankcode = e.c_bankcode
     and a.c_bankname = e.c_bankname
  /*6************************************************************************************************************/
  --凭证本期
    left join (select a.c_subject,
                      a.c_auxiliary1,
                      a.c_auxiliary2,
                      a.c_auxiliary3,
                      a.c_auxiliary4,
                      a.c_auxiliary5,
                      a.c_auxiliary6,
                      a.c_auxiliary7,
                      a.c_auxiliary8,
                      a.c_auxiliary9,
                      a.c_auxiliary10,
                      a.c_auxiliary11,
                      a.c_auxiliary12,
                      a.c_auxiliary13,
                      a.c_auxiliary14,
                      a.c_auxiliary15,
                      a.c_auxiliary16,
                      a.c_auxiliary17,
                      a.c_auxiliary18,
                      a.c_auxiliary19,
                      a.c_auxiliary20,
                      a.c_bankcode,
                      a.c_bankname,
                      sum(N_BORROWSUM) N_BORROWSUM,
                      sum(N_BORROWNUM) N_BORROWNUM,
                      sum(N_LENDSUM) N_LENDSUM,
                      sum(N_LENDNUM) N_LENDNUM
                 from NF_VOUCHERSUB a
                inner join NF_VOUCHER b
                   on a.i_nf_voucher_id = b.id
                where b.i_del <> 1
                  and b.i_nf_account_id = account_id
                  and b.I_ACCOUNT = 1
                  and b.I_LOSS <> i_flag
                  and trunc(b.d_date) between startdate and enddate
                group by a.c_subject,
                         a.c_auxiliary1,
                         a.c_auxiliary2,
                         a.c_auxiliary3,
                         a.c_auxiliary4,
                         a.c_auxiliary5,
                         a.c_auxiliary6,
                         a.c_auxiliary7,
                         a.c_auxiliary8,
                         a.c_auxiliary9,
                         a.c_auxiliary10,
                         a.c_auxiliary11,
                         a.c_auxiliary12,
                         a.c_auxiliary13,
                         a.c_auxiliary14,
                         a.c_auxiliary15,
                         a.c_auxiliary16,
                         a.c_auxiliary17,
                         a.c_auxiliary18,
                         a.c_auxiliary19,
                         a.c_auxiliary20,
                         a.c_bankcode,
                         a.c_bankname) f
      on a.c_subject = f.c_subject
     and a.c_auxiliary1 = f.c_auxiliary1
     and a.c_auxiliary2 = f.c_auxiliary2
     and a.c_auxiliary3 = f.c_auxiliary3
     and a.c_auxiliary4 = f.c_auxiliary4
     and a.c_auxiliary5 = f.c_auxiliary5
     and a.c_auxiliary6 = f.c_auxiliary6
     and a.c_auxiliary7 = f.c_auxiliary7
     and a.c_auxiliary8 = f.c_auxiliary8
     and a.c_auxiliary9 = f.c_auxiliary9
     and a.c_auxiliary10 = f.c_auxiliary10
     and a.c_auxiliary11 = f.c_auxiliary11
     and a.c_auxiliary12 = f.c_auxiliary12
     and a.c_auxiliary13 = f.c_auxiliary13
     and a.c_auxiliary14 = f.c_auxiliary14
     and a.c_auxiliary15 = f.c_auxiliary15
     and a.c_auxiliary16 = f.c_auxiliary16
     and a.c_auxiliary17 = f.c_auxiliary17
     and a.c_auxiliary18 = f.c_auxiliary18
     and a.c_auxiliary19 = f.c_auxiliary19
     and a.c_auxiliary20 = f.c_auxiliary20
     and a.c_bankcode = f.c_bankcode
     and a.c_bankname = f.c_bankname
   inner join NF_SUBJECT g
      on a.c_subject = g.c_subject
     and g.i_nf_account_id = account_id;

  RETURN vt;
end;
/

prompt 结束创建 总账查询
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建  科目总账查询$$$
drop function FUNC_NF_LEGERDEFERINFO
/


create or replace function FUNC_NF_LEGERDEFERINFO(account_id integer,
                                          startdate  date,
                                          enddate    date ,
                                          isShowLoss integer :=0 ) return type_leger_table as
  vt         type_leger_table ;
  cursor mycursor  is
  select * from view_nf_subjectsetup order by id;
  row1  view_nf_subjectsetup%rowtype;
  row2  view_nf_subjectsetup%rowtype;
  row3  view_nf_subjectsetup%rowtype;
  row4  view_nf_subjectsetup%rowtype;
  row5  view_nf_subjectsetup%rowtype;
  row6  view_nf_subjectsetup%rowtype;
  row7  view_nf_subjectsetup%rowtype;
  row8  view_nf_subjectsetup%rowtype;
  row9  view_nf_subjectsetup%rowtype;

begin
  open mycursor;
       FETCH   mycursor   INTO   row1;
       FETCH   mycursor   INTO   row2;
       FETCH   mycursor   INTO   row3;
       FETCH   mycursor   INTO   row4;
       FETCH   mycursor   INTO   row5;
       FETCH   mycursor   INTO   row6;
       FETCH   mycursor   INTO   row7;
       FETCH   mycursor   INTO   row8;
       FETCH   mycursor   INTO   row9;
       select type_leger_object(
       a.C_SUBJECT,
       '',
       '',
       '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '',
   '' ,
   '',
   '',
   0,
   '',
   '',
   '',
   0,
   1,
   a.N_BORROWBEGINSUM ,
   a.N_BORROWBEGINNUM ,
   a.N_LENDBEGINSUM   ,
   a.N_LENDBEGINNUM   ,

   a.N_BORROWSUM      ,
   a.N_BORROWNUM      ,
   a.N_LENDSUM        ,
   a.N_LENDNUM        ,

   a.N_ENDBORROWSUM  ,
   a.N_ENDBORROWNUM  ,
   a.N_ENDLENDSUM    ,
   a.N_ENDLENDNUM
   ) bulk collect into vt
       from (
       select regexp_substr(C_SUBJECT, '^\w{'||to_char(row1.i_sumlength)||'}') C_SUBJECT,
         sum(N_BORROWBEGINSUM)    N_BORROWBEGINSUM ,
         sum(N_BORROWBEGINNUM)   N_BORROWBEGINNUM ,
         sum(N_LENDBEGINSUM )   N_LENDBEGINSUM   ,
         sum(N_LENDBEGINNUM)     N_LENDBEGINNUM  ,
         sum(N_BORROWSUM)      N_BORROWSUM    ,
         sum(N_BORROWNUM )      N_BORROWNUM   ,
         sum(N_LENDSUM)      N_LENDSUM      ,
         sum(N_LENDNUM )    N_LENDNUM       ,
         sum(N_ENDBORROWSUM ) N_ENDBORROWSUM,
         sum(N_ENDBORROWNUM )  N_ENDBORROWNUM      ,
         sum(N_ENDLENDSUM ) N_ENDLENDSUM          ,
         sum(N_ENDLENDNUM) N_ENDLENDNUM
       from table(func_nf_legerdefer(account_id , startdate , enddate , isShowLoss))
              where length(C_SUBJECT) >= row1.i_sumlength
       group by regexp_substr(C_SUBJECT, '^\w{'||to_char(row1.i_sumlength)||'}')
       --
       union all
       select regexp_substr(C_SUBJECT, '^\w{'||to_char(row2.i_sumlength)||'}') C_SUBJECT,
         sum(N_BORROWBEGINSUM)    N_BORROWBEGINSUM ,
         sum(N_BORROWBEGINNUM)   N_BORROWBEGINNUM ,
         sum(N_LENDBEGINSUM )   N_LENDBEGINSUM   ,
         sum(N_LENDBEGINNUM)     N_LENDBEGINNUM  ,
         sum(N_BORROWSUM)      N_BORROWSUM    ,
         sum(N_BORROWNUM )      N_BORROWNUM   ,
         sum(N_LENDSUM)      N_LENDSUM      ,
         sum(N_LENDNUM )    N_LENDNUM       ,
         sum(N_ENDBORROWSUM ) N_ENDBORROWSUM,
         sum(N_ENDBORROWNUM )  N_ENDBORROWNUM      ,
         sum(N_ENDLENDSUM ) N_ENDLENDSUM          ,
         sum(N_ENDLENDNUM) N_ENDLENDNUM

       from table(func_nf_legerdefer(account_id , startdate , enddate , isShowLoss))
              where length(C_SUBJECT) >= row2.i_sumlength
       group by regexp_substr(C_SUBJECT, '^\w{'||to_char(row2.i_sumlength)||'}')
       --
       union all
       select regexp_substr(C_SUBJECT, '^\w{'||to_char(row3.i_sumlength)||'}') C_SUBJECT,
         sum(N_BORROWBEGINSUM)    N_BORROWBEGINSUM ,
         sum(N_BORROWBEGINNUM)   N_BORROWBEGINNUM ,
         sum(N_LENDBEGINSUM )   N_LENDBEGINSUM   ,
         sum(N_LENDBEGINNUM)     N_LENDBEGINNUM  ,
         sum(N_BORROWSUM)      N_BORROWSUM    ,
         sum(N_BORROWNUM )      N_BORROWNUM   ,
         sum(N_LENDSUM)      N_LENDSUM      ,
         sum(N_LENDNUM )    N_LENDNUM       ,
         sum(N_ENDBORROWSUM ) N_ENDBORROWSUM,
         sum(N_ENDBORROWNUM )  N_ENDBORROWNUM      ,
         sum(N_ENDLENDSUM ) N_ENDLENDSUM          ,
         sum(N_ENDLENDNUM) N_ENDLENDNUM

       from table(func_nf_legerdefer(account_id , startdate , enddate , isShowLoss))
              where length(C_SUBJECT) >= row3.i_sumlength
       group by regexp_substr(C_SUBJECT, '^\w{'||to_char(row3.i_sumlength)||'}')
       --
       union all
       select regexp_substr(C_SUBJECT, '^\w{'||to_char(row4.i_sumlength)||'}') C_SUBJECT,
         sum(N_BORROWBEGINSUM)    N_BORROWBEGINSUM ,
         sum(N_BORROWBEGINNUM)   N_BORROWBEGINNUM ,
         sum(N_LENDBEGINSUM )   N_LENDBEGINSUM   ,
         sum(N_LENDBEGINNUM)     N_LENDBEGINNUM  ,
         sum(N_BORROWSUM)      N_BORROWSUM    ,
         sum(N_BORROWNUM )      N_BORROWNUM   ,
         sum(N_LENDSUM)      N_LENDSUM      ,
         sum(N_LENDNUM )    N_LENDNUM       ,
         sum(N_ENDBORROWSUM ) N_ENDBORROWSUM,
         sum(N_ENDBORROWNUM )  N_ENDBORROWNUM      ,
         sum(N_ENDLENDSUM ) N_ENDLENDSUM          ,
         sum(N_ENDLENDNUM) N_ENDLENDNUM

       from table(func_nf_legerdefer(account_id , startdate , enddate, isShowLoss))
              where length(C_SUBJECT) >= row4.i_sumlength
       group by regexp_substr(C_SUBJECT, '^\w{'||to_char(row4.i_sumlength)||'}')
       --
       union all
       select regexp_substr(C_SUBJECT, '^\w{'||to_char(row5.i_sumlength)||'}') C_SUBJECT,
         sum(N_BORROWBEGINSUM)    N_BORROWBEGINSUM ,
         sum(N_BORROWBEGINNUM)   N_BORROWBEGINNUM ,
         sum(N_LENDBEGINSUM )   N_LENDBEGINSUM   ,
         sum(N_LENDBEGINNUM)     N_LENDBEGINNUM  ,
         sum(N_BORROWSUM)      N_BORROWSUM    ,
         sum(N_BORROWNUM )      N_BORROWNUM   ,
         sum(N_LENDSUM)      N_LENDSUM      ,
         sum(N_LENDNUM )    N_LENDNUM       ,
         sum(N_ENDBORROWSUM ) N_ENDBORROWSUM,
         sum(N_ENDBORROWNUM )  N_ENDBORROWNUM      ,
         sum(N_ENDLENDSUM ) N_ENDLENDSUM          ,
         sum(N_ENDLENDNUM) N_ENDLENDNUM

       from table(func_nf_legerdefer(account_id , startdate , enddate , isShowLoss))
              where length(C_SUBJECT) >= row5.i_sumlength
       group by regexp_substr(C_SUBJECT, '^\w{'||to_char(row5.i_sumlength)||'}')
       --
       union all
       select regexp_substr(C_SUBJECT, '^\w{'||to_char(row6.i_sumlength)||'}') C_SUBJECT,
         sum(N_BORROWBEGINSUM)    N_BORROWBEGINSUM ,
         sum(N_BORROWBEGINNUM)   N_BORROWBEGINNUM ,
         sum(N_LENDBEGINSUM )   N_LENDBEGINSUM   ,
         sum(N_LENDBEGINNUM)     N_LENDBEGINNUM  ,
         sum(N_BORROWSUM)      N_BORROWSUM    ,
         sum(N_BORROWNUM )      N_BORROWNUM   ,
         sum(N_LENDSUM)      N_LENDSUM      ,
         sum(N_LENDNUM )    N_LENDNUM       ,
         sum(N_ENDBORROWSUM ) N_ENDBORROWSUM,
         sum(N_ENDBORROWNUM )  N_ENDBORROWNUM      ,
         sum(N_ENDLENDSUM ) N_ENDLENDSUM          ,
         sum(N_ENDLENDNUM) N_ENDLENDNUM

       from table(func_nf_legerdefer(account_id , startdate , enddate , isShowLoss))
              where length(C_SUBJECT) >= row6.i_sumlength
       group by regexp_substr(C_SUBJECT, '^\w{'||to_char(row6.i_sumlength)||'}')
       --
       union all
       select regexp_substr(C_SUBJECT, '^\w{'||to_char(row7.i_sumlength)||'}') C_SUBJECT,
         sum(N_BORROWBEGINSUM)    N_BORROWBEGINSUM ,
         sum(N_BORROWBEGINNUM)   N_BORROWBEGINNUM ,
         sum(N_LENDBEGINSUM )   N_LENDBEGINSUM   ,
         sum(N_LENDBEGINNUM)     N_LENDBEGINNUM  ,
         sum(N_BORROWSUM)      N_BORROWSUM    ,
         sum(N_BORROWNUM )      N_BORROWNUM   ,
         sum(N_LENDSUM)      N_LENDSUM      ,
         sum(N_LENDNUM )    N_LENDNUM       ,
         sum(N_ENDBORROWSUM ) N_ENDBORROWSUM,
         sum(N_ENDBORROWNUM )  N_ENDBORROWNUM      ,
         sum(N_ENDLENDSUM ) N_ENDLENDSUM          ,
         sum(N_ENDLENDNUM) N_ENDLENDNUM

       from table(func_nf_legerdefer(account_id , startdate , enddate , isShowLoss))
              where length(C_SUBJECT) >= row7.i_sumlength
       group by regexp_substr(C_SUBJECT, '^\w{'||to_char(row7.i_sumlength)||'}')
       --
       union all
       select regexp_substr(C_SUBJECT, '^\w{'||to_char(row8.i_sumlength)||'}') C_SUBJECT,
         sum(N_BORROWBEGINSUM)    N_BORROWBEGINSUM ,
         sum(N_BORROWBEGINNUM)   N_BORROWBEGINNUM ,
         sum(N_LENDBEGINSUM )   N_LENDBEGINSUM   ,
         sum(N_LENDBEGINNUM)     N_LENDBEGINNUM  ,
         sum(N_BORROWSUM)      N_BORROWSUM    ,
         sum(N_BORROWNUM )      N_BORROWNUM   ,
         sum(N_LENDSUM)      N_LENDSUM      ,
         sum(N_LENDNUM )    N_LENDNUM       ,
         sum(N_ENDBORROWSUM ) N_ENDBORROWSUM,
         sum(N_ENDBORROWNUM )  N_ENDBORROWNUM      ,
         sum(N_ENDLENDSUM ) N_ENDLENDSUM          ,
         sum(N_ENDLENDNUM) N_ENDLENDNUM

       from table(func_nf_legerdefer(account_id , startdate , enddate , isShowLoss))
              where length(C_SUBJECT) >= row8.i_sumlength
       group by regexp_substr(C_SUBJECT, '^\w{'||to_char(row8.i_sumlength)||'}')
       --
       union all
       select regexp_substr(C_SUBJECT, '^\w{'||to_char(row9.i_sumlength)||'}') C_SUBJECT,
         sum(N_BORROWBEGINSUM)    N_BORROWBEGINSUM ,
         sum(N_BORROWBEGINNUM)   N_BORROWBEGINNUM ,
         sum(N_LENDBEGINSUM )   N_LENDBEGINSUM   ,
         sum(N_LENDBEGINNUM)     N_LENDBEGINNUM  ,
         sum(N_BORROWSUM)      N_BORROWSUM    ,
         sum(N_BORROWNUM )      N_BORROWNUM   ,
         sum(N_LENDSUM)      N_LENDSUM      ,
         sum(N_LENDNUM )    N_LENDNUM       ,
         sum(N_ENDBORROWSUM ) N_ENDBORROWSUM,
         sum(N_ENDBORROWNUM )  N_ENDBORROWNUM      ,
         sum(N_ENDLENDSUM ) N_ENDLENDSUM          ,
         sum(N_ENDLENDNUM) N_ENDLENDNUM

       from table(func_nf_legerdefer(account_id , startdate , enddate , isShowLoss))
              where length(C_SUBJECT) >= row9.i_sumlength
       group by regexp_substr(C_SUBJECT, '^\w{'||to_char(row9.i_sumlength)||'}')
       ) a

       ;


  close mycursor;
  return vt;
end;
/


prompt 结束创建 科目总账查询
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建 查找指定科目的金额及数量 $$$
drop function FUNC_NF_VALUE
/


create or replace function FUNC_NF_VALUE(account_id integer,
                                          startdate  date,
                                          enddate    date ,
                                          ac_subject varchar2 ,
                                          acaption varchar2 , 
                                          isShowLoss integer :=0) return number as
  vt         number := 0;

begin
  --1
  if acaption = 'N_BORROWBEGINSUM' then
     select sum(N_BORROWBEGINSUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;

  --2
  if acaption = 'N_BORROWBEGINNUM' then
     select sum(N_BORROWBEGINNUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;

  --3
  if acaption = 'N_LENDBEGINSUM' then
     select sum(N_LENDBEGINSUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;

  --4
  if acaption = 'N_LENDBEGINNUM' then
     select sum(N_LENDBEGINNUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;
  -----------------------------------
  --1
  if acaption = 'N_BORROWSUM' then
     select sum(N_BORROWSUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;

  --2
  if acaption = 'N_BORROWNUM' then
     select sum(N_BORROWNUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;

  --3
  if acaption = 'N_LENDSUM' then
     select sum(N_LENDSUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;

  --4
  if acaption = 'N_LENDNUM' then
     select sum(N_LENDNUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;

    -----------------------------------
  --1
  if acaption = 'N_ENDBORROWSUM' then
     select sum(N_ENDBORROWSUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;

  --2
  if acaption = 'N_ENDBORROWNUM' then
     select sum(N_ENDBORROWNUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;

  --3
  if acaption = 'N_ENDLENDSUM' then
     select sum(N_ENDLENDSUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;

  --4
  if acaption = 'N_ENDLENDNUM' then
     select sum(N_ENDLENDNUM) into vt
          from table(func_nf_legerdefer(account_id,startdate,enddate , isShowLoss))
          where c_subject like  ac_subject || '%';
     RETURN vt;
  end if;



  RETURN vt;
end;
/


prompt 结束创建 查找指定科目的金额及数量
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建  $$$

prompt 结束创建 
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
prompt 
prompt 
prompt 
prompt 
prompt $$$开始创建  $$$

prompt 结束创建 
----------------------------------------------------------------------------------------------------------------------
