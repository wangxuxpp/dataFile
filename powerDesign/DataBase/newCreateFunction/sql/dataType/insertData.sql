drop type TYPE_MEMBERGROUP_TABLE;
drop type TYPE_MEMBERGROUP_OBJECT;


create or replace type TYPE_MEMBERGROUP_OBJECT as object(
       I_BASE_MEMBERGROUP_ID INTEGER, --������ID
       I_BASE_WAREUNIT_ID INTEGER ,   --ԭ����ID
       
       N_NUM NUMBER(16,4),            --��������
       F_ATTRITIONRATE NUMBER(12,6) , --�����
       F_UPPERRATE NUMBER(12,6),       --���������
       F_LOWRATE NUMBER(12,6),         --���������
       
       N_USERNUM NUMBER(16,6),        --ʹ������
       N_USERNUM_MAX NUMBER(12,6) ,   --ʹ����������
       N_USERNUM_MIN NUMBER(12,6),    --ʹ����������

       C_TYPE VARCHAR2(100)           --������Դ       
        );                                           
create or replace type TYPE_MEMBERGROUP_TABLE as table of TYPE_MEMBERGROUP_OBJECT;





drop type TYPE_DIE_TABLE;
drop type TYPE_DIE_OBJECT;
create or replace type TYPE_DIE_OBJECT as object(
       I_DIE_ID INTEGER,              --ģ��ID
       I_BASE_WAREUNIT_ID INTEGER ,   --ԭ����ID
       
       N_NUM NUMBER(16,4),            --��������
       F_ATTRITIONRATE NUMBER(12,6) , --�����
       F_UPPERRATE NUMBER(12,6),       --���������
       F_LOWRATE NUMBER(12,6),         --���������
       
       N_USERNUM NUMBER(16,6),        --ʹ������
       N_USERNUM_MAX NUMBER(12,6) ,   --ʹ����������
       N_USERNUM_MIN NUMBER(12,6),    --ʹ����������

       C_TYPE VARCHAR2(100)           --������Դ       
        );                                           
create or replace type TYPE_DIE_TABLE as table of TYPE_DIE_OBJECT;
