# Extract, Transform, Load (ETL)

## Product:
A database of Data Scientist related jobs/positions and their associated salaries.

## Extract:

### Source: 
https://www.kaggle.com/andresionek/data-jobs-listings-glassdoor

### Metadata:
Datasets include Glassdoor listings which were scraped for every country, using the following search terms:data-scientist, software-engineer, data-analyst, research-scientist, business-analyst, product-manager, project-manager, data-engineer, statistician, dba, database-engineer, machine-learning-engineer

### Datasets used for project:
* Glassdoor.csv 
* Glassdoor_salary_salaries.csv

## Transform:
Python was used to import, clean and merge datasets.
*	Within the Glassdoor_salary_salaries dataset several fields were removed
*	records with null id values were removed

## Load:
PGAdmin4 was used to create the Postgres database to store the final dataset.
