# Extract, Transform, Load (ETL)

## Extract:
Source: https://www.kaggle.com/andresionek/data-jobs-listings-glassdoor

Datasets used for project:
* Glassdoor.csv 
* glassdoor_salary_salaries.csv

## Transform:
Python was used to import, clean and merge datasets.
*	Within the Glassdoor_salaries dataset several fields were removed
*	records with null id values were removed

## Load:
PGAdmin4 was used to create the Postgres database to store the final dataset.
