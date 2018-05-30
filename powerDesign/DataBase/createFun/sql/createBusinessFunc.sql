-----------1字符串解密通用
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
-----------1字符串解密通用

-----------2字符传加密通用
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

-----------2字符传加密通用

-----------3密码解密
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
-----------3密码解密

-----------4密码加密
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
-----------4密码加密

-----------5生成生产工作日期日期函数
drop procedure PROCE_GENERATECALENDAR
/


create or replace procedure PROCE_GENERATECALENDAR(d varchar) as
-- Created on 2011/7/22 by ADM
  i integer;
  begindate date;
  nowdate date;
  enddate date;
begin
  if (REGISTERFUNCINFO() !=1) then
    return ;
  end if; 
  i := 0;

  select count(1) into i from SYS_CALENDAR where trunc(d_day , 'yyyy') = trunc(to_date(d , 'yyyy-mm-dd') , 'yyyy');
  if (i >0) then
     return ;
  end if;

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
-----------5生成生产工作日期日期函数

-----------6生成十年日期日期函数
drop procedure PROCE_TENDATE
/


create or replace procedure PROCE_TENDATE as
  i integer;
begin
  if (REGISTERFUNCINFO() !=1) then
    return ;
  end if; 
  i := 0;
  while i<=5 loop
        PROCE_GENERATECALENDAR(to_char(sysdate + 365 * i , 'yyyy-mm-dd'));
        i := i+1;
  end loop;
end;
/
-----------6生成十年日期日期函数

-----------7读取未进行加工生产任务单
drop function FUN_READNEXTCOMMAND
/
create or replace function FUN_READNEXTCOMMAND(iWorkLineId integer , iSequenceId integer)
return integer is
commandsub VIEW_PROD_CMD_CRAFT_FIRSTSEQ%rowtype;

type cur_type is ref cursor;
commandcursor cur_type;

str varchar(500);
begin
   if (REGISTERFUNCINFO() !=1) then
    return 0;
  end if;
    str := 'select * from VIEW_PROD_CMD_CRAFT_FIRSTSEQ a where a.i_prod_workline_id ='||to_char(iWorkLineId)
                         ||' and a.i_prod_command_id not in (select I_PROD_COMMAND_ID from PROD_WORKMAKE where i_del<>1) '
                         ||' and a.i_prod_craftsequence_id='||to_char(iSequenceId)
                         ||' order by a.d_senddate , a.i_prod_command_id';
    open commandcursor for str;
    fetch commandcursor into commandsub;
    close commandcursor;
    return nvl(commandsub.i_prod_command_id,0);
exception
    when others then
    return 0;
end;
/
-----------7读取未进行加工生产任务单

-----------8工位下一个需加工单
drop function FUN_PRODCENTERNEXTMAKE
/


create or replace function FUN_PRODCENTERNEXTMAKE(iWorkCenterId integer)
  return integer is
  Result integer := 0;
/**
  @aid 传入参数 工位ID
  @reutrn 任务单ID
  返回工位下一步需要加工的构件ID
**/
cursor mycursor is
select * from VIEW_PROD_WORKCENTER where id=iWorkCenterId;

workcenter VIEW_PROD_WORKCENTER%rowtype;
workMake PROD_WORKMAKE%rowtype;

type cur_type is ref cursor;
mycursorSub cur_type;

str varchar(1000):='';
v varchar(50):='';

subCon varchar(200):='';
nowSubCon varchar(200):='';


nowNum integer :=0 ;
precedeNum integer :=0;
begin

  if (registerfuncinfo() =0) then
     return Result;
  end if;

  open mycursor;
  fetch mycursor into workcenter;
  close mycursor;
  --流水线
  if (workcenter.c_worklineType ='流水线') then begin
      if (workcenter.i_make_precedesequence = 0) then
         return fun_readnextcommand(workcenter.i_prod_workline_id , workcenter.i_prod_craftsequence_id );
      end if;

      --前工位数量
      str :='select count(1) from VIEW_PROD_WORKCENTER where i_prod_workline_id='|| to_char(workcenter.i_prod_workline_id )
                                                             ||' and i_make_sequence='||to_char(workcenter.i_make_precedesequence);
      open mycursorSub for str;
      fetch mycursorSub into precedeNum;
      close mycursorSub;
      --现工位数量
      str :='select count(1) from VIEW_PROD_WORKCENTER where i_prod_workline_id='|| to_char(workcenter.i_prod_workline_id )
                                                             ||' and i_make_sequence='||to_char(workcenter.i_make_sequence);
      open mycursorSub for str;
      fetch mycursorSub into nowNum;
      close mycursorSub;

      --前工位信息
      str :='select id from VIEW_PROD_WORKCENTER where i_prod_workline_id='|| to_char(workcenter.i_prod_workline_id )
                                                             ||' and i_make_sequence='||to_char(workcenter.i_make_precedesequence);
      if (precedeNum > 1 and nowNum = precedeNum) then
         str := str ||' and I_MAKE_SEQUENCESUB='||to_char(workcenter.i_make_sequencesub);
      end if;

      subCon :='-99';
      open mycursorSub for str ;
      loop
           v :='';
           fetch mycursorSub into v;
           exit when mycursorSub%notfound;
           subCon := subCon || ','|| v;
      end loop;
      close mycursorSub;
      
      --现工位信息
      nowSubCon :='-99';
      str :='select id from VIEW_PROD_WORKCENTER where i_prod_workline_id='|| to_char(workcenter.i_prod_workline_id )
                                                             ||' and i_make_sequence='||to_char(workcenter.i_make_sequence);
      open mycursorSub for str ;
      loop
           v :='';
           fetch mycursorSub into v;
           exit when mycursorSub%notfound;
           nowSubCon := nowSubCon || ','|| v;
      end loop;
      close mycursorSub;                                                       
      
      --查询下一任务单
      str :='select a.* from (select *'
                    ||' from PROD_WORKMAKE a'
                    ||' where a.c_status = ''结束加工'''
                    ||' and a.i_prod_workcenter_id in ('||subCon||')'
                    ||' and a.id not in (select I_PROD_WORKMAKE_ID from PROD_REVERSEWARE where c_status=''待处理'')'
                    ||' and a.i_prod_command_id not in'
                    ||' (select i_prod_command_id from PROD_WORKMAKE where i_prod_workcenter_id in ('||nowSubCon ||'))) a'
                    ||' inner join VIEW_PROD_WORKCENTER b'
                    ||' on a.i_prod_workcenter_id = b.id'
                    ||' where (b.c_quality = ''无质检'')'
                    ||' or (fun_prodmakequalityinfo(a.id) = ''合格'' and b.c_quality = ''质检'')'
                    ||' order by a.d_end, a.id';
      open mycursorSub for str ;
      fetch mycursorSub into workMake;
      close mycursorSub;
      return nvl(workMake.i_Prod_Command_Id ,0);

  --固定模位
  end ; else begin
     return 0;
  end ; end if;

  return Result;
end;
/
-----------8工位下一个需加工单

-----------9生产线工位状态
drop function FUN_PRODWORKCENTERSTATUS
/


create or replace function FUN_PRODWORKCENTERSTATUS(iWorkCenterId integer)
    return varchar2 is
  Result varchar(200) :='生产中';
/**
返回工作中心当前状态
返回值：
1.等待生产
2.生产中
3.等待质检
4.质检未通过
5.空闲 模台加工完成 流水：模台流转到下一步且上一模台无需加工
6.故障
7.多模台_空闲
8.多模台_待完
9.多模台_加工
10.多模台_已满

**/

type cur_type is ref cursor;
mycursorSub cur_type;
num integer :=0;
wnum integer :=0;

subsum integer := 0;
subtemp integer := 0;
subacquirefinish integer:=0;
submake integer:= 0;
cursor mycursor is
select * from VIEW_PROD_WORKCENTERNOW where id=iWorkCenterId;

workcenter VIEW_PROD_WORKCENTERNOW%rowtype;
str varchar(500);

begin
  if (REGISTERFUNCINFO() !=1) then
    return '';
  end if;
  str :='select count(1) n from VIEW_PROD_WORKCENTERNOW where id ='||to_char(iWorkCenterId);
  open mycursorSub for str;
  fetch mycursorsub into num;
  close  mycursorsub;

  if (num =0) then
    return '空闲';
  end if;

  open mycursor;
  --判断工位模台数量
  if (num =1) then begin

     fetch mycursor into workcenter;
     --判断工位是否出现故障
     if workcenter.C_CENTERSTATUS !='运行' then
        return workcenter.C_CENTERSTATUS;
     end if;

     --下一个需要加工的任务单
     wnum := nvl(fun_prodcenternextmake(iWorkCenterId) ,0);
     if (workcenter.i_work_make_id is null and wnum =0) then
        Result := '空闲';
     end if;
     if (workcenter.i_work_make_id is null and wnum !=0) then
        Result := '等待生产';
     end if;

     if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='无质检' or workcenter.c_qualityInfo='合格')) then
        if(wnum =0) then
           Result := '空闲';
        else
           Result := '等待生产';
        end if;
     end if;
     if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='质检' and workcenter.c_qualityInfo is null)) then
        Result := '等待质检';
     end if;
     if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='质检' and workcenter.c_qualityInfo='待检')) then
        Result := '等待质检';
     end if;
     if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='质检' and workcenter.c_qualityInfo='不合格')) then
        Result := '质检未通过';
     end if;
  end; else begin
     loop
          fetch mycursor into workcenter;
          exit when mycursor%notfound;
          --判断工位是否出现故障
          if workcenter.C_CENTERSTATUS !='运行' then
             return workcenter.C_CENTERSTATUS;
          end if;

          subsum := subsum+1;
          if (workcenter.C_STATUS ='开始加工') then
             if (workcenter.f_defer_time >= workcenter.F_ACQUIRE_TIME) then
                subacquirefinish := subacquirefinish+1;
             else
                submake := submake+1;
             end if;
             continue;
          else
             subtemp := subtemp+1;
          end if;
     end loop;
     if subsum = subtemp then
        return '多模台_空闲';
     end if;
     if subsum = submake then
       return '多模台_已满';
     end if;
     if subacquirefinish >0 then
       return '多模台_待完_'||to_char(subacquirefinish);
     end if;
     Result := '多模台_加工_'||to_char(submake)||'空闲:'||to_char(subtemp);
  end; end if;
  close mycursor;

  return Result;
end;
/
-----------9生产线工位状态

-----------10生产线工位子表多模台状态
drop function FUN_PRODWORKCENTERSTATUSSUB
/
create or replace function FUN_PRODWORKCENTERSTATUSSUB(iCenterSubId integer)
  return varchar2 is
  Result varchar(200) :='生产中';
/**
返回状态：
1.等待生产
2.生产中
3.等待质检
4.可继续生产
5.质检未通过
**/

cursor mycursor is
select * from VIEW_PROD_WORKCENTERNOW where i_PROD_WORKCENTERSUB_id=iCenterSubId;

workcenter VIEW_PROD_WORKCENTERNOW%rowtype;

begin
  --if (registerfuncinfo() =0) then
     --return Result;
  --end if;
  open mycursor;
  fetch mycursor into workcenter;
  close mycursor;
  if (workcenter.i_work_make_id is null) then
    Result := '等待生产';
  end if;
  if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='无质检' or workcenter.c_qualityInfo='合格')) then
    Result := '等待生产';
  end if;
  if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='质检' and workcenter.c_qualityInfo='待检')) then
    Result := '等待质检';
  end if;
  if (workcenter.C_STATUS = '结束加工' and (workcenter.C_MAKEABLEQUALITY ='质检' and workcenter.c_qualityInfo='不合格')) then
    Result := '质检未通过';
  end if;
  return Result;
end;
/
-----------10生产线工位子表多模台状态

-----------11工位加工单质检信息
drop function FUN_PRODMAKEQUALITYINFO
/


create or replace function FUN_PRODMAKEQUALITYINFO(iWorkMakeId integer)
  return varchar2 is
  Result varchar(200);

/*
返回工位加工单质检状态
@iWorkMakeId 工位加工单ID

@return      工位加工单状态
1、待检
2、合格
3、不合格
*/
type cur_type is ref cursor;
mycursorSub cur_type;
num integer :=0;


cursor mycursor is
  select *
  from PROD_QUALITY
  where I_PROD_WORKMAKE_ID = iWorkMakeId
  and I_DEL <> 1
  order by id desc;

quality PROD_QUALITY%rowtype;
str varchar(500);

notquality boolean := false;
isquality boolean := false;
waitquality boolean := false;
begin
  Result := '';

  --if (registerfuncinfo() =0) then
    -- return Result;
  --end if;

  open mycursor;
  fetch mycursor into quality ;
  close mycursor;

  if (quality.id is null or quality.id='') then
     return '';
  end if;
  if (quality.c_author = '0') then 
    return '';
  end if;

  str :='select sum(num) from(select count(1) num from PROD_QUALITYSUB where I_PROD_QUALITY_ID='|| to_char(quality.id)||' group by C_STATUS)';

  open mycursorSub for str ;
  fetch mycursorSub into num;
  close mycursorSub;

  if (num = 1) then begin
     str :='select C_STATUS from PROD_QUALITYSUB where I_PROD_QUALITY_ID='|| to_char(quality.id)||' group by C_STATUS';
     open mycursorSub for str ;
     fetch mycursorSub into Result;
     close mycursorSub;
  end ; else begin
      str :='select C_STATUS from PROD_QUALITYSUB where I_PROD_QUALITY_ID='|| to_char(quality.id)||' group by C_STATUS';
     open mycursorSub for str ;
     loop
          fetch mycursorSub into Result;
          exit when mycursorSub%notfound;
          case
            when (Result='待检') then waitquality := true ;
            when (Result='合格') then isquality := true;
            when (Result='不合格') then notquality:=true;
          end case;
     end loop;
     close mycursorSub;
     if (isquality) then Result:='合格'; end if;
     if (notquality) then Result:='不合格'; end if;
     if (waitquality) then Result:='待检'; end if;
     return Result;
  end;end if;

  return Result;
end;
/

-----------11工位加工单质检信息

-----------12任务单是否需要质检
drop function FUN_PRODMAKE_ABLEQUALITY
/


create or replace function FUN_PRODMAKE_ABLEQUALITY(iWorkMakeId integer)
  return varchar2 is
  Result varchar(200);

/*
返回工位加工单是否需要质检
@iWorkMakeId 工位加工单ID

@return      工位加工单是否需要质检
1、无质检
2、质检
*/
cursor mycursor is
  select *
  from PROD_WORKMAKE
  where id = iWorkMakeId;

workMake PROD_WORKMAKE%rowtype;
str varchar(500);

begin
  Result := '质检';

  open mycursor;
  fetch mycursor into workMake ;
  close mycursor;

  select c_workline_type into str from mview_prod_command_info  where i_prod_command_id = workMake.i_Prod_Command_Id and rownum =1 ;

  if (str ='流水线') then begin
     select c_quality into Result from mview_prod_workcenter where id = workMake.i_Prod_Workcenter_Id;
  end ; else begin
     select C_ABLEQUALITY into Result from PROD_CRAFTSEQUENCE where id = workMake.i_Prod_Craftsequence_Id;
  end ;end if;

  return Result;
end;
/
-----------12任务单是否需要质检

-----------13构件是否加工结束
drop function FUN_MEMBERFINISH
/


create or replace function FUN_MEMBERFINISH(i_member_id integer)
  return integer is
  Result integer := 0;
  /**
  【结束返回最后加工单ID ,未结束返回0】
  **/
  /*  cursor mycursor is
    select * from VIEW_PROD_WORKCENTER where id = iWorkCenterId;

  workcenter VIEW_PROD_WORKCENTER%rowtype;
  workMake   PROD_WORKMAKE%rowtype;*/

  type cur_type is ref cursor;
  mycursorSub cur_type;

  lineType   varchar(50) := '';
  workLineId integer := 0;
  craftId    integer := 0;
  icommandId integer := 0;

  str varchar(100) := '-99';
  v   integer := 0;

  ablequality varchar(50) := '';
  quality     varchar(50) := '';
  makeId      integer := 0;
begin
  select a.c_workline_type,
         a.i_prod_command_id,
         a.i_prod_craft_id,
         a.i_prod_workline_id
    into lineType, icommandId, craftId, workLineId
    from mview_prod_command_info a
   where a.i_base_member_id = i_member_id and rownum = 1;
  if (icommandId = 0 or icommandId is null) then
    return 0; 
  end if;
  if (lineType = '流水线') then
    open mycursorSub for
      select id
        from VIEW_PROD_WORKCENTER
       where i_prod_workline_id = workLineId
         and i_make_sequence =
             (select max(i_make_sequence)
                from VIEW_PROD_WORKCENTER
               where i_prod_workline_id = workLineId);
    loop
      fetch mycursorSub
        into v;
      exit when mycursorSub%notfound;
      str := str || ',' || to_char(v);
    end loop;
    close mycursorSub;

    if (str = '-99') then
      return 0;
    end if;

    str := 'select id  from PROD_WORKMAKE ' || ' where i_prod_command_id = '||to_char(icommandId) ||
           ' and I_PROD_WORKCENTER_ID in (' || str || ')';

    makeId := 0;
    open mycursorSub for str;
    fetch mycursorSub
      into makeId;
    close mycursorSub;
    if (makeId = 0 or makeId is null) then
      return 0;
    end if;

    ablequality := FUN_PRODMAKE_ABLEQUALITY(makeId);
    quality     := FUN_PRODMAKEQUALITYINFO(makeId);

    if ((ablequality = '质检' and quality = '合格') or (ablequality != '质检')) then
      return makeId;
    else
      return 0;
    end if;
  else

    select i_prod_craftsequence_id
      into v
      from VIEW_PROD_CRAFTSUB
     where I_PROD_CRAFT_ID = craftId
       and I_CRAFTSEQUENCE =
           (select max(I_CRAFTSEQUENCE)
              from VIEW_PROD_CRAFTSUB
             where I_PROD_CRAFT_ID = craftId);

    select nvl(a.id,0), a.c_ablequality into makeId ,ablequality
      from VIEW_PROD_WORKMAKE a
     where i_prod_command_id = icommandId
       and I_PROD_CRAFTSEQUENCE_ID =v and rownum=1;

    if (makeId = 0 or makeId is null) then
      return 0;
    end if;
    quality := FUN_PRODMAKEQUALITYINFO(makeId);
    if ((ablequality = '质检' and quality = '合格') or (ablequality != '质检')) then
      return makeId;
    else
      return 0;
    end if;
  end if;

  return Result;
exception
    when others then
    return 0;
end;
/

-----------13构件是否加工结束

-----------14工位下一个需加工工序
drop function FUN_PRODCENTERNEXTSEQUENCE
/


create or replace function FUN_PRODCENTERNEXTSEQUENCE(aid integer)
  return integer is
  Result integer := 0;
/**
  @aid 传入参数 工位ID
  @reutrn 任务单ID
  返回工位下一步需要加工的构件ID
**/
cursor mycursor is
select * from VIEW_PROD_WORKCENTER where id=aid;

workcenter VIEW_PROD_WORKCENTER%rowtype;
--生产任务单加工顺序游标
workCommand VIEW_PROD_COMMANDNOTPROD%rowtype;
type cur_type is ref cursor;
mycursorSub cur_type;

str varchar(500):='';

begin

  if (registerfuncinfo() =0) then
     return Result;
  end if;


  open mycursor;
  fetch mycursor into workcenter;
  close mycursor;
  --流水线
  if (workcenter.c_worklineType ='流水线') then begin
     return workcenter.i_prod_craftsequence_id;
  --固定模位
  end ; else begin
     str :='select * from VIEW_PROD_COMMANDNOTPROD where I_NOWPROD_WORKCENTER_ID ='||to_char(aid)||'  order by d_senddate , i_craftsequence,i_craftsequence';
     open mycursorSub for str;
     fetch mycursorSub into workCommand;
     close mycursorSub;
     if workCommand.i_nowprod_workcenter_id is not null then
        return workCommand.I_PROD_CRAFTSEQUENCE_ID;
     else
        str := 'select a.I_PROD_CRAFTSEQUENCE_ID from VIEW_PROD_FIXMODEL_CMD_CRAFT a where a.I_CRAFTSEQUENCE =1 and a.i_prod_workgroup_id is null '
               ||' and I_PROD_WORKLINE_ID='||to_char(workcenter.i_prod_workline_id)
               ||' order by a.D_SENDDATE , a.ID';
        --dbms_output.put_line(str);
        open mycursorSub for str;
        fetch mycursorSub into Result;
        close mycursorSub;
        return nvl(Result ,0);

     end if;

  end ; end if;

  return Result;
end;
/
-----------14工位下一个需加工工序

-----------15工艺-流水线工位状态样式
drop function FUN_PRODAUTOLINECENTERCSS
/


create or replace function FUN_PRODAUTOLINECENTERCSS(state varchar)
  return varchar2 is
  r varchar2(100) := 'line_work_1';
  s varchar2(100) := '';
  /**
  根据状态返回流水线样式
  **/
begin
  if (REGISTERFUNCINFO() !=1) then
    return '';
  end if;
  s := trim(substr(state , 1 , 6));
  if (s = '等待生产') then
    return 'line_work_3';
  end if;
  if (s = '生产中') then
    return 'line_common_3'; -- 线状态用生产中状态代替
  end if;
  if (s = '等待质检') then
    return 'line_work_5';
  end if;
  if (s = '质检未通过') then
    return 'line_work_6';
  end if;
  if (s = '多模台_空闲') then
     return 'line_work_7';
  end if;
  if (s = '多模台_已满') then
    return 'line_work_8';
  end if;
  if (s = '多模台_待完') then
    return 'line_work_9';
  end if;
  if (s = '多模台_加工') then
    return 'line_work_10';
  end if;
  if (s = '故障') then
    return 'line_work_11';
  end if;

  return r;
 end;
/

-----------15工艺-流水线工位状态样式

-----------16工艺-工序需要加工时间
drop function FUN_PRODCRAFTSEQUENCE_MAKETIME
/


create or replace function FUN_PRODCRAFTSEQUENCE_MAKETIME(iCraftId integer , iSeqenceId integer)
  return number is
  a      integer;
  b      integer;
  Result number := 0;
  /**
  指定工艺、工序下所需要的加工时间
  返回值：
  加工时间 单位分钟
  **/
begin
  if (REGISTERFUNCINFO() !=1) then
    return 0;
  end if;
  select i_prod_craft_id, i_prod_craftsequence_id, sum(f_sumtime) f_sumtime
    into a, b, Result
    from mview_prod_craft_info
   group by i_prod_craft_id, i_prod_craftsequence_id
  having i_prod_craft_id = iCraftId and i_prod_craftsequence_id = iSeqenceId;

  return nvl(Result, 0);
end;
/

-----------16工艺-工序需要加工时间

-----------17 工位排序
drop procedure PROCE_GENERATE_CENTER_SEQUENCE
/
create or replace procedure PROCE_GENERATE_CENTER_SEQUENCE as
begin
  if (REGISTERFUNCINFO() !=1) then
    return ;
  end if; 
  update PROD_WORKCENTER a
    set (i_make_sequence, i_make_sequencesub, i_make_precedesequence) =
        (select i_make_sequence , i_make_sequencesub , i_make_precedesequence from (  select id,
               dense_rank() over(partition by i_prod_workline_id order by i_sequence) i_make_sequence,
               rank() over(partition by i_prod_workline_id, i_sequence order by id) i_make_sequencesub,
               (dense_rank() over(partition by i_prod_workline_id order by
                                  i_prod_workline_id,
                                  i_sequence)) - 1 i_make_precedesequence

          from PROD_WORKCENTER where i_del<>1) b
     where a.id = b.id) where i_del <>1;
end;
/
-----------17工位排序
