--4.1
/* VA cannot be deleted from the "name" table because VA is in a 1 to Many relationship. VA cannot be deleted from the "name" table without also deleting VA from the "income" and "population" tables. */
--4.2
/* The SQL code 'insert into income(fips,income,year) values('80',6000,2025)' cannot be executed because the value '80' is not a valid fips in the "name" table. */
--4.3
/* ChatGPT Prompt 1: I am collecting census data, store fips and name in a name table, store fips, income and year in an income table. Generate the sql code. */
/* ChatGPT Prompt 2: For the income table, remove the id as the primary key. */
/* The responses to the prompts provided by ChatGPT were not perfect, but they met the guidelines set by each prompt. */
--4.4
/* ER diagram uploaded to ChatGPT. */
--4.5
/* ChatGPT recognized the ER Diagram chart.*/
--4.6
/* The sql code provided by ChatGPT to find the state with the highest income worked perfectly. */
|
WITH recent_year AS (
    -- Get the most recent year from the income table
    SELECT MAX(year) AS max_year
    FROM income
)
SELECT 
    n.name, 
    i.income, 
    i.year
FROM 
    income i
JOIN 
    name n 
ON 
    i.fips = n.fips
JOIN 
    recent_year ry
ON 
    i.year = ry.max_year
ORDER BY 
    i.income DESC
LIMIT 1;
--4.7
/* ChatGPT prompt 1: Generate the sql code to find the VA population growth rate in the past five years. */
/* ChatGPT prompt 2: Calculate the population growth rate in VA in the past 5 years with one sql code. */
/* The prompt was modified twice, but the code provided did not return a successful result when used. */
--4.8
/* ChatGPT has the ability to produce accurate responses, but it requires specific context of the problem and instructions being asked in order to produce a viable solution. */
