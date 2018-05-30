select a.i_prod_worktimemodal_id, 
sum(round( (to_date(to_char(a.i_end_h) ||':'|| to_char(a.i_end_m),'HH:MI')
-to_date(to_char(a.i_begin_h) ||':'|| to_char(a.i_begin_m) ,'HH:MI')) *24 ,1))
       
  from PROD_WORKTIMEMODALSUB a
  group by a.i_prod_worktimemodal_id



select i_prod_worktimemodal_id, sum (case when sumtime<0 then sumtime+24 else sumtime end )sumtime
  from (select i_prod_worktimemodal_id,
               (to_date(to_char(a.i_end_h) || ':' || to_char(a.i_end_m), 'HH24:MI') -
         to_date(to_char(a.i_begin_h) || ':' || to_char(a.i_begin_m),
                  'HH24:MI')) * 24 sumtime
                   from PROD_WORKTIMEMODALSUB a ) 
group by  i_prod_worktimemodal_id          

  