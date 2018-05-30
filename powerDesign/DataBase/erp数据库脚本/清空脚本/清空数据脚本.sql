delete from STOCK_WARESTOCKING;
       select * from STOCK_WARESTOCKING;  --;  --TABLE  库房现有库存表
delete from STOCK_WAREOPERLOG;
       select * from STOCK_WAREOPERLOG;  --;  --TABLE  库存物品操作日志表
delete from STOCK_TRANSFERSUB;
       select * from STOCK_TRANSFERSUB;  --;  --TABLE  库房库存调拨子表
--select * from STOCK_TRANSFERCLASS;  --;  --TABLE  库房库存调拨类型
delete from STOCK_TRANSFER;
       select * from STOCK_TRANSFER;  --;  --TABLE  库房库存调拨表
--select * from STOCK_POSITION;  --;  --TABLE  库房仓位
delete from STOCK_OUTSTOCKSUB;
       select * from STOCK_OUTSTOCKSUB;  --;  --TABLE  库房出库单子表
--select * from STOCK_OUTSTOCKCLASS;  --;  --TABLE  库房出库单类型
delete from STOCK_OUTSTOCK;
       select * from STOCK_OUTSTOCK;  --;  --TABLE  库房出库单
delete from STOCK_INSTOCKSUB;
       select * from STOCK_INSTOCKSUB;  --  ;  --TABLE  库房入库单子表
--select * from STOCK_INSTOCKCLASS;  --  ;  --TABLE  库房入库单类型
delete from STOCK_INSTOCK;
       select * from STOCK_INSTOCK;  --  ;  --TABLE  库房入库单
delete from STOCK_FAILEDWARESUB;
       select * from STOCK_FAILEDWARESUB;  --  ;  --TABLE  库房不合格物品入库单子表
delete from STOCK_FAILEDWARE;
       select * from STOCK_FAILEDWARE  ;  --TABLE  库房不合格物品入库单
delete from STOCK_CHECKINGSUB;       
        select * from STOCK_CHECKINGSUB  ;  --TABLE  库房待检库子表
delete from STOCK_CHECKING;        
        select * from STOCK_CHECKING  ;  --TABLE  库房待检库主表
delete from SELL_WARENOTIFICATIONSUB;        
        select * from SELL_WARENOTIFICATIONSUB  ;  --TABLE  销售发货通知单明细
delete from SELL_WARENOTIFICATION;        
        select * from SELL_WARENOTIFICATION  ;  --TABLE  "销售到货通知单主表"
        --select * from SELL_USERPORTAGEMODEL  ;  --TABLE  "保存客户运费结算方式"
        --select * from SELL_TAXUSERINFO  ;  --TABLE  "开增值税用户信息"
delete from SELL_SENDWARECOMMANDSUB;        
        select * from SELL_SENDWARECOMMANDSUB  ;  --TABLE  "销售发货指令明细"
delete from SELL_SENDWARECOMMANDOFSUB;        
        select * from SELL_SENDWARECOMMANDOFSUB  ;  --TABLE  办公室发货指令明细
delete from SELL_SENDWARECOMMANDOF;        
        select * from SELL_SENDWARECOMMANDOF  ;  --TABLE  办公室发货指令
delete from SELL_SENDWARECOMMAND;        
        select * from SELL_SENDWARECOMMAND  ;  --TABLE  销售发货指令主表
delete from SELL_SENDMARK;        
        select * from SELL_SENDMARK  ;  --TABLE  销售发货信息
delete from SELL_SCHEDULESUB;        
        select * from SELL_SCHEDULESUB  ;  --TABLE  销售订单明细表
delete from SELL_SCHEDULE;        
        select * from SELL_SCHEDULE  ;  --TABLE  "销售订单主表"
delete from SELL_QUOTEDPRICESUB;        
        select * from SELL_QUOTEDPRICESUB  ;  --TABLE  商品报价明细
delete from SELL_QUOTEDPRICE;        
        select * from SELL_QUOTEDPRICE  ;  --TABLE  "商品报价主表"
delete from SELL_PRICE;        
        select * from SELL_PRICE  ;  --TABLE  商品价格表维护
delete from SELL_PORTAGESUB;        
        select * from SELL_PORTAGESUB  ;  --TABLE  销售运费明细表
delete from SELL_PORTAGE;        
        select * from SELL_PORTAGE  ;  --TABLE  销售运费主表 
delete from SELL_PLANSUB;        
        select * from SELL_PLANSUB  ;  --TABLE  销售年销售计划明细
delete from SELL_PLAN;        
        select * from SELL_PLAN  ;  --TABLE  销售年销售计划 
delete from SELL_INVOICESUB;        
        select * from SELL_INVOICESUB  ;  --TABLE  销售发票申请表子表
delete from SELL_INVOICE;        
        select * from SELL_INVOICE  ;  --TABLE  销售发票申请表
delete from SELL_CONTRACT;        
        select * from SELL_CONTRACT  ;  --TABLE  销售合同
        --select * from SELL_COMMANDTYPE ;  --TABLE  "销售指令类型"
        --select * from SELL_CLIENTTYPE  ;  --TABLE  销售客户类型
delete from SELL_CLIENTREWARD;        
        select * from SELL_CLIENTREWARD  ;  --TABLE  "销售客户奖励记录表"
        --select * from SELL_CLIENTLEVEL  ;  --TABLE  "按客户合作信誉拟定等级"
        --select * from SELL_CLIENTGROUP  ;  --TABLE  "按客户性质形成的一类客户（由用户自己定义）"
        --select * from SELL_CLIENT  ;  --TABLE  "销售客户基本信息"
delete from SELL_BADRECORD;        
        select * from SELL_BADRECORD  ;  --TABLE  销售不良记录
delete from SELL_BACKWARESUB;        
        select * from SELL_BACKWARESUB  ;  --TABLE  销售退货子表
delete from SELL_BACKWARESUB;        
        select * from SELL_BACKWARE  ;  --TABLE  销售退货
delete from QUALITY_RETENTIONSAMTESTSUB;        
        select * from QUALITY_RETENTIONSAMTESTSUB  ;  --TABLE  保留样品检测单子表
delete from QUALITY_RETENTIONSAMTEST;        
        select * from QUALITY_RETENTIONSAMTEST  ;  --TABLE  保留样品检测单
delete from QUALITY_RETENTIONSAMPLANSUB;         
        select * from QUALITY_RETENTIONSAMPLANSUB  ;  --TABLE  保留样品检测计划单子表
delete from QUALITY_RETENTIONSAMPLAN;        
        select * from QUALITY_RETENTIONSAMPLAN  ;  --TABLE  保留样品检测计划单
delete from QUALITY_RETENTIONSAM;        
        select * from QUALITY_RETENTIONSAM  ;  --TABLE  保留样品档案
        --select * from QUALITY_RESULT  ;  --TABLE  质检结果
delete from QUALITY_REPORTSUB;        
        select * from QUALITY_REPORTSUB  ;  --TABLE  检验报告单子表
delete from QUALITY_REPORT;        
        select * from QUALITY_REPORT  ;  --TABLE  检验报告单
       
        --select * from QUALITY_PROGRAMSUB  ;  --TABLE  检验方案子表       
        --select * from QUALITY_PROGRAM  ;  --TABLE  检验方案
        --select * from QUALITY_OPERATOR  ;  --TABLE  质检员
delete from QUALITY_LABWARE_SCRAP;        
        select * from QUALITY_LABWARE_SCRAP  ;  --TABLE  实验器皿报废单
delete from QUALITY_LABWARE_OUTPUT;        
        select * from QUALITY_LABWARE_OUTPUT  ;  --TABLE  实验器皿归库单
delete from QUALITY_LABWARE_INPUT;        
        select * from QUALITY_LABWARE_INPUT  ;  --TABLE  实验器皿领用单
delete from QUALITY_LABWARE;        
        select * from QUALITY_LABWARE  ;  --TABLE  实验器皿台账表
        --select * from QUALITY_ITEMS  ;  --TABLE  质量检测项目列表
delete from QUALITY_FORWARDEXAMINESUB;        
        select * from QUALITY_FORWARDEXAMINESUB  ;  --TABLE  请验单子表
delete from QUALITY_FORWARDEXAMINE;        
        select * from QUALITY_FORWARDEXAMINE  ;  --TABLE  质检请验单
delete from QUALITY_EXAMINESUB;        
        select * from QUALITY_EXAMINESUB  ;  --TABLE  "质检单子表"
delete from QUALITY_EXAMINE;        
        select * from QUALITY_EXAMINE  ;  --TABLE  质检单
delete from PROD_WORKWARESUB;        
        select * from PROD_WORKWARESUB  ;  --TABLE  班组领料子表
        --select * from PROD_WORKWARECLASS  ;  --TABLE  班组领料类型
delete from PROD_WORKWARE;        
        select * from PROD_WORKWARE  ;  --TABLE  班组领料
        --select * from PROD_WORKTIMEMODALSUB  ;  --TABLE  生产班制子表
        --select * from PROD_WORKTIMEMODAL  ;  --TABLE  生产班制表
delete from PROD_WORKSWAPSUB;        
        select * from PROD_WORKSWAPSUB  ;  --TABLE  班组交接单子表
delete from PROD_WORKSWAP;        
        select * from PROD_WORKSWAP  ;  --TABLE  班组交接单
        --select * from PROD_WORKSHOPSTOCK  ;  --TABLE  车间库房
        --select * from PROD_WORKSHOPOPER  ;  --TABLE  车间人员表
        --select * from PROD_WORKSHOP  ;  --TABLE  车间表
        --select * from PROD_WORKPROCESS  ;  --TABLE  生产工序表
delete from PROD_WORKMAKE;        
        select * from PROD_WORKMAKE  ;  --TABLE  生产加工单
        --select * from PROD_WORKGROUPSUB  ;  --TABLE  班组表人员明细
        --select * from PROD_WORKGROUP  ;  --TABLE  班组
        --select * from PROD_WORKERCLASS  ;  --TABLE  "工种表"
        --select * from PROD_WORKCENTER  ;  --TABLE  生产工作中心
delete from PROD_WORKBACKWARESUB;        
        select * from PROD_WORKBACKWARESUB  ;  --TABLE  班组退料单子表
delete from PROD_WORKBACKWARE;        
        select * from PROD_WORKBACKWARE  ;  --TABLE  班组退料单
delete from PROD_WATERTESTSUB;        
        select * from PROD_WATERTESTSUB  ;  --TABLE  制水检测单子表
delete from PROD_WATERTESTPLANSUB;        
        select * from PROD_WATERTESTPLANSUB  ;  --TABLE  制水检测计划单子表
delete from PROD_WATERTESTPLAN;        
        select * from PROD_WATERTESTPLAN  ;  --TABLE  制水检测计划单
delete from PROD_WATERTEST;        
        select * from PROD_WATERTEST  ;  --TABLE  制水检测单
        --select * from PROD_WAREBOMSUBSIDIARY  ;  --TABLE  物品BOM附属物品
        --select * from PROD_WAREBOMSUB  ;  --TABLE  生产物品BOM子表
        --select * from PROD_WAREBOM  ;  --TABLE  "物品BOM"
delete from PROD_SUBSIDIARYWARE;        
        select * from PROD_SUBSIDIARYWARE  ;  --TABLE  附属物品完工单
delete from PROD_STARTWORING;        
        select * from PROD_STARTWORING  ;  --TABLE  生产派工单
delete from PROD_SCHEDULEWAREMIDDLE;        
        select * from PROD_SCHEDULEWAREMIDDLE  ;  --TABLE  根据生产计划物品生成的中间体
delete from PROD_SCHEDULEWAREATOMIC;        
        select * from PROD_SCHEDULEWAREATOMIC  ;  --TABLE  根据生产计划物品生成的原材料
delete from PROD_SCHEDULESUB;        
        select * from PROD_SCHEDULESUB  ;  --TABLE  生产计划子表
delete from PROD_SCHEDULE;        
        select * from PROD_SCHEDULE  ;  --TABLE  生产计划主表
delete from PROD_REVERSEFINISHEDWARE;
        select * from PROD_REVERSEFINISHEDWARE  ;  --TABLE  返工完工单【审核后，生成待检库，入库单，请验单】
delete from PROD_REVERSECOMMAND;        
        select * from PROD_REVERSECOMMAND  ;  --TABLE  返工生产指令
delete from PROD_REVERSEACQUIREWARESUB;        
        select * from PROD_REVERSEACQUIREWARESUB  ;  --TABLE  返工生产指令领料单子表
delete from PROD_REVERSEACQUIREWARE;        
        select * from PROD_REVERSEACQUIREWARE  ;  --TABLE  "返工生产指令领料单【该单据审核后，直接生成出库单】"
delete from PROD_REUSEWARESUB;        
        select * from PROD_REUSEWARESUB  ;  --TABLE  生产再利用回收单子表
delete from PROD_REUSEWARE;        
        select * from PROD_REUSEWARE  ;  --TABLE  生产再利用回收单【审核后生成入库单】
delete from PROD_REUSEFINISHEDWARE;        
        select * from PROD_REUSEFINISHEDWARE  ;  --TABLE  生产再利用完工单【审核后，生成待检库，入库单，请验单】
delete from PROD_REUSECOMMAND;        
        select * from PROD_REUSECOMMAND  ;  --TABLE  生产再利用生产指令
delete from PROD_REUSEACQUIREWARESUB;        
        select * from PROD_REUSEACQUIREWARESUB  ;  --TABLE  生产再利用领料单子表
delete from PROD_REUSEACQUIREWARE;        
        select * from PROD_REUSEACQUIREWARE  ;  --TABLE  "生产再利用领料单【该单据审核后，直接生成出库单】"
delete from PROD_RCCPSUMSUB;        
        select * from PROD_RCCPSUMSUB  ;  --TABLE  生产粗能力计划中间计算子表
delete from PROD_RCCPSUMMAIN;        
        select * from PROD_RCCPSUMMAIN  ;  --TABLE  生产粗能力计划中间计算主表
delete from PROD_RCCPSUBWARE;        
        select * from PROD_RCCPSUBWARE  ;  --TABLE  工作中能力下物品
delete from PROD_RCCPSUB;        
        select * from PROD_RCCPSUB  ;  --TABLE  生产粗能力计划子表
delete from PROD_PRODINGQUALITYSUB;        
        select * from PROD_PRODINGQUALITYSUB  ;  --TABLE  生产过程质检子表
delete from PROD_PRODINGQUALITY;        
        select * from PROD_PRODINGQUALITY  ;  --TABLE  生产过程质检
delete from PROD_PLANDDATE;        
        select * from PROD_PLANDDATE  ;  --TABLE  生产计划展望期
delete from PROD_MPSSUB;        
        select * from PROD_MPSSUB  ;  --TABLE  主生产计划子表
delete from PROD_MPSPLANDWARE;        
        select * from PROD_MPSPLANDWARE  ;  --TABLE  生产销售订单及预测物品信息
delete from PROD_MPS;        
        select * from PROD_MPS  ;  --TABLE  主生产计划
delete from PROD_MAKEWARE;        
        select * from PROD_MAKEWARE  ;  --TABLE  需生产物品
delete from PROD_MAINCOMMANDSUB;        
        select * from PROD_MAINCOMMANDSUB  ;  --TABLE  主生产指令子表
delete from PROD_MAINCOMMAND;        
        select * from PROD_MAINCOMMAND  ;  --TABLE  主生产指令
delete from PROD_FORECASTSUB;        
        select * from PROD_FORECASTSUB  ;  --TABLE  生产预测单子表
delete from PROD_FORECAST;        
        select * from PROD_FORECAST  ;  --TABLE  生产预测单
delete from PROD_FINISHEDWARELABOR;        
        select * from PROD_FINISHEDWARELABOR  ;  --TABLE  完工单所用人工信息
delete from PROD_FINISHEDWARE;        
        select * from PROD_FINISHEDWARE  ;  --TABLE  生产完工单
        --select * from PROD_FACTORYCALENDARSUB  ;  --TABLE  工厂日历子表
        --select * from PROD_FACTORYCALENDAR  ;  --TABLE  工厂日历
delete from PROD_ENVIRONMENTTESTSUB  ;        
        select * from PROD_ENVIRONMENTTESTSUB  ;  --TABLE  生产环境检测单子表
delete from PROD_ENVIRONMENTTEST;        
        select * from PROD_ENVIRONMENTTEST  ;  --TABLE  生产环境检测单
delete from PROD_ENVIRONMENTPLANSUB;        
        select * from PROD_ENVIRONMENTPLANSUB  ;  --TABLE  生产环境检测计划单子表
delete from PROD_ENVIRONMENTPLAN;        
        select * from PROD_ENVIRONMENTPLAN  ;  --TABLE  生产环境检测计划单
        --select * from PROD_CRAFTSUB  ;  --TABLE  生产工艺子表
        --select * from PROD_CRAFT  ;  --TABLE  生产工艺表
delete from PROD_COMMAND;        
        select * from PROD_COMMAND  ;  --TABLE  生产指令表
delete from PROD_CLEARINGSUB;        
        select * from PROD_CLEARINGSUB  ;  --TABLE  工作中心清场单子表
delete from PROD_CLEARING;        
        select * from PROD_CLEARING  ;  --TABLE  工作中心清场单
delete from PROD_BUYWARE;        
        select * from PROD_BUYWARE  ;  --TABLE  需采购物品
        --select * from PROD_BOMWAREREPLACE  ;  --TABLE  生产BOM物品替换
delete from PROD_BOMWAREMIDDLE;        
        select * from PROD_BOMWAREMIDDLE  ;  --TABLE  根据物品生成的中间体
delete from PROD_BOMWAREATOMIC;        
        select * from PROD_BOMWAREATOMIC  ;  --TABLE  根据物品生成的原材料
delete from PROD_BATCHWORKWARE;        
        select * from PROD_BATCHWORKWARE  ;  --TABLE  批生产记录完工单使用物料
delete from PROD_BATCHSHOPWARE;        
        select * from PROD_BATCHSHOPWARE  ;  --TABLE  批生产记录车间领料
delete from PROD_BATCHRECORD;        
        select * from PROD_BATCHRECORD  ;  --TABLE  批生产记录
delete from PROD_BATCHFINISHEDWARE;        
        select * from PROD_BATCHFINISHEDWARE  ;  --TABLE  批生产记录完工单
delete from PROD_BATCHCOMMAND;        
        select * from PROD_BATCHCOMMAND  ;  --TABLE  批生产记录生产指令表
delete from PROD_BACKWARESUB;        
        select * from PROD_BACKWARESUB  ;  --TABLE  车间退料单子表
delete from PROD_BACKWARE;        
        select * from PROD_BACKWARE  ;  --TABLE  车间退料单
delete from PROD_ACQUIREWARESUB;        
        select * from PROD_ACQUIREWARESUB  ;  --TABLE  车间领料单子表
        --select * from PROD_ACQUIREWARECLASS  ;  --TABLE  车间领料类型
delete from PROD_ACQUIREWARE;        
        select * from PROD_ACQUIREWARE  ;  --TABLE  车间领料单主表
delete from NF_WARESUBJECTSOURCE;        
        select * from NF_WARESUBJECTSOURCE  ;  --TABLE  物品对应科目来源
delete from NF_WARESUBJECT;        
        select * from NF_WARESUBJECT  ;  --TABLE  物品对应科目
        --select * from NF_VOUCHERWORD  ;  --TABLE  凭证字
delete from NF_VOUCHERTEMP;        
        select * from NF_VOUCHERTEMP  ;  --TABLE  凭证制作临时表
delete from NF_VOUCHERSUB;        
        select * from NF_VOUCHERSUB  ;  --TABLE  会计凭证子表
        --select * from NF_VOUCHERMODELSUB  ;  --TABLE  会计凭证模板子表
        --select * from NF_VOUCHERMODELCOL  ;  --TABLE  通过凭证模板某字段区分模板类型
        --select * from NF_VOUCHERMODEL  ;  --TABLE  会计凭证模板
        --select * from NF_VOUCHERCODE  ;  --TABLE  凭证序号规则
delete from NF_VOUCHER;        
        select * from NF_VOUCHER  ;  --TABLE  会计凭证
        --select * from NF_SUBJECTSETUP  ;  --TABLE  科目设置
        --select * from NF_SUBJECTCLASS  ;  --TABLE  科目类别
delete from NF_SUBJECTBALANCE;        
        select * from NF_SUBJECTBALANCE  ;  --TABLE  科目余额初始化
delete from NF_SUBJECT;        
        select * from NF_SUBJECT  ;  --TABLE  科目
delete from NF_SELLDETAILSINPUTSUB;        
        select * from NF_SELLDETAILSINPUTSUB  ;  --TABLE  销售明细录入单子表
delete from NF_SELLDETAILSINPUT;        
        select * from NF_SELLDETAILSINPUT  ;  --TABLE  销售明细录入单
delete from NF_SELLCOSTINPUT;        
        select * from NF_SELLCOSTINPUT  ;  --TABLE  销售物品成本录入单
      
        --select * from NF_REPORTSETSUB  ;  --TABLE  财务报表设置子表
        --select * from NF_REPORTSET  ;  --TABLE  财务报表设置
        --select * from NF_RATE  ;  --TABLE  税率
delete from NF_PROJECT;        
        select * from NF_PROJECT  ;  --TABLE  计划项目
delete from NF_PROCEEDSSUB;        
        select * from NF_PROCEEDSSUB  ;  --TABLE  收款单子表
delete from NF_PROCEEDS;        
        select * from NF_PROCEEDS  ;  --TABLE  收款单
delete from NF_PAYMENTSUB;        
        select * from NF_PAYMENTSUB  ;  --TABLE  付款单子表
delete from NF_PAYMENT;        
        select * from NF_PAYMENT  ;  --TABLE  付款单
        --select * from NF_NUMBERLENGTH  ;  --TABLE  小数点位数
        --select * from NF_INDUSTRYSUBJECT  ;  --TABLE  工业科目
delete from NF_GENERALLEDGER;        
        select * from NF_GENERALLEDGER  ;  --TABLE  总账
        --select * from NF_CURRENCY ;  --TABLE  货币
delete from NF_CHEQUEBUY;        
        select * from NF_CHEQUEBUY  ;  --TABLE  财务支票购置
delete from NF_CHEQUE;        
        select * from NF_CHEQUE  ;  --TABLE  财务支票
delete from NF_CASHIERDIARY;        
        select * from NF_CASHIERDIARY  ;  --TABLE  出纳日记账
        --select * from NF_BUSINESSSUBJECT  ;  --TABLE  商业科目
delete from NF_BANK;        
        select * from NF_BANK  ;  --TABLE  银行账号
        --select * from NF_BALANCE  ;  --TABLE  结算方式
        --select * from NF_AUXILIARY  ;  --TABLE  辅助核算
delete from NF_ACCOUNTRIGHTS;        
        select * from NF_ACCOUNTRIGHTS  ;  --TABLE  账套权限
delete from NF_ACCOUNTPERIOD;        
        select * from NF_ACCOUNTPERIOD  ;  --TABLE  会计期间
delete from NF_ACCOUNT;        
        select * from NF_ACCOUNT  ;  --TABLE  账套
delete from NF_ACCHECKSUB;        
        select * from NF_ACCHECKSUB  ;  --TABLE  往来核销子表
delete from NF_ACCHECK;        
        select * from NF_ACCHECK  ;  --TABLE  往来核销
delete from EQUIP_STOPPAGESUB;        
        select * from EQUIP_STOPPAGESUB  ;  --TABLE  设备故障登记单子表
        
        --select * from EQUIP_STOPPAGECLASS  ;  --TABLE  设备故障类别
        --select * from EQUIP_STOPPAGECAUSE  ;  --TABLE  设备故障原因
delete from EQUIP_STOPPAGE;        
        select * from EQUIP_STOPPAGE  ;  --TABLE  设备故障登记单
delete from EQUIP_SETUPSUB;        
        select * from EQUIP_SETUPSUB  ;  --TABLE  附属设备安装单
delete from EQUIP_SETUP;        
        select * from EQUIP_SETUP  ;  --TABLE  设备安装单
delete from EQUIP_REQUESTSUB;        
        select * from EQUIP_REQUESTSUB  ;  --TABLE  设备请修单子表
delete from EQUIP_REQUEST;        
        select * from EQUIP_REQUEST  ;  --TABLE  设备请修单
delete from EQUIP_REPAIRSUB;        
        select * from EQUIP_REPAIRSUB  ;  --TABLE  设备维修单子表
delete from EQUIP_REPAIRPLANSUB;        
        select * from EQUIP_REPAIRPLANSUB  ;  --TABLE  设备维修计划单子表
delete from EQUIP_REPAIRPLAN;        
        select * from EQUIP_REPAIRPLAN  ;  --TABLE  设备维修计划单
        --select * from EQUIP_REPAIRCLASS  ;  --TABLE  设备维修类别
delete from EQUIP_REPAIR;        
        select * from EQUIP_REPAIR  ;  --TABLE  设备维修单
delete from EQUIP_OILINGSUB;        
        select * from EQUIP_OILINGSUB  ;  --TABLE  设备润滑单子表
delete from EQUIP_OILINGPLANSUB;        
        select * from EQUIP_OILINGPLANSUB  ;  --TABLE  设备润滑计划单子表
delete from EQUIP_OILINGPLAN;        
        select * from EQUIP_OILINGPLAN  ;  --TABLE  设备润滑计划单
delete from EQUIP_OILING;        
        select * from EQUIP_OILING  ;  --TABLE  设备润滑单
delete from EQUIP_KEEPSUB;        
        select * from EQUIP_KEEPSUB  ;  --TABLE  设备保养单子表
delete from EQUIP_KEEPPLANSUB;        
        select * from EQUIP_KEEPPLANSUB  ;  --TABLE  设备保养计划单子表
delete from EQUIP_KEEPPLAN;        
        select * from EQUIP_KEEPPLAN  ;  --TABLE  设备保养计划单
        --select * from EQUIP_KEEPCLASS  ;  --TABLE  设备保养类别
delete from EQUIP_KEEP;        
        select * from EQUIP_KEEP  ;  --TABLE  设备保养单
delete from EQUIP_EXAMINESUB;        
        select * from EQUIP_EXAMINESUB  ;  --TABLE  设备检测单子表
delete from EQUIP_EXAMINEPLANSUB;        
        select * from EQUIP_EXAMINEPLANSUB  ;  --TABLE  设备检测计划单子表
delete from EQUIP_EXAMINEPLAN;        
        select * from EQUIP_EXAMINEPLAN  ;  --TABLE  设备检测计划单
        --select * from EQUIP_EXAMINECLASS  ;  --TABLE  设备检测类别
delete from EQUIP_EXAMINE;        
        select * from EQUIP_EXAMINE  ;  --TABLE  设备检测单
delete from EQUIP_CHECKINGSUB;        
        select * from EQUIP_CHECKINGSUB  ;  --TABLE  设备验收单子表
delete from EQUIP_CHECKING;        
        select * from EQUIP_CHECKING  ;  --TABLE  设备验收单
delete from EQUIP_CHANGESUB;        
        select * from EQUIP_CHANGESUB  ;  --TABLE  附属设备变更单
delete from EQUIP_CHANGE;        
        select * from EQUIP_CHANGE  ;  --TABLE  设备变更单
delete from EQUIP_ARCHIVESSUB;        
        select * from EQUIP_ARCHIVESSUB  ;  --TABLE  附属设备档案
delete from EQUIP_ARCHIVES;        
        select * from EQUIP_ARCHIVES  ;  --TABLE  设备档案
delete from COMMON_MONEYUSE;        
        select * from COMMON_MONEYUSE  ;  --TABLE  "费用申请"
delete from CHECK_STATEINFO;        
        select * from CHECK_STATEINFO  ;  --TABLE  业务单据审批状态表
delete from CHECK_RECORDINFO;        
        select * from CHECK_RECORDINFO  ;  --TABLE  业务单据审批记录表
        --select * from CHECK_FLOW  ;  --TABLE  人员审批流程控制表
delete from BUY_SCHEDULESUB;        
        select * from BUY_SCHEDULESUB  ;  --TABLE  采购订单子表
delete from BUY_SCHEDULE;        
        select * from BUY_SCHEDULE  ;  --TABLE  采购订单主表
        --select * from BUY_PRICE  ;  --TABLE  采购报价表
delete from BUY_PORTAGE;        
        select * from BUY_PORTAGE  ;  --TABLE  采购运费发票
delete from BUY_PAYAPPLY;        
        select * from BUY_PAYAPPLY  ;  --TABLE  供应商预付款申请
        --select * from BUY_CONTRACT  ;  --TABLE  供应采购合同主表
delete from BUY_COMEWARENOTIFICATIONSUB;        
        select * from BUY_COMEWARENOTIFICATIONSUB  ;  --TABLE  采购到货通知单子表
delete from BUY_COMEWARENOTIFICATION;        
        select * from BUY_COMEWARENOTIFICATION  ;  --TABLE  采购到货通知单
        --select * from BUY_CLIENTTYPE  ;  --TABLE  供应商类别文件（按供应商性质分类）
        --select * from BUY_CLIENTSTOCK  ;  --TABLE  供应商仓库信息
        --select * from BUY_CLIENTQUALITY  ;  --TABLE  供应商质检信息
        --select * from BUY_CLIENTPORTAGEMODEL  ;  --TABLE  供应商交货方式
        --select * from BUY_CLIENTAUTHOR  ;  --TABLE  供应商人员信息
        --select * from BUY_CLIENT  ;  --TABLE  供应商明细
delete from BUY_BACKWARENOTIFICATIONSUB;        
        select * from BUY_BACKWARENOTIFICATIONSUB  ;  --TABLE  采购退货通知单子表
delete from BUY_BACKWARENOTIFICATION;        
        select * from BUY_BACKWARENOTIFICATION  ;  --TABLE  采购退货通知单
delete from BUY_ACQUIRESUB;        
        select * from BUY_ACQUIRESUB  ;  --TABLE  采购请购单子表
delete from BUY_ACQUIRE;        
        select * from BUY_ACQUIRE  ;  --TABLE  采购请购单
        --select * from HUMAN_WORKAGEWAGE  ;  --TABLE  工龄工资
delete from HUMAN_WELFARESUB;        
        --select * from HUMAN_WELFARESUB  ;  --TABLE  员工福利明细表
delete from HUMAN_WELFARE;        
        --select * from HUMAN_WELFARE  ;  --TABLE  员工福利表
        --select * from HUMAN_WAGE_ITEM  ;  --TABLE  工资项目
delete from HUMAN_WAGE_HISTORYSUB;        
        --select * from HUMAN_WAGE_HISTORYSUB  ;  --TABLE  工资单历史子表
delete from HUMAN_WAGE_HISTORY;        
        --select * from HUMAN_WAGE_HISTORY  ;  --TABLE  工资单历史表
        --select * from HUMAN_WAGE_COMPONENTS  ;  --TABLE  工资组成
        --select * from HUMAN_WAGE_CARDINAL  ;  --TABLE  变动工资计算基数
delete from HUMAN_WAGESUB;        
        select * from HUMAN_WAGESUB  ;  --TABLE  工资单子表
delete from HUMAN_WAGE;        
        --select * from HUMAN_WAGE  ;  --TABLE  工资单（每月工资记录）
delete from HUMAN_VACATION;
        --select * from HUMAN_VACATION  ;  --TABLE  员工休假表
        --select * from HUMAN_USER  ;  --TABLE  员工用户表
delete from HUMAN_TRAVEL_RECORD;
        --select * from HUMAN_TRAVEL_RECORD  ;  --TABLE  员工出差记录表
delete from HUMAN_TRAVEL_APPLY;
        --select * from HUMAN_TRAVEL_APPLY  ;  --TABLE  员工出差申请表
delete from HUMAN_TRAINSUB;
        --select * from HUMAN_TRAINSUB  ;  --TABLE  员工培训信息子表
delete from HUMAN_TRAIN;
        --select * from HUMAN_TRAIN  ;  --TABLE  员工培训信息表
        --select * from HUMAN_TITLES  ;  --TABLE  员工职称信息表
delete from HUMAN_TIMING_WAGE;
        --select * from HUMAN_TIMING_WAGE  ;  --TABLE  员工计时工资
delete from HUMAN_SWAP_RECORD ;       
        --select * from HUMAN_SWAP_RECORD  ;  --TABLE  员工调班记录
delete from HUMAN_STATUS_CHANGE;
        --select * from HUMAN_STATUS_CHANGE  ;  --TABLE  员工状态变更表
        --select * from HUMAN_STATUS  ;  --TABLE  员工状态表
delete from HUMAN_REWARD_PUNISHMENT;
        --select * from HUMAN_REWARD_PUNISHMENT  ;  --TABLE  员工奖惩表
delete from HUMAN_RELAY_RECORD;
        --select * from HUMAN_RELAY_RECORD  ;  --TABLE  员工替班记录
delete from HUMAN_RECRUITMENTSUB;
        --select * from HUMAN_RECRUITMENTSUB  ;  --TABLE  员工招聘信息子表
delete from HUMAN_RECRUITMENT;
        --select * from HUMAN_RECRUITMENT  ;  --TABLE  员工招聘信息表
delete from HUMAN_RECIPIENTS;
        --select * from HUMAN_RECIPIENTS  ;  --TABLE  员工办公用品领用表
delete from HUMAN_POST_DEPLOY;
        --select * from HUMAN_POST_DEPLOY  ;  --TABLE  员工职位调配表
        --select * from HUMAN_POSTINFO  ;  --TABLE  员工职位信息表
        --select * from HUMAN_POSITIONSET  ;  --TABLE  岗位设置表
        --select * from HUMAN_POSITIONLEVEL  ;  --TABLE  岗位级别表
delete from HUMAN_PIECEWORK_WAGE;
        --select * from HUMAN_PIECEWORK_WAGE  ;  --TABLE  员工计件工资
        --select * from HUMAN_PIECEWORK_PROGRAM  ;  --TABLE  计件工资方案
delete from HUMAN_PHYSICAL_EXAMINATION  ;      
        --select * from HUMAN_PHYSICAL_EXAMINATION  ;  --TABLE  员工体检信息表
        --select * from HUMAN_PERSONAL_TAX  ;  --TABLE  个人所得税表
delete from HUMAN_OVERTIME;
        --select * from HUMAN_OVERTIME  ;  --TABLE  员工加班表
delete from HUMAN_INPUTEMPLOYEE;
        --select * from HUMAN_INPUTEMPLOYEE  ;  --TABLE  员工信息录入单
delete from HUMAN_HOUSINGSUB;
        --select * from HUMAN_HOUSINGSUB  ;  --TABLE  住房信息子表
delete from HUMAN_HOUSING;
        --select * from HUMAN_HOUSING  ;  --TABLE  住房信息管理
        --select * from HUMAN_EVENTTYPE  ;  --TABLE  事件类型
delete from HUMAN_EVALUATION;
        --select * from HUMAN_EVALUATION  ;  --TABLE  员工考核表
        --select * from HUMAN_EMPLOYEEINFO  ;  --TABLE  人力资源员工信息表
delete from HUMAN_DOCREAD  ;      
        --select * from HUMAN_DOCREAD  ;  --TABLE  文件档案借阅记录
delete from HUMAN_DOCINFO;
        --select * from HUMAN_DOCINFO  ;  --TABLE  文件档案信息
delete from HUMAN_DEPARTURE;
        --select * from HUMAN_DEPARTURE  ;  --TABLE  员工离职单
        --select * from HUMAN_DEGREE  ;  --TABLE  员工学历信息表
delete from HUMAN_CONTRACTINFO  ;      
        --select * from HUMAN_CONTRACTINFO  ;  --TABLE  员工合同信息
delete from HUMAN_CAPACITYPLAN  ;      
        --select * from HUMAN_CAPACITYPLAN  ;  --TABLE  岗位定员计划
delete from HUMAN_POST_DEPLOY  ;      
        --select * from HUMAN_ATTENDANCE_MONTH  ;  --TABLE  员工考勤月表
delete from HUMAN_ATTENDANCE_INFO ;       
        --select * from HUMAN_ATTENDANCE_INFO  ;  --TABLE  员工考勤资料
delete from HUMAN_ATTENDANCE_DAY ;       
        --select * from HUMAN_ATTENDANCE_DAY  ;  --TABLE  员工考勤日表     
        --select * from HUMAN_ATTENDANCEPGSUB  ;  --TABLE  考勤方案子表       
        --select * from HUMAN_ATTENDANCEPG  ;  --TABLE  考勤方案表
delete from HUMAN_ATTENDANCE   ;     
        --select * from HUMAN_ATTENDANCE  ;  --TABLE  员工考勤记录表
delete from FA_ASSETS_VALUE_CHANGE ;
        --select * from FA_ASSETS_VALUE_CHANGE  ;  --TABLE  固定资产价值变动表
        --select * from FA_ASSETS_STATUS  ;  --TABLE  资产状态
delete from FA_ASSETS_SCRAP ;
        --select * from FA_ASSETS_SCRAP  ;  --TABLE  固定资产报废单
delete from FA_ASSETS_INPUT ;
        --select * from FA_ASSETS_INPUT  ;  --TABLE  固定资产录入单
delete from FA_ASSETS_INFO ;
        --select * from FA_ASSETS_INFO  ;  --TABLE  固定资产信息表
delete from FA_ASSETS_IMPAIRMENT ;
        select * from FA_ASSETS_IMPAIRMENT  ;  --TABLE  固定资产减值准备
delete from FA_ASSETS_HANDLE ;
        select * from FA_ASSETS_HANDLE  ;  --TABLE  固定资产处置单
delete from FA_ASSETS_FLITTING ;
        select * from FA_ASSETS_FLITTING  ;  --TABLE  固定资产调拨单
delete from FA_ASSETS_DEPRECIATION ;
        select * from FA_ASSETS_DEPRECIATION  ;  --TABLE  固定资产折旧表
delete from FA_ASSETS_DECREASE ;
        select * from FA_ASSETS_DECREASE  ;  --TABLE  固定资产减少单

