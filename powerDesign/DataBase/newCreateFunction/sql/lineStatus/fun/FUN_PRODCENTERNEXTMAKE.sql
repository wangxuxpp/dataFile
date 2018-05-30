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
