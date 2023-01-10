% Author: Shelby M. Scott
% Date: 21 May 2020
% Purpose: Analyze the crime dynamics of Baltimore in response to the
% changes in social dynamics with the COVID pandemic

%% Variable Definition
% Bring in the Baltimore Data
BPD_VBC = readtable('BPD_VBC_Analysis.csv');

% Pull out specific dates
% SOE represents the state of emergency time period
% SAH represents the two weeks after the stay at home order was implemented
alldays_leap = linspace(1,103,103)';
PreCovid_BPD = alldays_leap(1:63,:); % March 5 is when SOE was announced
SOE_BPD = alldays_leap(64:88,:); % March 30 was when SAH was put in place
SAH_BPD = alldays_leap(89:103,:); % March 30 to April 13

% Break down data based on these dates
PreCovid_BPD_Crime = BPD_VBC(1:63,:);
SOE_BPD_Crime = BPD_VBC(64:88,:);
PreSAH_BPD_Crime = BPD_VBC(1:88,:);
SAH_BPD_Crime = BPD_VBC(89:103,:);

%% T-tests
% T-tests for comparing time periods
% Variables can be changed to test different crime types and time periods
[h_B1, p_B1, ci_B1, stats_B1] = ttest2(PreSAH_BPD_Crime.TotalCrimes, SAH_BPD_Crime.TotalCrimes);


%% Figures
% This creates a scatter plot of the desired data
figure(1);
sz1 = 65;
scatter(BPD_VBC.Date, BPD_VBC.TotalCrimes, sz1, 'filled', 'MarkerEdgeColor', [0.25, .25, .25], 'MarkerFaceColor',[0.8500, 0.5250, 0.0980])
title('Baltimore Total Crimes 01/01/20 - 04/13/20')
xlabel('Date')
ylabel('Daily Number of Total Crimes')


