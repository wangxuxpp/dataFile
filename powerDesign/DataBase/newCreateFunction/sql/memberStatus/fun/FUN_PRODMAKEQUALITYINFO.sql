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
