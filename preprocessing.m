%% Input Signal
initialorder=10000;
finalorder=12000;
steptime=5;
%% Material Delays
averaging=8;
inventoryadjustment=8;
wipadjustment=2;
targetdeliverydelay=2;
%% Inventory Level Strategy
safetystock=2;
minorderprocess=2;
%% WIP Level Strategy
first_valueaddtime=1.5;
second_valueaddtime=1.5;
third_valueaddtime=1.5;
totalcycletime=(first_valueaddtime+second_valueaddtime+third_valueaddtime)*3/2;
%% Capacity Analysis
first_capacity=initialorder/0.6;
second_capacity=initialorder/0.6;
third_capacity=initialorder/0.6;
%% Flow Variability Analysis
first_processvar=0; first_arrivalvar=0;
second_processvar=0; second_arrivalvar=0;
third_processvar=0; third_arrivalvar=0;
