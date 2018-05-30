drop type type_bomsubware_table;
/
drop type type_bomsubware_object;
/

create or replace type type_bomsubware_object as object(
       ID INTEGER,
       I_PROD_WAREBOM_ID INTEGER , 
       I_ACQUIREWARESTOCK  INTEGER , --车间领料库房                                      
       I_BASE_WARE_ID INTEGER,                                     
       I_BASE_WAREUNIT_ID INTEGER,
       WARENAME VARCHAR2(500),
       UNIT_LAYOUT VARCHAR2(500),
       UNIT_NAME VARCHAR2(200),
       UNIT_SWAP NUMBER(16,4),
       C_ALIASCODE VARCHAR2(200),
       N_BATCHCOUNT NUMBER(16,4),    --出库最小单位批量
       F_REQUIREMENT NUMBER(16,4),                 
       F_ATTRITIONRATE NUMBER(16,4), --损耗率          
       F_UPPERRATE NUMBER(16,4),     --损耗率上限           
       F_LOWRATE NUMBER(16,4),       --损耗率下限         
       I_LEVEL INTEGER,              --层级                                                
       N_REQUIREMENT NUMBER(16,4),   --理论数量
       N_UPPERRATE NUMBER(16,4),     --理论数量上限
       N_LOWRATE NUMBER(16,4),       --理论数量下限   
       I_BOMID    INTEGER,           --如果该物品是中间体 显示BOM主表iD ，原材料该值为0
       C_WARETYPE VARCHAR2(100),     --物品类型 【BOM物品】【替换物品】
       C_TYPE VARCHAR2(100)          --物料来源
        );                                           

/
create or replace type type_bomsubware_table as table of type_bomsubware_object;
/