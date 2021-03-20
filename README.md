# Extract, Transform, Load (ETL)

## Product:
A simplified Postgres database of Data Scientist related jobs/positions and their associated salaries.

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
*	Each clean dataset was exported as csv.

## Load:
PGAdmin4 was used for the final dataset. 
*	A database and table schemas were manually created in PGAdmin4.
*	The csv files were imported into the database into respective tables.
*	An ERD was generated.

