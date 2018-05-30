drop type type_bomsubware_table;
/
drop type type_bomsubware_object;
/

create or replace type type_bomsubware_object as object(
       ID INTEGER,
       I_PROD_WAREBOM_ID INTEGER , 
       I_ACQUIREWARESTOCK  INTEGER , --�������Ͽⷿ                                      
       I_BASE_WARE_ID INTEGER,                                     
       I_BASE_WAREUNIT_ID INTEGER,
       WARENAME VARCHAR2(500),
       UNIT_LAYOUT VARCHAR2(500),
       UNIT_NAME VARCHAR2(200),
       UNIT_SWAP NUMBER(16,4),
       C_ALIASCODE VARCHAR2(200),
       N_BATCHCOUNT NUMBER(16,4),    --������С��λ����
       F_REQUIREMENT NUMBER(16,4),                 
       F_ATTRITIONRATE NUMBER(16,4), --�����          
       F_UPPERRATE NUMBER(16,4),     --���������           
       F_LOWRATE NUMBER(16,4),       --���������         
       I_LEVEL INTEGER,              --�㼶                                                
       N_REQUIREMENT NUMBER(16,4),   --��������
       N_UPPERRATE NUMBER(16,4),     --������������
       N_LOWRATE NUMBER(16,4),       --������������   
       I_BOMID    INTEGER,           --�������Ʒ���м��� ��ʾBOM����iD ��ԭ���ϸ�ֵΪ0
       C_WARETYPE VARCHAR2(100),     --��Ʒ���� ��BOM��Ʒ�����滻��Ʒ��
       C_TYPE VARCHAR2(100)          --������Դ
        );                                           

/
create or replace type type_bomsubware_table as table of type_bomsubware_object;
/