% Author: Shelby M. Scott
% Date: 21 May 2020
% Purpose: Analyze the crime dynamics of Baton Rouge in response to the
% changes in social dynamics with the COVID pandemic

%% Variable Definition
% Bring in the Baton Rouge Data
BR_Crime = readtable('Baton_Rouge_Crime_Analysis.csv');

% Pull out specific dates
% SOE represents the state of emergency time period
% SAH represents the two weeks after the stay at home order was implemented
alldays_leap = linspace(     1,103,103)';
PreCovid_BR = alldays_leap(1:71,:); % March 13 is when most businesses were closed
SOE_BR = alldays_leap(72:80,:); % March 22 was when SAH was put in place
SAH_BR = alldays_leap(81:95,:); % March 22 to April 5

% Break down data based on these dates
PreCovid_BPD_Crime = BPD_VBC(1:63,:);
SOE_BPD_Crime = BPD_VBC(64:88,:);
PreSAH_BR_Crime = BR_Crime(1:80,:);
SAH_BR_Crime = BR_Crime(81:95,:);

%% T-tests
% T-tests for comparing time periods
% Variables can be changed to test different crime types and time periods
[h_B2, p_B2, ci_B2, stats_B2] = ttest2(PreSAH_BR_Crime.TotalCrimes, SAH_BR_Crime.TotalCrimes);


%% Figures
% This creates a scatter plot of the desired data
figure(1);
sz1 = 65;
scatter(BR_Crime.Date, BR_Crime.TotalCrimes, sz1, 'filled', 'MarkerEdgeColor', [0.25, .25, .25], 'MarkerFaceColor',[0, 0.4470, 0.7410])
title('Baton Rouge Total Crimes 01/01/20 - 04/05/20')
xlabel('Date')
ylabel('Number of Daily Total Crimes')