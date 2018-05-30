--创建临时表a 财务报表设置主表
drop table a cascade constraint;
create table a as
select id,
       c_type,
       i_row,
       i_column,
       i_oper_id,
       c_oper_name,
       d_insert_date,
       i_oper_modifyid,
       c_oper_modifyname,
       d_modify_date,
       i_del,
       c_aliascode
        from NF_REPORTSET where I_NF_ACCOUNT_ID=62;
        
--创建临时表b 财务报表设置子表        
drop table b cascade constraint;
create table b as         
select id,
       i_nf_reportset_id,
       i_order,
       c_subject,
       i_type,
       i_oper_id,
       c_oper_name,
       d_insert_date,
       i_oper_modifyid,
       c_oper_modifyname,
       d_modify_date,
       i_del,
       c_aliascode,
       c_valuetype
        from NF_REPORTSETSUB where I_NF_ACCOUNT_ID=62;
--备份表
drop table aback cascade constraint; 
create table  aback as select * from BASE_NF_REPORTSET;     
drop table bback cascade constraint;  
create table  bback as select * from BASE_NF_REPORTSETSUB;  
--删除报表设置基础表
delete from  BASE_NF_REPORTSET;  
delete from BASE_NF_REPORTSETSUB;     
--插入数据
insert into base_nf_reportset
  (id,
   c_type,
   i_row,
   i_column,
   i_oper_id,
   c_oper_name,
   d_insert_date,
   i_oper_modifyid,
   c_oper_modifyname,
   d_modify_date,
   i_del,
   c_aliascode)
  select id,
   c_type,
   i_row,
   i_column,
   i_oper_id,
   c_oper_name,
   d_insert_date,
   i_oper_modifyid,
   c_oper_modifyname,
   d_modify_date,
   i_del,
   c_aliascode from a;
   
insert into base_nf_reportsetsub
  (id,
   i_nf_reportset_id,
   i_order,
   c_subject,
   i_type,
   c_valuetype,
   i_oper_id,
   c_oper_name,
   d_insert_date,
   i_oper_modifyid,
   c_oper_modifyname,
   d_modify_date,
   i_del,
   c_aliascode)
select id,
   i_nf_reportset_id,
   i_order,
   c_subject,
   i_type,
   c_valuetype,
   i_oper_id,
   c_oper_name,
   d_insert_date,
   i_oper_modifyid,
   c_oper_modifyname,
   d_modify_date,
   i_del,
   c_aliascode
 from b; 
--
update base_nf_reportsetsub aa
   set aa.id =
       (select newid
          from (select id, rank() over(order by id) newid
                  from base_nf_reportsetsub) bb
            where bb.id = aa.id); 

update base_nf_reportset aa
   set aa.id =
       (select newid
          from (select id, rank() over(order by id) newid
                  from base_nf_reportset) bb
            where bb.id = aa.id); 
            
update base_nf_reportsetsub aa set aa.i_nf_reportset_id = (select newid from(
select id, dense_rank() over(order by I_NF_REPORTSET_ID) newid
                  from base_nf_reportsetsub ) bb where bb.id = aa.id)  ;                    

update base_nf_reportset aaaa set aaaa.i_oper_id =1 , aaaa.c_oper_name='admin' , aaaa.i_oper_modifyid=1 , aaaa.c_oper_modifyname='admin';
update base_nf_reportsetsub aaaa set aaaa.i_oper_id =1 , aaaa.c_oper_name='admin' , aaaa.i_oper_modifyid=1 , aaaa.c_oper_modifyname='admin';

select * from base_nf_reportset order by id;
select * from base_nf_reportsetsub order by id;




 
