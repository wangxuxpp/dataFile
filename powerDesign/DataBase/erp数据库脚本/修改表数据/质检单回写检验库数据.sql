update STOCK_CHECKINGSUB a
set a.F_QUALIFIED = (select F_QUALIFIED from (
select aa.F_QUALIFIED,
       aa.F_NOTQUALIFIED,
       aa.C_DISPOSENOTQUALIFIED,
       bb.I_EMITBUSINESSSUB_ID
  from QUALITY_EXAMINESUB aa
 inner join QUALITY_FORWARDEXAMINESUB bb on aa.I_QUALITY_FORWARDEXAMINESUB_ID =
                                            bb.id
                                        and bb.I_EMITBUSINESSSUB_ID <> 0)
 where I_EMITBUSINESSSUB_ID = a.id),
 
 a.F_NOTQUALIFIED =  (select F_NOTQUALIFIED
          from (select aa.F_QUALIFIED,
                       aa.F_NOTQUALIFIED,
                       aa.C_DISPOSENOTQUALIFIED,
                       bb.I_EMITBUSINESSSUB_ID
                  from QUALITY_EXAMINESUB aa
                 inner join QUALITY_FORWARDEXAMINESUB bb on aa.I_QUALITY_FORWARDEXAMINESUB_ID =
                                                            bb.id
                                                        and bb.I_EMITBUSINESSSUB_ID <> 0)
         where I_EMITBUSINESSSUB_ID = a.id),
         
 a.C_DISPOSENOTQUALIFIED =
                (select C_DISPOSENOTQUALIFIED
                  from (select aa.F_QUALIFIED,
                         aa.F_NOTQUALIFIED,
                         aa.C_DISPOSENOTQUALIFIED,
                         bb.I_EMITBUSINESSSUB_ID
                    from QUALITY_EXAMINESUB aa
                   inner join QUALITY_FORWARDEXAMINESUB bb on aa.I_QUALITY_FORWARDEXAMINESUB_ID =
                                                              bb.id
                                                          and bb.I_EMITBUSINESSSUB_ID <> 0)
                 where I_EMITBUSINESSSUB_ID = a.id)
where id in (select bb.I_EMITBUSINESSSUB_ID
                    from QUALITY_EXAMINESUB aa
                   inner join QUALITY_FORWARDEXAMINESUB bb on aa.I_QUALITY_FORWARDEXAMINESUB_ID =
                                                              bb.id
                                                          and bb.I_EMITBUSINESSSUB_ID <> 0
                                                          and aa.I_QUALITY_EXAMINE_ID =1 )   
                                                          
--------------------------------------------------------------------------------------------------                                                         
update STOCK_CHECKINGSUB c
   set (c.f_qualified, c.f_notqualified, c.c_disposenotqualified) = 
   (select a.f_qualified,
          a.f_notqualified,
          a.c_disposenotqualified
     from QUALITY_EXAMINESUB a
    inner join QUALITY_FORWARDEXAMINESUB b on a.i_quality_forwardexaminesub_id = b.id
    where b.i_emitbusinesssub_id = c.id)
where id in (select bb.I_EMITBUSINESSSUB_ID                    from QUALITY_EXAMINESUB aa
                   inner join QUALITY_FORWARDEXAMINESUB bb on aa.I_QUALITY_FORWARDEXAMINESUB_ID =
                                                              bb.id
                                                          and bb.I_EMITBUSINESSSUB_ID <> 0
                                                          and aa.I_QUALITY_EXAMINE_ID =1 )     
                                                          
--------------------------------------------------------------------------------------------------                                                           
update STOCK_CHECKINGSUB a
   set (a.F_QUALIFIED,
       
       a.F_NOTQUALIFIED,
       
       a.C_DISPOSENOTQUALIFIED) = (select nvl(aa.F_QUALIFIED, 0),
                                          nvl(aa.F_NOTQUALIFIED, 0),
                                          nvl(aa.C_DISPOSENOTQUALIFIED, 0)
                                     from QUALITY_EXAMINESUB aa
                                    inner join QUALITY_FORWARDEXAMINESUB bb on aa.I_QUALITY_FORWARDEXAMINESUB_ID =
                                                                               bb.id
                                                                           and bb.I_EMITBUSINESSSUB_ID <> 0
                                                                           where bb.I_EMITBUSINESSSUB_ID = a.id)
 where id in
       (select bb.I_EMITBUSINESSSUB_ID
          from QUALITY_EXAMINESUB aa
         inner join QUALITY_FORWARDEXAMINESUB bb on aa.I_QUALITY_FORWARDEXAMINESUB_ID =
                                                    bb.id
                                                and bb.I_EMITBUSINESSSUB_ID <> 0
                                                and aa.I_QUALITY_EXAMINE_ID = 1)                                                           
                                                          