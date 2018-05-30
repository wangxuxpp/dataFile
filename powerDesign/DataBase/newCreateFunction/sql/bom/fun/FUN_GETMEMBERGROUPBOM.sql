drop function FUN_GETMEMBERGROUPBOM
/


create or replace function FUN_GETMEMBERGROUPBOM(i_membergroup_id integer,usernum  number) return TYPE_MEMBERGROUP_TABLE as
  vt         TYPE_MEMBERGROUP_TABLE;
  r          TYPE_MEMBERGROUP_TABLE;
  avt         TYPE_DIE_TABLE;

  str varchar2(500);
  
  type cur_type is ref cursor;
  mycursors cur_type ;
  
  rows VIEW_BASE_RAWMATERIA%Rowtype;
begin
  select TYPE_MEMBERGROUP_OBJECT(a.I_BASE_MEMBERGROUP_ID,
                                 a.I_BASE_WAREUNIT_ID,
                                 a.N_NUM,
                                 a.F_ATTRITIONRATE,
                                 a.F_UPPERRATE,
                                 a.F_LOWRATE,
                                 round(a.n_acquirenum * usernum, 6),
                                 round(a.n_acquiremaxnum * usernum, 6),
                                 round(a.n_acquireminnum * usernum, 6),
                                 a.C_TYPE) BULK COLLECT
    INTO vt
    from VIEW_BASE_RAWMATERIA a
   inner join mview_base_wareunit b
      on a.I_BASE_WAREUNIT_ID = b.i_base_wareunit_id
   where a.I_BASE_MEMBERGROUP_ID = i_membergroup_id
     and (b.c_type <> '��ϲ���' or b.i_base_wareunit_id not in (select I_MAINBASE_WAREUNIT_ID from VIEW_BASE_WAREBOM ));

  
  str := 'select a.* from VIEW_BASE_RAWMATERIA a' ||
         ' inner join mview_base_wareunit b' ||
         ' on a.I_BASE_WAREUNIT_ID = b.i_base_wareunit_id' ||
         ' where a.I_BASE_MEMBERGROUP_ID =' || to_char(i_membergroup_id) ||
         ' and b.c_type = ''��ϲ���''';
  open mycursors for str;
  loop
    fetch mycursors
      into rows;
    exit when mycursors%notfound;
    avt := FUN_GETWAREBOM(rows.I_BASE_WAREUNIT_ID, usernum* rows.n_acquiremaxnum , usernum * rows.n_acquirenum, usernum*rows.n_acquireminnum, 0);
    r := vt; 
    select TYPE_MEMBERGROUP_OBJECT(aa,
                                   I_BASE_WAREUNIT_ID,
                                   N_NUM,
                                   F_ATTRITIONRATE,
                                   F_UPPERRATE,
                                   F_LOWRATE,
                                   N_USERNUM,
                                   N_USERNUM_MAX ,
                                   N_USERNUM_MIN,
                                   C_TYPE) BULK COLLECT
      INTO vt
      from (select i_membergroup_id aa,
                   I_BASE_WAREUNIT_ID,
                   N_NUM,
                   F_ATTRITIONRATE,
                   F_UPPERRATE,
                   F_LOWRATE,
                   N_USERNUM,
                   N_USERNUM_MAX,
                   N_USERNUM_MIN,
                   C_TYPE
              from table(avt)
            union all
            select I_BASE_MEMBERGROUP_ID aa, --������ID
                   I_BASE_WAREUNIT_ID, --ԭ����ID
                   
                   N_NUM, --��������
                   F_ATTRITIONRATE, --�����
                   F_UPPERRATE, --���������
                   F_LOWRATE, --���������
                   
                   N_USERNUM, --ʹ������
                   N_USERNUM_MAX, --ʹ����������
                   N_USERNUM_MIN, --ʹ����������
                   
                   C_TYPE
              from table(r));
             
  end loop;
  close mycursors;
  
  RETURN vt;
end;
/
