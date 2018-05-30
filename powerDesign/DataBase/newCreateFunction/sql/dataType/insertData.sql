drop type TYPE_MEMBERGROUP_TABLE;
drop type TYPE_MEMBERGROUP_OBJECT;


create or replace type TYPE_MEMBERGROUP_OBJECT as object(
       I_BASE_MEMBERGROUP_ID INTEGER, --构件组ID
       I_BASE_WAREUNIT_ID INTEGER ,   --原材料ID
       
       N_NUM NUMBER(16,4),            --需求数量
       F_ATTRITIONRATE NUMBER(12,6) , --损耗率
       F_UPPERRATE NUMBER(12,6),       --损耗率上限
       F_LOWRATE NUMBER(12,6),         --损耗率下限
       
       N_USERNUM NUMBER(16,6),        --使用数量
       N_USERNUM_MAX NUMBER(12,6) ,   --使用数量上限
       N_USERNUM_MIN NUMBER(12,6),    --使用数量下限

       C_TYPE VARCHAR2(100)           --物料来源       
        );                                           
create or replace type TYPE_MEMBERGROUP_TABLE as table of TYPE_MEMBERGROUP_OBJECT;





drop type TYPE_DIE_TABLE;
drop type TYPE_DIE_OBJECT;
create or replace type TYPE_DIE_OBJECT as object(
       I_DIE_ID INTEGER,              --模具ID
       I_BASE_WAREUNIT_ID INTEGER ,   --原材料ID
       
       N_NUM NUMBER(16,4),            --需求数量
       F_ATTRITIONRATE NUMBER(12,6) , --损耗率
       F_UPPERRATE NUMBER(12,6),       --损耗率上限
       F_LOWRATE NUMBER(12,6),         --损耗率下限
       
       N_USERNUM NUMBER(16,6),        --使用数量
       N_USERNUM_MAX NUMBER(12,6) ,   --使用数量上限
       N_USERNUM_MIN NUMBER(12,6),    --使用数量下限

       C_TYPE VARCHAR2(100)           --物料来源       
        );                                           
create or replace type TYPE_DIE_TABLE as table of TYPE_DIE_OBJECT;
