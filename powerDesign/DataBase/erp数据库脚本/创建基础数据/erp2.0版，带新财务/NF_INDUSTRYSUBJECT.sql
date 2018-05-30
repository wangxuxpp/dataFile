prompt PL/SQL Developer import file
prompt Created on 2012年5月1日 by Administrator
set feedback off
set define off
prompt Disabling triggers for NF_INDUSTRYSUBJECT...
alter table NF_INDUSTRYSUBJECT disable all triggers;
prompt Deleting NF_INDUSTRYSUBJECT...
delete from NF_INDUSTRYSUBJECT;
commit;
prompt Loading NF_INDUSTRYSUBJECT...
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (370, '1291', '分期收款发出商品', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (371, '1301', '待摊费用', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (372, '1401', '长期股权投资', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (373, '140101', '股票投资', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (374, '140102', '其他股权投资', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (375, '1402', '长期债权投资', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (376, '140201', '债券投资', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (377, '140202', '其他债权投资', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (378, '1421', '长期投资减值准备', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (379, '1431', '委托贷款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (380, '143101', '本金', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (381, '143102', '利息', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (382, '143103', '减值准备', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (383, '1501', '固定资产', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (384, '1502', '累计折旧', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (385, '1505', '固定资产减值准备', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (386, '1601', '工程物资', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (387, '160101', '专用材料', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (388, '160102', '专用设备', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (389, '160103', '预付大型设备款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (390, '160104', '为生产准备的工具及器具', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (391, '1603', '在建工程', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (392, '1605', '在建工程减值准备', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (393, '1701', '固定资产清理', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (394, '1801', '无形资产', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (395, '1805', '无形资产减值准备', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (396, '1815', '未确认融资费用', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (397, '1901', '长期待摊费用', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (398, '1911', '待处理财产损溢', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (399, '191101', '待处理流动资产损溢', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (400, '191102', '待处理固定资产损溢', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (401, '2101', '短期借款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (402, '2111', '应付票据', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (403, '2121', '应付账款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (404, '2131', '预收账款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (405, '2141', '代销商品款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (406, '2151', '应付工资', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (407, '2153', '应付福利费', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (408, '2161', '应付股利', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (409, '2171', '应交税金', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (410, '217101', '应交增值税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (411, '21710101', '进项税额', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (412, '21710102', '已交税金', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (413, '21710103', '转出未交增值税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (414, '21710104', '减免税款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (415, '21710105', '销项税额', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (416, '21710106', '出口退税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (417, '21710107', '进项税额转出', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (418, '21710108', '出口抵减内销产品应纳税额', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (419, '21710109', '转出多交增值税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (420, '217102', '未交增值税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (421, '217103', '应交营业税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (422, '217104', '应交消费税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (423, '217105', '应交资源税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (424, '217106', '应交所得税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (425, '217107', '应交土地增值税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (426, '217108', '应交城市维护建设税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (427, '217109', '应交房产税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (428, '217110', '应交土地使用税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (429, '217111', '应交车船使用税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (430, '217112', '应交个人所得税', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (431, '217113', '教育附加', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (432, '217114', '地方教育发展费', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (433, '2176', '其他应交款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (434, '2181', '其他应付款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (435, '2191', '预提费用', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (436, '2201', '待转资产价值', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (437, '2211', '预计负债', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (438, '2301', '长期借款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (439, '230101', '借款本金', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (440, '230102', '借款利息', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (441, '2311', '应付债券', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (442, '231101', '债券面值', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (443, '231102', '债券溢价', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (444, '231103', '债券折价', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (445, '231104', '应计利息', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (446, '2321', '长期应付款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (447, '2331', '专项应付款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (448, '2341', '递延税款', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (449, '3101', '实收资本（或股本）', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (450, '3103', '已归还投资', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (451, '3111', '资本公积', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (452, '311101', '资本（或股本）溢价', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (453, '311102', '接受捐赠非现金资产准备', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (454, '311103', '接受现金捐赠', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (455, '311104', '股权投资准备', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (456, '311105', '拨款转入', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (457, '311106', '外币资本折算差额', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (458, '311107', '其他资本公积', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (459, '3121', '盈余公积', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (460, '312101', '法定盈余公积', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (461, '312102', '任意盈余公积', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (462, '312103', '法定公益金', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (463, '312104', '储备基金', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (464, '312105', '企业发展基金', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (465, '312106', '利润归还投资', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (466, '3131', '本年利润', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (467, '3141', '利润分配', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (468, '314101', '其他转入', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (469, '314102', '提取法定盈余公积', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 100 records committed...
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (470, '314103', '提取法定公益金', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (471, '314104', '提取储备基金', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (472, '314105', '提取企业发展基金', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (473, '314106', '提取职工奖励及福利基金', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (474, '314107', '利润归还投资', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (475, '314108', '应付优先股股利', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (476, '314109', '提取任意盈余公积', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (477, '314110', '应付普通股股利', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (478, '314111', '转作资本（或股本）的普通股股利', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (479, '314115', '未分配利润', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (480, '4101', '生产成本', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (481, '410101', '基本生产成本', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (482, '41010101', '直接材料费用', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (483, '41010102', '直接人工费用', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (484, '410102', '辅助生产成本', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (485, '4105', '制造费用', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (486, '4107', '劳务成本', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (487, '4108', '研发支出', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (488, '5101', '主营业务收入', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (489, '5102', '其他业务收入', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (490, '5201', '投资收益', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (491, '5203', '补贴收入', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (492, '5301', '营业外收入', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (493, '5401', '主营业务成本', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (494, '5402', '主营业务税金及附加', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (495, '5405', '其他业务支出', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (496, '5501', '营业费用', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (497, '5502', '管理费用', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (498, '5503', '财务费用', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (499, '5601', '营业外支出', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (500, '5701', '所得税', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (501, '5801', '以前年度损益调整', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (335, '1001', '现金', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (336, '1002', '银行存款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (337, '1009', '其他货币资金', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (338, '100901', '外埠存款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (339, '100902', '银行本票存款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (340, '100903', '银行汇票存款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (341, '100904', '信用卡', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (342, '100905', '信用证保证金', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (343, '100906', '存出投资款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (344, '1101', '短期投资', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (345, '110101', '股票', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (346, '110102', '债券', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (347, '110103', '基金', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (348, '110110', '其他', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (349, '1102', '短期投资跌价准备', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (350, '1111', '应收票据', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (351, '1121', '应收股利', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (352, '1122', '应收利息', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (353, '1131', '应收账款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (354, '1133', '其他应收款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (355, '1141', '坏账准备', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (356, '1151', '预付账款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (357, '1161', '应收补贴款', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (358, '1201', '物资采购', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (359, '1211', '原材料', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (360, '1221', '包装物', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (361, '1231', '低值易耗品', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (362, '1232', '材料成本差异', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (363, '1241', '自制半成品', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (364, '1243', '库存商品', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (365, '1244', '商品进销差价', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (366, '1251', '委托加工物资', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (367, '1261', '委托代销商品', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (368, '1271', '受托代销商品', '借', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (369, '1281', '存货跌价准备', '贷', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 167 records loaded
prompt Enabling triggers for NF_INDUSTRYSUBJECT...
alter table NF_INDUSTRYSUBJECT enable all triggers;
set feedback on
set define on
prompt Done.
