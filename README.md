# COVIDandCrime: Analysis of Crime Dynamics Amidst Social Distancing Protocols

The purpose of this project is to determine whether the implementation of states of emergency and stay at home orders impacted crime dynamics across Baltimore, Baton Rouge, and Chicago. The major focus of this project is on Chicago, but there are interesting dynamics in the other two cities worth exploring.

## Getting Started
Fork this repository into your own GitHub or clone it onto your local machine, then feel free to play with the datasets and code!

### Prerequisites
The files are available in .csv format and .m files. Users will need to have a text editor that can manipulate .csv files (Excel, Numbers, LibreOffice, etc.) and Matlab installed on their computers in order to run these files.

### Files Included
Within the repository are data files and Matlab files with which to analyze this data. Brief descriptions of these files are as follows:

#### Chicago_CrimeCovidAnalysis.m
This file is used to determine whether Chicago data shows significant differences across years and time periods, mostly focused on the social restrictions implemented in response to COVID-19. The data files (included in the repository) are imported and parsed based on different time periods. Comparisons are then made for a variety of different time periods and years using t-tests. It is also possible to run regressions across a number of these comparisons to determine whether the relationships are linear or not. Finally, there is the ability to make scatter plots based on the results.

#### Baltimore_CrimeCovidAnalysis.m
This file is used to determine whether Baltimore data shows significant differences across years and time periods, mostly focused on the social restrictions implemented in response to COVID-19. The data files (included in the repository) are imported and parsed based on different time periods. Comparisons are then made for a variety of different time periods and years using t-tests. Finally, there is the ability to make scatter plots based on the results.

#### BR_CrimeCovidAnalysis.m
This file is used to determine whether Baton  Rouge data shows significant differences across years and time periods, mostly focused on the social restrictions implemented in response to COVID-19. The data files (included in the repository) are imported and parsed based on different time periods. Comparisons are then made for a variety of different time periods and years using t-tests. Finally, there is the ability to make scatter plots based on the results.

#### Chicago_Crime_2020_Analysis.csv
The Chicago crime datasets come from the [Chicago City Data Portal](https://data.cityofchicago.org/), which provides a number of different datasets for varied time periods and topics. Particularly, we pull from the [Crimes - 2001 to Present](https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-Present/ijzp-q8t2) and isolate the first three months of 2020 as our study period. The number of each crime type on each day was counted. Some crime types were excluded from the analysis included in the publication, but are available for further exploration. Included in this dataset is only the date and the number of each crime type on said date. There is far more information available in the initial dataset that can be downloaded and tested.

#### Chicago_Crime_201x_Analysis.csv
We pull from the [Crimes - 2001 to Present](https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-Present/ijzp-q8t2) and isolate the crimes occurring in 2017, 2018, and 2019 during the study period. The number of each crime type on each day was counted. Some crime types were excluded from the analysis included in the publication, but are available for further exploration. Included in this dataset is only the date and the number of each crime type on said date. There is far more information available in the initial dataset that can be downloaded and tested.

#### BPD_VBC_Analysis.csv
The Baltimore Victim Based Crime are available through [Open Baltimore](https://data.baltimorecity.gov/), and we use the [BPD Part 1 Victim Based Crime Data](https://data.baltimorecity.gov/Public-Safety/BPD-Part-1-Victim-Based-Crime-Data/wsfq-mvij) dataset to determine whether there are similar patterns in Baltimore as are seen in Chicago. The full dataset contains information pertaining to the location and time of each incident. For this analysis, we only include the date and the number of each crime type that occurred on that day. Some variables are excluded from analysis due to low counts, as described in the publication.

#### Baton_Rouge_Crime_Analysis.csv
The Baton Rouge Crime Incidents are available through [Open Data BR](https://data.brla.gov/), and we use the [Crime Incidents](https://data.brla.gov/Public-Safety/Baton-Rouge-Crime-Incidents/fabb-cnnu) dataset to determine whether there are similar patterns in Baton Rouge as are seen in Chicago. The full dataset contains information pertaining to the location and time of each incident. For this analysis, we only include the date and the number of each crime type that occurred on that day. Some variables are excluded from analysis due to low counts, as described in the publication.


## Running the Files
Once you've downloaded the files, make sure they are all stored in the same folder or that the Matlab path is defined, or you may run into errors with the code. Each of the files is broken into three parts: variable definition, t-tests, and figure creation. The variable definition section takes the dataset for each city, creates date vectors, and matches the city dataset with each of these dates. The t-test section then allows the user to run t-tests on different time periods and variables that are available. The figure creation section then produces scatter plots of the desired data.

## Tests to Run
In each of the files, pressing "Run" will import the data, define the variables, run t-tests, and create figures. The Baltimore and Baton Rouge files compare the total crimes which occurred in the time period before the stay at home order to the two weeks after the stay at home order was put in place. The Chicago code file allows comparisons across years and further time periods. The t-test comparisons are in the following format: "[h, p, ci, stats] = ttest2(dataset1.variable1, dataset2,variable2)."

To change the time period, change the dataset in the code. To change the crime type studied, change the variable in the code. The time periods can also be shifted in the variable definition portion of the code. Try testing past years against each other in the Chicago dataset or test for similarities between 2020 time periods in the Baltimore and Baton Rouge datasets.
