prompt PL/SQL Developer import file
prompt Created on 2012��5��1�� by Administrator
set feedback off
set define off
prompt Disabling triggers for NF_INDUSTRYSUBJECT...
alter table NF_INDUSTRYSUBJECT disable all triggers;
prompt Deleting NF_INDUSTRYSUBJECT...
delete from NF_INDUSTRYSUBJECT;
commit;
prompt Loading NF_INDUSTRYSUBJECT...
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (370, '1291', '�����տ����Ʒ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (371, '1301', '��̯����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (372, '1401', '���ڹ�ȨͶ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (373, '140101', '��ƱͶ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (374, '140102', '������ȨͶ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (375, '1402', '����ծȨͶ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (376, '140201', 'ծȯͶ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (377, '140202', '����ծȨͶ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (378, '1421', '����Ͷ�ʼ�ֵ׼��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (379, '1431', 'ί�д���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (380, '143101', '����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (381, '143102', '��Ϣ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (382, '143103', '��ֵ׼��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (383, '1501', '�̶��ʲ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (384, '1502', '�ۼ��۾�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (385, '1505', '�̶��ʲ���ֵ׼��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (386, '1601', '��������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (387, '160101', 'ר�ò���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (388, '160102', 'ר���豸', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (389, '160103', 'Ԥ�������豸��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (390, '160104', 'Ϊ����׼���Ĺ��߼�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (391, '1603', '�ڽ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (392, '1605', '�ڽ����̼�ֵ׼��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (393, '1701', '�̶��ʲ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (394, '1801', '�����ʲ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (395, '1805', '�����ʲ���ֵ׼��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (396, '1815', 'δȷ�����ʷ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (397, '1901', '���ڴ�̯����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (398, '1911', '������Ʋ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (399, '191101', '�����������ʲ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (400, '191102', '������̶��ʲ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (401, '2101', '���ڽ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (402, '2111', 'Ӧ��Ʊ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (403, '2121', 'Ӧ���˿�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (404, '2131', 'Ԥ���˿�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (405, '2141', '������Ʒ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (406, '2151', 'Ӧ������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (407, '2153', 'Ӧ��������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (408, '2161', 'Ӧ������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (409, '2171', 'Ӧ��˰��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (410, '217101', 'Ӧ����ֵ˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (411, '21710101', '����˰��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (412, '21710102', '�ѽ�˰��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (413, '21710103', 'ת��δ����ֵ˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (414, '21710104', '����˰��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (415, '21710105', '����˰��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (416, '21710106', '������˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (417, '21710107', '����˰��ת��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (418, '21710108', '���ڵּ�������ƷӦ��˰��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (419, '21710109', 'ת���ཻ��ֵ˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (420, '217102', 'δ����ֵ˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (421, '217103', 'Ӧ��Ӫҵ˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (422, '217104', 'Ӧ������˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (423, '217105', 'Ӧ����Դ˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (424, '217106', 'Ӧ������˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (425, '217107', 'Ӧ��������ֵ˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (426, '217108', 'Ӧ������ά������˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (427, '217109', 'Ӧ������˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (428, '217110', 'Ӧ������ʹ��˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (429, '217111', 'Ӧ������ʹ��˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (430, '217112', 'Ӧ����������˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (431, '217113', '��������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (432, '217114', '�ط�������չ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (433, '2176', '����Ӧ����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (434, '2181', '����Ӧ����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (435, '2191', 'Ԥ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (436, '2201', '��ת�ʲ���ֵ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (437, '2211', 'Ԥ�Ƹ�ծ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (438, '2301', '���ڽ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (439, '230101', '����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (440, '230102', '�����Ϣ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (441, '2311', 'Ӧ��ծȯ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (442, '231101', 'ծȯ��ֵ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (443, '231102', 'ծȯ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (444, '231103', 'ծȯ�ۼ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (445, '231104', 'Ӧ����Ϣ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (446, '2321', '����Ӧ����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (447, '2331', 'ר��Ӧ����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (448, '2341', '����˰��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (449, '3101', 'ʵ���ʱ�����ɱ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (450, '3103', '�ѹ黹Ͷ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (451, '3111', '�ʱ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (452, '311101', '�ʱ�����ɱ������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (453, '311102', '���ܾ������ֽ��ʲ�׼��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (454, '311103', '�����ֽ����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (455, '311104', '��ȨͶ��׼��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (456, '311105', '����ת��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (457, '311106', '����ʱ�������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (458, '311107', '�����ʱ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (459, '3121', 'ӯ�๫��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (460, '312101', '����ӯ�๫��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (461, '312102', '����ӯ�๫��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (462, '312103', '���������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (463, '312104', '��������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (464, '312105', '��ҵ��չ����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (465, '312106', '����黹Ͷ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (466, '3131', '��������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (467, '3141', '�������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (468, '314101', '����ת��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (469, '314102', '��ȡ����ӯ�๫��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 100 records committed...
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (470, '314103', '��ȡ���������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (471, '314104', '��ȡ��������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (472, '314105', '��ȡ��ҵ��չ����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (473, '314106', '��ȡְ����������������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (474, '314107', '����黹Ͷ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (475, '314108', 'Ӧ�����ȹɹ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (476, '314109', '��ȡ����ӯ�๫��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (477, '314110', 'Ӧ����ͨ�ɹ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (478, '314111', 'ת���ʱ�����ɱ�������ͨ�ɹ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (479, '314115', 'δ��������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (480, '4101', '�����ɱ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (481, '410101', '���������ɱ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (482, '41010101', 'ֱ�Ӳ��Ϸ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (483, '41010102', 'ֱ���˹�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (484, '410102', '���������ɱ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (485, '4105', '�������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (486, '4107', '����ɱ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (487, '4108', '�з�֧��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (488, '5101', '��Ӫҵ������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (489, '5102', '����ҵ������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (490, '5201', 'Ͷ������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (491, '5203', '��������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (492, '5301', 'Ӫҵ������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (493, '5401', '��Ӫҵ��ɱ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (494, '5402', '��Ӫҵ��˰�𼰸���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (495, '5405', '����ҵ��֧��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (496, '5501', 'Ӫҵ����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (497, '5502', '�������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (498, '5503', '�������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (499, '5601', 'Ӫҵ��֧��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (500, '5701', '����˰', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (501, '5801', '��ǰ����������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (335, '1001', '�ֽ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (336, '1002', '���д��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (337, '1009', '���������ʽ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (338, '100901', '�Ⲻ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (339, '100902', '���б�Ʊ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (340, '100903', '���л�Ʊ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (341, '100904', '���ÿ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (342, '100905', '����֤��֤��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (343, '100906', '���Ͷ�ʿ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (344, '1101', '����Ͷ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (345, '110101', '��Ʊ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (346, '110102', 'ծȯ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (347, '110103', '����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (348, '110110', '����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (349, '1102', '����Ͷ�ʵ���׼��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (350, '1111', 'Ӧ��Ʊ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (351, '1121', 'Ӧ�չ���', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (352, '1122', 'Ӧ����Ϣ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (353, '1131', 'Ӧ���˿�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (354, '1133', '����Ӧ�տ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (355, '1141', '����׼��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (356, '1151', 'Ԥ���˿�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (357, '1161', 'Ӧ�ղ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (358, '1201', '���ʲɹ�', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (359, '1211', 'ԭ����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (360, '1221', '��װ��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (361, '1231', '��ֵ�׺�Ʒ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (362, '1232', '���ϳɱ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (363, '1241', '���ư��Ʒ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (364, '1243', '�����Ʒ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (365, '1244', '��Ʒ�������', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (366, '1251', 'ί�мӹ�����', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (367, '1261', 'ί�д�����Ʒ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (368, '1271', '���д�����Ʒ', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
insert into NF_INDUSTRYSUBJECT (id, c_subject, c_name, c_direct, i_oper_id, c_oper_name, d_insert_date, i_oper_modifyid, c_oper_modifyname, d_modify_date, i_del, c_aliascode)
values (369, '1281', '�������׼��', '��', 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 1, 'admin', to_date('26-03-2012 13:52:09', 'dd-mm-yyyy hh24:mi:ss'), 0, 'cnull');
commit;
prompt 167 records loaded
prompt Enabling triggers for NF_INDUSTRYSUBJECT...
alter table NF_INDUSTRYSUBJECT enable all triggers;
set feedback on
set define on
prompt Done.
