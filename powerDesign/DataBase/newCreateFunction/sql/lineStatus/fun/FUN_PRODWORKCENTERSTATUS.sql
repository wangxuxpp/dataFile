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
