DROP TABLE salary;
create table salary(
	id int,
	index int,
	salary_salaries_val_jobTitle varchar,
	salary_salaries_val_payPeriod varchar,
	salary_salaries_val_salaryPercentileMap_payPercentile10 float,
	salary_salaries_val_salaryPercentileMap_payPercentile90 float,
	salary_salaries_val_salaryPercentileMap_payPercentile50 float,
	CONSTRAINT PK_id_index PRIMARY KEY (id,index)
	--PRIMARY KEY (),
	--FOREIGN KEY () REFERENCES titles()
);
DROP TABLE glassdoor;
create table glassdoor(
	id SERIAL,
	gaTrackerData_empId bigint,
	gaTrackerData_empName varchar,
	gaTrackerData_industry varchar,
	gaTrackerData_jobTitle varchar,
	gaTrackerData_location varchar,
	gaTrackerData_locationId int,
	rating_starRating float,
	salary_country_id int,
	salary_country_name varchar,
	salary_currency_currencyCode varchar,
	salary_currency_displayName varchar,
	salary_currency_id int,
	salary_currency_name varchar,
	salary_currency_symbol varchar,
	salary_salaries int,
	PRIMARY KEY (id)
	--FOREIGN KEY () REFERENCES titles()
);

create view salary_view as 
SELECT  g.gaTrackerData_empId ,
	g.gaTrackerData_empName ,
	g.gaTrackerData_industry ,
	g.gaTrackerData_jobTitle ,
	g.gaTrackerData_location ,
	g.gaTrackerData_locationId ,
	g.rating_starRating ,
	g.salary_country_id ,
	g.salary_country_name ,
	g.salary_currency_currencyCode ,
	g.salary_currency_displayName ,
	g.salary_currency_id ,
	g.salary_currency_name ,
	g.salary_currency_symbol ,
	s.id ,
	s.salary_salaries_val_payPeriod, 
	s.salary_salaries_val_salaryPercentileMap_payPercentile10 ,
	s.salary_salaries_val_salaryPercentileMap_payPercentile90 ,
	s.salary_salaries_val_salaryPercentileMap_payPercentile50 

FROM salary s
LEFT JOIN glassdoor g
  ON g.salary_salaries=s.id;

Select * from salary_view;	
	