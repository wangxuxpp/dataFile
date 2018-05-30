-----------1�ַ�������ͨ��
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
-----------1�ַ�������ͨ��

-----------2�ַ�������ͨ��
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

-----------2�ַ�������ͨ��

-----------3�������
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
-----------3�������

-----------4�������
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
-----------4�������

-----------5�������������������ں���
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
-----------5�������������������ں���

-----------6����ʮ���������ں���
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
-----------6����ʮ���������ں���

-----------7��ȡδ���мӹ���������
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
-----------7��ȡδ���мӹ���������

-----------8��λ��һ����ӹ���
drop function FUN_PRODCENTERNEXTMAKE
/


create or replace function FUN_PRODCENTERNEXTMAKE(iWorkCenterId integer)
  return integer is
  Result integer := 0;
/**
  @aid ������� ��λID
  @reutrn ����ID
  ���ع�λ��һ����Ҫ�ӹ��Ĺ���ID
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
  --��ˮ��
  if (workcenter.c_worklineType ='��ˮ��') then begin
      if (workcenter.i_make_precedesequence = 0) then
         return fun_readnextcommand(workcenter.i_prod_workline_id , workcenter.i_prod_craftsequence_id );
      end if;

      --ǰ��λ����
      str :='select count(1) from VIEW_PROD_WORKCENTER where i_prod_workline_id='|| to_char(workcenter.i_prod_workline_id )
                                                             ||' and i_make_sequence='||to_char(workcenter.i_make_precedesequence);
      open mycursorSub for str;
      fetch mycursorSub into precedeNum;
      close mycursorSub;
      --�ֹ�λ����
      str :='select count(1) from VIEW_PROD_WORKCENTER where i_prod_workline_id='|| to_char(workcenter.i_prod_workline_id )
                                                             ||' and i_make_sequence='||to_char(workcenter.i_make_sequence);
      open mycursorSub for str;
      fetch mycursorSub into nowNum;
      close mycursorSub;

      --ǰ��λ��Ϣ
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
      
      --�ֹ�λ��Ϣ
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
      
      --��ѯ��һ����
      str :='select a.* from (select *'
                    ||' from PROD_WORKMAKE a'
                    ||' where a.c_status = ''�����ӹ�'''
                    ||' and a.i_prod_workcenter_id in ('||subCon||')'
                    ||' and a.id not in (select I_PROD_WORKMAKE_ID from PROD_REVERSEWARE where c_status=''������'')'
                    ||' and a.i_prod_command_id not in'
                    ||' (select i_prod_command_id from PROD_WORKMAKE where i_prod_workcenter_id in ('||nowSubCon ||'))) a'
                    ||' inner join VIEW_PROD_WORKCENTER b'
                    ||' on a.i_prod_workcenter_id = b.id'
                    ||' where (b.c_quality = ''���ʼ�'')'
                    ||' or (fun_prodmakequalityinfo(a.id) = ''�ϸ�'' and b.c_quality = ''�ʼ�'')'
                    ||' order by a.d_end, a.id';
      open mycursorSub for str ;
      fetch mycursorSub into workMake;
      close mycursorSub;
      return nvl(workMake.i_Prod_Command_Id ,0);

  --�̶�ģλ
  end ; else begin
     return 0;
  end ; end if;

  return Result;
end;
/
-----------8��λ��һ����ӹ���

-----------9�����߹�λ״̬
drop function FUN_PRODWORKCENTERSTATUS
/


create or replace function FUN_PRODWORKCENTERSTATUS(iWorkCenterId integer)
    return varchar2 is
  Result varchar(200) :='������';
/**
���ع������ĵ�ǰ״̬
����ֵ��
1.�ȴ�����
2.������
3.�ȴ��ʼ�
4.�ʼ�δͨ��
5.���� ģ̨�ӹ���� ��ˮ��ģ̨��ת����һ������һģ̨����ӹ�
6.����
7.��ģ̨_����
8.��ģ̨_����
9.��ģ̨_�ӹ�
10.��ģ̨_����

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
    return '����';
  end if;

  open mycursor;
  --�жϹ�λģ̨����
  if (num =1) then begin

     fetch mycursor into workcenter;
     --�жϹ�λ�Ƿ���ֹ���
     if workcenter.C_CENTERSTATUS !='����' then
        return workcenter.C_CENTERSTATUS;
     end if;

     --��һ����Ҫ�ӹ�������
     wnum := nvl(fun_prodcenternextmake(iWorkCenterId) ,0);
     if (workcenter.i_work_make_id is null and wnum =0) then
        Result := '����';
     end if;
     if (workcenter.i_work_make_id is null and wnum !=0) then
        Result := '�ȴ�����';
     end if;

     if (workcenter.C_STATUS = '�����ӹ�' and (workcenter.C_MAKEABLEQUALITY ='���ʼ�' or workcenter.c_qualityInfo='�ϸ�')) then
        if(wnum =0) then
           Result := '����';
        else
           Result := '�ȴ�����';
        end if;
     end if;
     if (workcenter.C_STATUS = '�����ӹ�' and (workcenter.C_MAKEABLEQUALITY ='�ʼ�' and workcenter.c_qualityInfo is null)) then
        Result := '�ȴ��ʼ�';
     end if;
     if (workcenter.C_STATUS = '�����ӹ�' and (workcenter.C_MAKEABLEQUALITY ='�ʼ�' and workcenter.c_qualityInfo='����')) then
        Result := '�ȴ��ʼ�';
     end if;
     if (workcenter.C_STATUS = '�����ӹ�' and (workcenter.C_MAKEABLEQUALITY ='�ʼ�' and workcenter.c_qualityInfo='���ϸ�')) then
        Result := '�ʼ�δͨ��';
     end if;
  end; else begin
     loop
          fetch mycursor into workcenter;
          exit when mycursor%notfound;
          --�жϹ�λ�Ƿ���ֹ���
          if workcenter.C_CENTERSTATUS !='����' then
             return workcenter.C_CENTERSTATUS;
          end if;

          subsum := subsum+1;
          if (workcenter.C_STATUS ='��ʼ�ӹ�') then
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
        return '��ģ̨_����';
     end if;
     if subsum = submake then
       return '��ģ̨_����';
     end if;
     if subacquirefinish >0 then
       return '��ģ̨_����_'||to_char(subacquirefinish);
     end if;
     Result := '��ģ̨_�ӹ�_'||to_char(submake)||'����:'||to_char(subtemp);
  end; end if;
  close mycursor;

  return Result;
end;
/
-----------9�����߹�λ״̬

-----------10�����߹�λ�ӱ��ģ̨״̬
drop function FUN_PRODWORKCENTERSTATUSSUB
/
create or replace function FUN_PRODWORKCENTERSTATUSSUB(iCenterSubId integer)
  return varchar2 is
  Result varchar(200) :='������';
/**
����״̬��
1.�ȴ�����
2.������
3.�ȴ��ʼ�
4.�ɼ�������
5.�ʼ�δͨ��
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
    Result := '�ȴ�����';
  end if;
  if (workcenter.C_STATUS = '�����ӹ�' and (workcenter.C_MAKEABLEQUALITY ='���ʼ�' or workcenter.c_qualityInfo='�ϸ�')) then
    Result := '�ȴ�����';
  end if;
  if (workcenter.C_STATUS = '�����ӹ�' and (workcenter.C_MAKEABLEQUALITY ='�ʼ�' and workcenter.c_qualityInfo='����')) then
    Result := '�ȴ��ʼ�';
  end if;
  if (workcenter.C_STATUS = '�����ӹ�' and (workcenter.C_MAKEABLEQUALITY ='�ʼ�' and workcenter.c_qualityInfo='���ϸ�')) then
    Result := '�ʼ�δͨ��';
  end if;
  return Result;
end;
/
-----------10�����߹�λ�ӱ��ģ̨״̬

-----------11��λ�ӹ����ʼ���Ϣ
drop function FUN_PRODMAKEQUALITYINFO
/


create or replace function FUN_PRODMAKEQUALITYINFO(iWorkMakeId integer)
  return varchar2 is
  Result varchar(200);

/*
���ع�λ�ӹ����ʼ�״̬
@iWorkMakeId ��λ�ӹ���ID

@return      ��λ�ӹ���״̬
1������
2���ϸ�
3�����ϸ�
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
            when (Result='����') then waitquality := true ;
            when (Result='�ϸ�') then isquality := true;
            when (Result='���ϸ�') then notquality:=true;
          end case;
     end loop;
     close mycursorSub;
     if (isquality) then Result:='�ϸ�'; end if;
     if (notquality) then Result:='���ϸ�'; end if;
     if (waitquality) then Result:='����'; end if;
     return Result;
  end;end if;

  return Result;
end;
/

-----------11��λ�ӹ����ʼ���Ϣ

-----------12�����Ƿ���Ҫ�ʼ�
drop function FUN_PRODMAKE_ABLEQUALITY
/


create or replace function FUN_PRODMAKE_ABLEQUALITY(iWorkMakeId integer)
  return varchar2 is
  Result varchar(200);

/*
���ع�λ�ӹ����Ƿ���Ҫ�ʼ�
@iWorkMakeId ��λ�ӹ���ID

@return      ��λ�ӹ����Ƿ���Ҫ�ʼ�
1�����ʼ�
2���ʼ�
*/
cursor mycursor is
  select *
  from PROD_WORKMAKE
  where id = iWorkMakeId;

workMake PROD_WORKMAKE%rowtype;
str varchar(500);

begin
  Result := '�ʼ�';

  open mycursor;
  fetch mycursor into workMake ;
  close mycursor;

  select c_workline_type into str from mview_prod_command_info  where i_prod_command_id = workMake.i_Prod_Command_Id and rownum =1 ;

  if (str ='��ˮ��') then begin
     select c_quality into Result from mview_prod_workcenter where id = workMake.i_Prod_Workcenter_Id;
  end ; else begin
     select C_ABLEQUALITY into Result from PROD_CRAFTSEQUENCE where id = workMake.i_Prod_Craftsequence_Id;
  end ;end if;

  return Result;
end;
/
-----------12�����Ƿ���Ҫ�ʼ�

-----------13�����Ƿ�ӹ�����
drop function FUN_MEMBERFINISH
/


create or replace function FUN_MEMBERFINISH(i_member_id integer)
  return integer is
  Result integer := 0;
  /**
  �������������ӹ���ID ,δ��������0��
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
  if (lineType = '��ˮ��') then
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

    if ((ablequality = '�ʼ�' and quality = '�ϸ�') or (ablequality != '�ʼ�')) then
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
    if ((ablequality = '�ʼ�' and quality = '�ϸ�') or (ablequality != '�ʼ�')) then
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

-----------13�����Ƿ�ӹ�����

-----------14��λ��һ����ӹ�����
drop function FUN_PRODCENTERNEXTSEQUENCE
/


create or replace function FUN_PRODCENTERNEXTSEQUENCE(aid integer)
  return integer is
  Result integer := 0;
/**
  @aid ������� ��λID
  @reutrn ����ID
  ���ع�λ��һ����Ҫ�ӹ��Ĺ���ID
**/
cursor mycursor is
select * from VIEW_PROD_WORKCENTER where id=aid;

workcenter VIEW_PROD_WORKCENTER%rowtype;
--�������񵥼ӹ�˳���α�
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
  --��ˮ��
  if (workcenter.c_worklineType ='��ˮ��') then begin
     return workcenter.i_prod_craftsequence_id;
  --�̶�ģλ
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
-----------14��λ��һ����ӹ�����

-----------15����-��ˮ�߹�λ״̬��ʽ
drop function FUN_PRODAUTOLINECENTERCSS
/


create or replace function FUN_PRODAUTOLINECENTERCSS(state varchar)
  return varchar2 is
  r varchar2(100) := 'line_work_1';
  s varchar2(100) := '';
  /**
  ����״̬������ˮ����ʽ
  **/
begin
  if (REGISTERFUNCINFO() !=1) then
    return '';
  end if;
  s := trim(substr(state , 1 , 6));
  if (s = '�ȴ�����') then
    return 'line_work_3';
  end if;
  if (s = '������') then
    return 'line_common_3'; -- ��״̬��������״̬����
  end if;
  if (s = '�ȴ��ʼ�') then
    return 'line_work_5';
  end if;
  if (s = '�ʼ�δͨ��') then
    return 'line_work_6';
  end if;
  if (s = '��ģ̨_����') then
     return 'line_work_7';
  end if;
  if (s = '��ģ̨_����') then
    return 'line_work_8';
  end if;
  if (s = '��ģ̨_����') then
    return 'line_work_9';
  end if;
  if (s = '��ģ̨_�ӹ�') then
    return 'line_work_10';
  end if;
  if (s = '����') then
    return 'line_work_11';
  end if;

  return r;
 end;
/

-----------15����-��ˮ�߹�λ״̬��ʽ

-----------16����-������Ҫ�ӹ�ʱ��
drop function FUN_PRODCRAFTSEQUENCE_MAKETIME
/


create or replace function FUN_PRODCRAFTSEQUENCE_MAKETIME(iCraftId integer , iSeqenceId integer)
  return number is
  a      integer;
  b      integer;
  Result number := 0;
  /**
  ָ�����ա�����������Ҫ�ļӹ�ʱ��
  ����ֵ��
  �ӹ�ʱ�� ��λ����
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

-----------16����-������Ҫ�ӹ�ʱ��

-----------17 ��λ����
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
-----------17��λ����
