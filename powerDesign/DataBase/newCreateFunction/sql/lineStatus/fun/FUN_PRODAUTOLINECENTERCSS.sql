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
