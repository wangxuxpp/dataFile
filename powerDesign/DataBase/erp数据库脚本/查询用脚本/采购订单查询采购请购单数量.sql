select * from (
select a.*,
       nvl(b.schedulecount, 0) schedulecount,
       ceil((a.acquirecount - nvl(b.schedulecount, 0)) /
            (c.f_swap * c.N_FIXEDCOUNT)) * c.N_FIXEDCOUNT plancount,
       c.N_FIXEDCOUNT,
       c.f_swap,
       e.c_code,
       e.c_name,
       e.c_layout,
       c.i_base_wareunit_id planwareid,
       d.buyclientname,
       d.n_average_count,
       d.i_is_qualification,
       d.n_newprice,
       d.n_averageprice,
       d.f_rate
  from (select a.i_ware_id,
               a.c_maindate emit_date,
               nvl(sum(a.n_num * a.unit_swap), 0) acquirecount
          from VIEW_BUY_ACQUIREALL a
         where a.I_STATE_FLAG = 2
         group by a.i_ware_id, a.c_maindate) a
  left join (select b.i_ware_id,
                    b.c_maindate emit_date,
                    nvl(sum(b.n_num * b.unit_swap), 0) schedulecount
               from VIEW_BUY_SCHEDULEALL b
              where b.i_maindel <> 1
              group by b.i_ware_id, b.c_maindate) b on a.i_ware_id =
                                                       b.i_ware_id
                                                   and a.emit_date =
                                                       b.emit_date
 inner join (select a.*, b.f_swap
               from BASE_WAREPLANPROPERTY a
              inner join base_wareunit b on a.i_base_wareunit_id = b.id) c on a.i_ware_id =
                                                                              c.i_base_ware_id
 inner join (select a.*, b.c_name buyclientname
               from BASE_WAREPURCHASEINFO a
              inner join buy_client b on a.i_buy_client_id = b.id) d on a.i_ware_id =
                                                                        d.i_base_ware_id
 inner join base_wareunit e on c.i_base_wareunit_id = e.id) aa
 where aa.acquirecount-aa.schedulecount >0