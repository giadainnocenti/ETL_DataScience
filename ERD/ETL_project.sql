CREATE TABLE "salary" (
  "id" int,
  "index" int,
  "salary_salaries_val_jobTitle" varchar(100),
  "salary_salaries_val_payPeriod" varchar(20),
  "salary_salaries_val_salaryPercentileMap_payPercentile10" float,
  "salary_salaries_val_salaryPercentileMap_payPercentile90" float,
  "salary_salaries_val_salaryPercentileMap_payPercentile50" float
);

CREATE TABLE "glassdoor" (
  "id" int PRIMARY KEY,
  "gaTrackerData_empId" int,
  "gaTrackerData_empName" varchar(100),
  "gaTrackerData_industry" varchar(100),
  "gaTrackerData_jobTitle" varchar(100),
  "gaTrackerData_location" varchar(100),
  "gaTrackerData_locationId" int,
  "rating_starRating" float,
  "salary_country_id" int,
  "salary_country_name" varchar(100),
  "salary_currency_currencyCode" varchar(100),
  "salary_currency_displayName" varchar(100),
  "salary_currency_id" int,
  "salary_currency_name" varchar(100),
  "salary_currency_symbol" varchar(100),
  "salary_salaries" float
);

ALTER TABLE "salary" ADD FOREIGN KEY ("id") REFERENCES "glassdoor" ("salary_salaries");
