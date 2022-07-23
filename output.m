
filename = 'testdata.xls';

Results_Orders = [customerorders.Data,expectedorders.Data,backlog.Data];
Results_Desired = [desiredinventory.Data,desiredproduction.Data,desiredwip.Data];
Results_Production = [first_productionstep.Data,first_outflow.Data,second_productionstep.Data,second_outflow.Data,third_productionstep.Data];
Results_Utilization = [first_utilization.Data,second_utilization.Data,third_utilization.Data];
Results_CycleTime = [first_cycletime.Data,second_cycletime.Data,third_cycletime.Data];
Results_StockFlow = [productionstart.Data,wip.Data,production.Data,inventory.Data,shipments.Data];

Labels_Orders = {'customerorders','expectedorders','backlog'};
Labels_Desired = {'desiredinventory','desiredproduction','desiredwip'};
Labels_Production = {'first_productionstep','first_outflow','second_productionstep','second_outflow','third_productionstep'};
Labels_Utilization = {'first_utilization','second_utilization','third_utilization'};
Labels_CycleTime = {'first_cycletime','second_cycletime','third_cycletime'};
Labels_StockFlow = {'productionstart','wip','production','inventory','shipments'};

Table_Orders = array2table(Results_Orders,'VariableNames',Labels_Orders);
Table_Desired = array2table(Results_Desired,'VariableNames',Labels_Desired);
Table_Production = array2table(Results_Production,'VariableNames',Labels_Production);
Table_Utilization = array2table(Results_Utilization,'VariableNames',Labels_Utilization);
Table_CycleTime = array2table(Results_CycleTime,'VariableNames',Labels_CycleTime);
Table_StockFlow = array2table(Results_StockFlow,'VariableNames',Labels_StockFlow);

Table_All = [Table_Orders Table_Desired Table_Production Table_Utilization Table_CycleTime Table_StockFlow];
writetable(Table_All,filename)