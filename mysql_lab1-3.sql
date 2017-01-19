-- LAB 1 (Basic Select Statements)
-- 1. Write a query returning all records in the project table.
select * 
from project;

-- 2. Write a query returning the name and budget of each project.
select label, budget 
from project;

-- 3. Add sorting by budget (low-high) to the previous query.
select label, budget 
from project
order by budget;

-- 4. Improve the budget column of the previous query by rounding to two digits.
select label, round(budget,2) 
from project
order by budget;

-- 5. Name the rounded budget column of the previous query “budget”.
select label, round(budget,2) budget 
from project
order by budget;

-- 6. Write a query returning a list of project names.
select label 
from project;

-- 7. Continuing from the previous query, delimit the returned project names to 5 characters.
select SUBSTRING(label, 1, 5) label 
from project;

-- 8. Continuing from the previous query, rename the project name column to “prcode”.
select SUBSTRING(label, 1, 5) prcode 
from project;

-- LAB 2 (Filtering Results)
-- 1. Write a query returning name and budget of the project with id 3 in the project table.
select label, budget 
from project
where id = 3;
-- 2. Write a query returning all projects in the project table with name “Website”.
select * 
from project
where label = 'Website';
-- 3. Write a query returning the names of all projects in the project table 
--with a budget of more than 500.
select label 
from project
where budget > 500;

-- 4. Write a query returning all projects in the project table with a budget 
--between 250 and 1500.
select *
from project
where budget between 250 and 1500;

-- 5. Write a query returning all projects in the project table with 
---a budget below 500 or above 1500.
select * 
from project
where budget < 500
or budget > 1500;

-- 6. Write a query returning all projects in the project table with 
--an id above 1 and a budget above 500.
select * 
from project
where id > 1
and budget > 500;

-- 7. Write a query returning all projects in the project table without a defined budget.
select * 
from project
where budget is null;
-- 8. Write a query returning roles in the role table whose title includes “manager”.
select label 
from role
where label like '%Manager%';

-- 9. Write a query returning the roles in the role table whose title 
--is “Developer” or “Tester”.
select label
from role
where label in ('Developer','Tester');

-- LAB 3 (Consolidating Data)
-- 1. Write a query returning the number of records in the project table.
select count(*)
from project;

-- 2. Write a query returning the number of project names in the project table.
select count( distinct label)
from project;

select count(*)
from project;

-- 3. Write a query returning the number of project names in the project table
--whose budget is below 1000.
select count(*)
from project
where budget < 1000;

-- 4. Write a query returning the grand total of all project budgets listed 
--in the project table.
select sum(budget) 
from project;

-- 5. Write a query returning the average project budget listed in the project table.
select avg(budget) 
from project;

-- 6. Write a query returning the lowest project budget listed in the project table.
select min(budget)
from project;

-- 7. Write a query returning the highest role id used in the role table.
select max(id)
from role;

-- 8. Write a query returning the average length of role names in the role table.
select avg(length(label))
from role;

-- 9. Write a query returning a merged list of project names and role titles.
select label 
from project

union

select label 
from role;