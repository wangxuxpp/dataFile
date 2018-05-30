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
  ifinished integer := 0;

  str varchar(1000) := '-99';
  v   integer := 0;
  status varchar(100) := '';

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

    str := 'select id , C_STATUS from PROD_WORKMAKE ' || ' where i_prod_command_id = '||to_char(icommandId) ||
           ' and I_PROD_WORKCENTER_ID in (' || str || ')';

    makeId := 0;
    open mycursorSub for str;
    fetch mycursorSub
      into makeId ,status ;
    close mycursorSub;
    if (makeId = 0 or makeId is null) then
      return 0;
    end if;
    if (status != '结束加工') then
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

    select nvl(a.id,0), a.c_ablequality , C_STATUS into makeId ,ablequality , status
      from VIEW_PROD_WORKMAKE a
     where i_prod_command_id = icommandId
       and I_PROD_CRAFTSEQUENCE_ID =v and rownum=1;

    if (makeId = 0 or makeId is null) then
      return 0;
    end if;
    if (status != '结束加工') then
       return 0;
    end if;
    quality := FUN_PRODMAKEQUALITYINFO(makeId);
    if ((ablequality = '质检' and quality = '合格') or (ablequality != '质检')) then
      return makeId;
    else
      select id into ifinished from prod_finishedwaresub t1 where t1.i_base_member_id = i_member_id;

      if (ifinished != 0) then
         return makeId;
      end if;

      return 0;
    end if;
  end if;

  return Result;
exception
    when others then
    return 0;
end;
/
