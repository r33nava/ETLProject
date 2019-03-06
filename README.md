# ETLProject

# Washington D.C. Crimes 2019 - ETL

# Extract

Our first data source is from DC.gov (http://opendata.dc.gov/datasets/crime-incidents-in-2019/data) and contains crime incidents in Washington D.C. since 2019. The data is updated daily and allows a user to download the data in CSV format. 
Our second data source is from a website called ‘Neighborhood Info DC’ (https://www.neighborhoodinfodc.org/comparisontables/comparisontables.html) and contains Well-Being data broken down into D.C.’s 8 Wards and 143 Precincts. A user can download the data in a CSV format. 
Both datasets contained a ‘Ward’ column and ‘Precinct’ column, which made it easy to conduct the transform process using. 

# Transform
Using the first data source, we loaded the CSV file into python and reviewed the columns. We decided to use the following columns and created a new data frame: OFFENSE, SHIFT, VOTING_PRECINCT, WARD, BLOCK, LATITUDE, LONGITUDE. We calculated the amount of crimes in the dataset, the count of distinct crimes in the dataset, and the average number of crimes per precinct in the data. A bar chart was created based of the number of crimes per ward. A new CVS of the clean data was exported. 
Using the second data source, we loaded 2 CSVs (Well-Being Per Ward and Well-Being Per Precinct) into python and reviewed the columns. We selected the following columns and renamed them: WARD, PercentPoor, PercentUnemployed, AvgFamilyIncome. Two new CVS of the clean data were exported.

After that we were ready to load the clean CSV files into a database.

# Load
We loaded both data sets to a database in MySQL. We decided to use MySQL because the data was very structured so it would be easy to query for future analysis. It will also be easy to add to it as more games are played.
After the process of cleaning the data for Washington D.C. crimes, we uploaded them into a MySql database for further analysis. The data was uploaded as a CSV into the MySql database using the table import wizard. This streamlined the process of moving the data into a structured database.

The heat maps were created using gmaps. During the process of creating the heat maps, the data was broken down by types of crimes. This allowed the ability to create individual heat maps that details areas were certain types of crime happen the most.

# Analysis
For the analysis, we drew a relationship between the type of crimes that occur and the average family income (based of 2015 data). Ward 2 has the most amount of crimes so far in 2019 and it has the highest average family income. So far in 2019, 91% (1012/1117) of crimes in Ward 2 are theft related. However, further analysis needs to be concluded if there is a strong relationship between the type of crimes that occur and the average family income in Washington D.C.    

