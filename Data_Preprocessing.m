%% --------------- Importing the dataset -------------------------
% ---------------------------- Code ---------------------------
data = readtable('Data.csv');


%%---------------Data Preprocessing -----------------------------
% -------------- Handling Missing Values ------------------------

% ---------------------------- Code ------------------------
Fir_avg = mean(data.Bus_num, 'omitnan');
Sec_avg = fillmissing(data.Bus_num,'constant',Fir_avg);
data.Bus_num = Sec_avg;

Fir_avg = mean(data.Bus_Code, 'omitnan');
Sec_avg = fillmissing(data.Bus_Code,'constant',Fir_avg);
data.Bus_Code = Sec_avg;

Fir_avg = mean(data.Voltage_Mag, 'omitnan');
Sec_avg = fillmissing(data.Voltage_Mag,'constant',Fir_avg);
data.Voltage_Mag = Sec_avg;

Fir_avg = mean(data.Angle_Deg, 'omitnan');
Sec_avg = fillmissing(data.Angle_Deg,'constant',Fir_avg);
data.Angle_Deg = Sec_avg;

Fir_avg = mean(data.Load_MW, 'omitnan');
Sec_avg = fillmissing(data.Load_MW,'constant',Fir_avg);
data.Load_MW = Sec_avg;

Fir_avg = mean(data.Load_Mvar, 'omitnan');
Sec_avg = fillmissing(data.Load_Mvar,'constant',Fir_avg);
data.Load_Mvar = Sec_avg;

Fir_avg = mean(data.Gen_MW, 'omitnan');
Sec_avg = fillmissing(data.Gen_MW,'constant',Fir_avg);
data.Gen_MW = Sec_avg;

Fir_avg = mean(data.Gen_Mvar, 'omitnan');
Sec_avg = fillmissing(data.Gen_Mvar,'constant',Fir_avg);
data.Gen_Mvar = Sec_avg;

Fir_avg = mean(data.GenQmax, 'omitnan');
Sec_avg = fillmissing(data.GenQmax,'constant',Fir_avg);
data.GenQmax = Sec_avg;

Fir_avg = mean(data.GenQmin, 'omitnan');
Sec_avg = fillmissing(data.GenQmin,'constant',Fir_avg);
data.GenQmin = Sec_avg;

Fir_avg = mean(data.posQc_negQc, 'omitnan');
Sec_avg = fillmissing(data.posQc_negQc,'constant',Fir_avg);
data.posQc_negQc = Sec_avg;

Fir_avg = mean(data.ansVolage_Mag, 'omitnan');
Sec_avg = fillmissing(data.ansVolage_Mag,'constant',Fir_avg);
data.ansVolage_Mag = Sec_avg;

Fir_avg = mean(data.ansAngle_Deg, 'omitnan');
Sec_avg = fillmissing(data.ansAngle_Deg,'constant',Fir_avg);
data.ansAngle_Deg = Sec_avg;

Fir_avg = mean(data.ansLoad_MW, 'omitnan');
Sec_avg = fillmissing(data.ansLoad_MW,'constant',Fir_avg);
data.ansLoad_MW = Sec_avg;

Fir_avg = mean(data.ansLoad_Mvar, 'omitnan');
Sec_avg = fillmissing(data.ansLoad_Mvar,'constant',Fir_avg);
data.ansLoad_Mvar = Sec_avg;

Fir_avg = mean(data.ansGen_MW, 'omitnan');
Sec_avg = fillmissing(data.ansGen_MW,'constant',Fir_avg);
data.ansGen_MW = Sec_avg;

Fir_avg = mean(data.ansGen_Mvar, 'omitnan');
Sec_avg = fillmissing(data.ansGen_Mvar,'constant',Fir_avg);
data.ansGen_Mvar = Sec_avg;

Fir_avg = mean(data.Injected_MVAR, 'omitnan');
Sec_avg = fillmissing(data.Injected_MVAR,'constant',Fir_avg);
data.Injected_MVAR = Sec_avg;


%% -------------- Handling Outliers-------------------------------


F = filloutliers(data.Bus_num,'clip','mean');
data.Bus_num = F;

F = filloutliers(data.Bus_num,'clip','mean');
data.Bus_num = F;

F = filloutliers(data.Bus_Code,'clip','mean');
data.Bus_Code = F;

F = filloutliers(data.Voltage_Mag,'clip','mean');
data.Voltage_Mag = F;

F = filloutliers(data.Angle_Deg,'clip','mean');
data.Angle_Deg = F;

F = filloutliers(data.Load_MW,'clip','mean');
data.Load_MW = F;

F = filloutliers(data.Load_Mvar,'clip','mean');
data.Load_Mvar = F;

F = filloutliers(data.Gen_MW,'clip','mean');
data.Gen_MW = F;

F = filloutliers(data.Gen_Mvar,'clip','mean');
data.Gen_Mvar = F;

F = filloutliers(data.GenQmax,'clip','mean');
data.GenQmax = F;

F = filloutliers(data.GenQmin,'clip','mean');
data.GenQmin = F;

F = filloutliers(data.posQc_negQc,'clip','mean');
data.posQc_negQc = F;

F = filloutliers(data.ansVolage_Mag,'clip','mean');
data.ansVolage_Mag = F;

F = filloutliers(data.ansAngle_Deg,'clip','mean');
data.ansAngle_Deg = F;

F = filloutliers(data.ansLoad_MW,'clip','mean');
data.ansLoad_MW = F;

F = filloutliers(data.ansLoad_Mvar,'clip','mean');
data.Load_Mvar = F;

F = filloutliers(data.ansGen_MW,'clip','mean');
data.ansGen_MW = F;

F = filloutliers(data.ansGen_Mvar,'clip','mean');
data.ansGen_Mvar = F;

F = filloutliers(data.Injected_MVAR,'clip','mean');
data.Injected_MVAR = F;






%% -------------- Feature Scalling -------------------------------

% -------------- Method 1: Standardization ----------------------
% ---------------------------- Code -----------------------------

% stand_age = (data.Age - mean(data.Age))/std(data.Age)
% data.Age = stand_age; 
% std_F = (data.Bus_num-mean(data.Bus_num))/std(data.Bus_num);
% data.Bus_num = std_F;

% std_F = (data.Bus_Code-mean(data.Bus_Code))/std(data.Bus_Code);
% data.Bus_Code = std_F;

% std_F = (data.Voltage_Mag-mean(data.Voltage_Mag))/std(data.Voltage_Mag);
% data.Voltage_Mag = std_F;

% std_F = (data.Angle_Deg-mean(data.Angle_Deg))/std(data.Angle_Deg);
% data.Angle_Deg = std_F;

std_F = (data.Load_MW-mean(data.Load_MW))/std(data.Load_MW);
data.Load_MW = std_F;

std_F = (data.Load_Mvar-mean(data.Load_Mvar))/std(data.Load_Mvar);
data.Load_Mvar = std_F;

std_F = (data.Gen_MW-mean(data.Gen_MW))/std(data.Gen_MW);
data.Gen_MW = std_F;

std_F = (data.Gen_Mvar-mean(data.Gen_Mvar))/std(data.Gen_Mvar);
data.Gen_Mvar = std_F;

% std_F = (data.GenQmax-mean(data.GenQmax))/std(data.GenQmax);
% data.GenQmax = std_F;

% std_F = (data.GenQmin-mean(data.GenQmin))/std(data.GenQmin);
% data.GenQmin = std_F;

% std_F = (data.posQc_negQc-mean(data.posQc_negQc))/std(data.posQc_negQc);
% data.posQc_negQc = std_F;

std_F = (data.ansVolage_Mag-mean(data.ansVolage_Mag))/std(data.ansVolage_Mag);
data.ansVolage_Mag = std_F;

std_F = (data.ansAngle_Deg-mean(data.ansAngle_Deg))/std(data.ansAngle_Deg);
data.ansAngle_Deg = std_F;

std_F = (data.ansLoad_MW-mean(data.ansLoad_MW))/std(data.ansLoad_MW);
data.ansLoad_MW = std_F;

std_F = (data.ansLoad_Mvar-mean(data.ansLoad_Mvar))/std(data.ansLoad_Mvar);
data.ansLoad_Mvar = std_F;

std_F = (data.ansGen_MW-mean(data.ansGen_MW))/std(data.ansGen_MW);
data.ansGen_MW = std_F;

std_F = (data.ansGen_Mvar-mean(data.ansGen_Mvar))/std(data.ansGen_Mvar);
data.ansGen_Mvar = std_F;

% std_F = (data.Injected_MVAR-mean(data.Injected_MVAR))/std(data.Injected_MVAR);
% data.Injected_MVAR = std_F;

writetable(data,'DataPreprocessed.csv');
%------------------------Method 2: Normalization------------------------
%---------------------------Code------------------------------
nor_F = (data.Load_MW-min(data.Load_MW))/(max(data.Load_MW)-min(data.Load_MW));
data.Load_MW = nor_F;

nor_F = (data.Load_Mvar-min(data.Load_Mvar))/(max(data.Load_Mvar)-min(data.Load_Mvar));
data.Load_Mvar = nor_F;

nor_F = (data.Gen_MW-min(data.Gen_MW))/(max(data.Gen_MW)-min(data.Gen_MW));
data.Gen_MW = nor_F;

nor_F = (data.Gen_Mvar-min(data.Gen_Mvar))/(max(data.Gen_Mvar)-min(data.Gen_Mvar));
data.Gen_Mvar = nor_F;

%% -----------------------------------------------------------------------------------------
nor_F = (data.ansVolage_Mag-min(data.ansVolage_Mag))/(max(data.ansVolage_Mag)-min(data.ansVolage_Mag));
data.ansVolage_Mag = nor_F;

nor_F = (data.ansAngle_Deg-min(data.ansAngle_Deg))/(max(data.ansAngle_Deg)-min(data.ansAngle_Deg));
data.ansAngle_Deg = nor_F;

nor_F = (data.ansLoad_MW-min(data.ansLoad_MW))/(max(data.ansLoad_MW)-min(data.ansLoad_MW));
data.ansLoad_MW = nor_F;

nor_F = (data.ansLoad_Mvar-mean(data.ansLoad_Mvar))/(max(data.ansLoad_Mvar)-min(data.ansLoad_Mvar));
data.ansLoad_Mvar = nor_F;

nor_F = (data.ansGen_MW-min(data.ansGen_MW))/(max(data.ansGen_MW)-min(data.ansGen_MW));
data.ansGen_MW = nor_F;

nor_F = (data.ansGen_Mvar-min(data.ansGen_Mvar))/(max(data.ansGen_Mvar)-min(data.ansGen_Mvar));
data.ansGen_Mvar = nor_F;

writetable(data,'DataPreprocessed2.csv');
























































%% --------------- Importing the dataset -------------------------
% ---------------------------- Code ---------------------------
%data = readtable('D:\Machine Learning for Data Science using MATLAB\Data Preprocessing\Data_6.csv');



%________________________________________________________________
%________________________________________________________________

%%---------------Data Preprocessing -----------------------------
% -------------- Handling Missing Values ------------------------

% -------------- Method 1: Deleting rows or column --------------
% ---------------------------- Code ---------------------------
% 
% complete_data = rmmissing(data)
% complete_data = rmmissing(data,2)
% data = complete_data; 

% -------------- Method 1.1: Deleting rows or columns based on
% -------------------------- Relative Percentage of missing---
% ---------------------------- Code ---------------------------

% restricted_missing = rmmissing(data,'MinNumMissing',3);
% restricted_missing = rmmissing(data,2,'MinNumMissing',2);
% restricted_missing = rmmissing(data,2,'MinNumMissing',3);
%  
% data = restricted_missing;
 
% -------------- Method 2: Using Mean --------------------------
% ---------------------------- Code ---------------------------
 
% M_Age = mean(data.Age, 'omitnan');
% U_Age = fillmissing(data.Age, 'constant',M_Age);
% data.Age = U_Age;



% ------------- Method 3: Dealing with non-numeric data --------
% ---------------------------- Code ---------------------------

% data.Opinion = categorical(data.Opinion);
% Freq_opinion = mode(data.Opinion);
% 
% Opinion = fillmissing(data.Opinion,'constant',cellstr(Freq_opinion));
% data.Opinion = Opinion; 

%________________________________________________________________
%________________________________________________________________









%% -------------- Handling Outliers-------------------------------

% -------------- Method 1: Deleting Rows ------------------------
% ---------------------------- Code -----------------------------

% outlier = isoutlier(data.Age);
% data = data(~outlier,:); 



% -------------- Method 2: Filling Outliers ---------------------
% ---------------------------- Code -----------------------------
% 
% Age = filloutliers(data.Age,'clip','mean')
% data.Age = Age;


%________________________________________________________________
%________________________________________________________________



%% -------------- Categorical data------------------
%% -------------- Method 1: Categorical data (no order)----------
% ---------------------------- Code -----------------------------

% data = categorical_data_to_dummy_variables(data,data.Location);
% data.Location = [];

% -------------- Method 2: Categorical data (with order)----------
% ---------------------------- Code -----------------------------

% new_variable = categorical_data_to_numbers(data.YearlyIncome,{'Average', 'High', 'Very High', 'Low'}, [2 3 5 1]);
% data.YearlyIncome = new_variable




%________________________________________________________________
%________________________________________________________________



%% -------------- Feature Scalling -------------------------------

% -------------- Method 1: Standardization ----------------------
% ---------------------------- Code -----------------------------

% stand_age = (data.Age - mean(data.Age))/std(data.Age)
% data.Age = stand_age; 


% -------------- Method 2: Normalization ------------------------
% ---------------------------- Code -----------------------------
% normalize_age = (data.Age - min(data.Age)) / (max(data.Age) - min(data.Age))
% data.Age = normalize_age;
%  
%________________________________________________________________
%________________________________________________________________




%writetable(data,'D:\preprocessed_data.csv'); 
























































