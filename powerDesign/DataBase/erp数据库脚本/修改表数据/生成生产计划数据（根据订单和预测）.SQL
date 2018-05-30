select '销售订单' c_type,
       a.i_base_wareunit_id,
       a.i_ware_id,
       sum(nvl(a.f_num, 0) - nvl(a.f_realnum, 0)),
       sum((nvl(a.f_num, 0) - nvl(a.f_realnum, 0))* a.UNIT_SWAP) 
  from VIEW_SELL_SCHEDULESUB a
 inner join VIEW_SELL_SCHEDULE b on a.i_sell_schedule_id = b.id
                                and b.I_STATE_FLAG = 2
                                and nvl(a.f_num, 0) - nvl(a.f_realnum, 0) > 0
 group by a.i_base_wareunit_id ,a.i_ware_id
union all
select '预测单' c_type,
       a.i_base_wareunit_id,
       a.i_ware_id,
       sum(nvl(a.f_num, 0) - nvl(a.N_REALNUM, 0)),
       sum((nvl(a.f_num, 0) - nvl(a.N_REALNUM, 0))* a.UNIT_SWAP)
  from VIEW_PROD_FORECASTSUB a
 inner join VIEW_PROD_FORECAST b on a.i_prod_forecast_id = b.id
                                and b.I_STATE_FLAG = 2
                                and nvl(a.f_num, 0) - nvl(a.N_REALNUM, 0) > 0
 group by a.i_base_wareunit_id ,a.i_ware_id