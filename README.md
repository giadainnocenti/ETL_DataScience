# Extract, Transform, Load (ETL)

## Team members:
Sebastien Echeverry, Giada Innocenti, Fahar Zaheer, Amy Lang, Terri Lively, Yong Yang
All the members of the team contributed equally in every section of the project.

## Product/Purpose:
The final product is a simplified Postgres database of Data Scientist related jobs/positions and their associated salaries. The team collectively reviewed topics and agreed upon the idea of developing a database of data scientist related jobs and salaries. The site chosen (below) included 15 individual files and a total of 265 columns of information. Our challenge was to evaluate the columns and include only those that were relevant for a basic understanding of what jobs are available. All aspects of this project were approached as a team.

## Extract:

### Source of datasets: 
https://www.kaggle.com/andresionek/data-jobs-listings-glassdoor

### Metadata:
Datasets include Glassdoor listings which were scraped for every country, using the following search terms: data-scientist, software-engineer, data-analyst, research-scientist, business-analyst, product-manager, project-manager, data-engineer, statistician, dba, database-engineer, machine-learning-engineer

### Datasets used for project:
* 	Glassdoor.csv (163 columns of data)
* 	Glassdoor_salary_salaries.csv (columns of data 9)

## Transform:
In jupyter notebook, Python & Pandas were used to import, clean and merge datasets.
*	Each column in both datasets was evaluated for its usefulness and value relative to the pupose of a simplified dataset to find data scientist related jobs. 
*	Within each dataset several fields were removed based on the evaluation.
*	Records with null id values were removed.
* 	Column names were renamed ("." converted to "_") to satisfy Postgres.
* 	All the numbers in the \*ID columns were set to integers.
*	Each clean dataset was exported as csv.

## Load:
PGAdmin4 was used for the final dataset. 
*	An ERD was generated using [dbdiagram](https://dbdiagram.io/home).
*	A database and table schemas were manually created in PGAdmin4.
*	Primary keys were created for each table.
*	The csv files were imported into the database into respective tables.
*	A final view of all data was created by Left Joining the tables into one.


## ERD Diagram:
![ERD](https://github.com/giadainnocenti/ETL_DataScience/blob/main/ERD/ETL_project%20(1).png)

