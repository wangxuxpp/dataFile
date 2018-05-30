drop type type_subject_table;
/
drop type type_subject_object;
/

create or replace type type_subject_object as object(
       I_NF_ACCOUNT_ID INT ,
       C_SUBJECT VARCHAR2(100), 
       C_NAME VARCHAR2(100), 
       C_DIRECT VARCHAR2(10), 
       I_BASE_DEPT_ID INT, 
       I_HUMAN_EMPLOYEE_ID INT, 
       I_BUY_CLIENT_ID INT, 
       I_SELL_CLIENT_ID INT, 
       I_NF_PROJECT_ID INT, 
       I_BASE_WARE_ID INT, 
       I_NF_BANK_ID INT, 
       I_NF_RATE_ID INT, 
       I_BASE_STOCKCLASS_ID INT, 
       I_PROD_WORKSHOP_ID INT,
       C_SUBJECTFIRSTCHAR VARCHAR(10),
       C_SUBJECTCLASSNAME VARCHAR(100),
       C_BASE_DEPT_ID VARCHAR(100),
       C_HUMAN_EMPLOYEE_ID VARCHAR(100),
       C_BUY_CLIENT_ID VARCHAR(100),
       C_SELL_CLIENT_ID VARCHAR(100),
       C_NF_PROJECT_ID VARCHAR(100),
       C_BASE_WARE_ID VARCHAR(100),
       C_LAYOUT VARCHAR(100),
       C_NF_BANK_ID VARCHAR(100),
       C_NF_RATE_ID VARCHAR(100),
       C_BASE_STOCKCLASS_ID VARCHAR(100),
       C_PROD_WORKSHOP_ID VARCHAR(100),
       c_nf_account_name VARCHAR(100),
       d_nf_account_date date,
       i_nf_account_default int,
       c_nf_account_code VARCHAR(100)
);
/
create or replace type type_subject_table as table of type_subject_object;
/

drop type type_leger_table;
/
drop type type_leger_object;
/

create or replace type type_leger_object as object(
       D_DATE date,
       I_NF_ACCOUNT_ID INT ,                                        
       C_SUBJECT VARCHAR2(100),                                     
       C_NAME VARCHAR2(100),                                        
       C_DIRECT VARCHAR2(10),                                       
       I_BASE_DEPT_ID INT,                                          
       I_HUMAN_EMPLOYEE_ID INT,                                     
       I_BUY_CLIENT_ID INT,                                         
       I_SELL_CLIENT_ID INT,                                        
       I_NF_PROJECT_ID INT,                                         
       I_BASE_WARE_ID INT,                                          
       I_NF_BANK_ID INT,                                            
       I_NF_RATE_ID INT,                                            
       I_BASE_STOCKCLASS_ID INT,                                    
       I_PROD_WORKSHOP_ID INT,                                      
       C_SUBJECTFIRSTCHAR VARCHAR(10),                              
       C_SUBJECTCLASSNAME VARCHAR(100),                             
       C_BASE_DEPT_ID VARCHAR(100),                                 
       C_HUMAN_EMPLOYEE_ID VARCHAR(100),                            
       C_BUY_CLIENT_ID VARCHAR(100),                                
       C_SELL_CLIENT_ID VARCHAR(100),                               
       C_NF_PROJECT_ID VARCHAR(100),                                
       C_BASE_WARE_ID VARCHAR(100),                                 
       C_LAYOUT VARCHAR(100),                                       
       C_NF_BANK_ID VARCHAR(100),                                   
       C_NF_RATE_ID VARCHAR(100),                                   
       C_BASE_STOCKCLASS_ID VARCHAR(100),                           
       C_PROD_WORKSHOP_ID VARCHAR(100),                             
       c_nf_account_name VARCHAR(100),                              
       d_nf_account_date date,                                      
       i_nf_account_default int,                                    
       c_nf_account_code VARCHAR(100),                              
       N_BORROWBEGINCOUNT   NUMBER(16,4),
       N_BORROWBEGINMONEY   NUMBER(16,4),
       N_LOANBEGINCOUNT     NUMBER(16,4),
       N_LOANBEGINMONEY     NUMBER(16,4),
       N_BORROWNOWCOUNT     NUMBER(16,4),
       N_BORROWNOWMONEY     NUMBER(16,4),
       N_LOANNOWCOUNT       NUMBER(16,4),
       N_LOANNOWMONEY       NUMBER(16,4),
       N_BORROWCOUNT     NUMBER(16,4),
       N_BORROWMONEY     NUMBER(16,4),
       N_LOANCOUNT       NUMBER(16,4),
       N_LOANMONEY       NUMBER(16,4)
);
/
create or replace type type_leger_table as table of type_leger_object;
/