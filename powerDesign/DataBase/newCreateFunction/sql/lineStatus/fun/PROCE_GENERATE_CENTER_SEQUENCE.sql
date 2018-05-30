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
