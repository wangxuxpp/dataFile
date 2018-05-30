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
