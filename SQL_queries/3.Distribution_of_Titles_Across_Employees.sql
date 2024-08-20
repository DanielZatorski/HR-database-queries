SELECT
t.title, -- title of the job position from the titles table
COUNT(e.emp_no) AS title_count, -- count of employees holding this title, aliased as title_count
ROUND(AVG(s.salary), 2) AS average_salary -- average salary for this title rounded to 2 decimal places and aliased as average_salary
FROM employees e -- the employees table, which links titles and salaries

JOIN titles t ON e.emp_title_id = t.title_id -- join to get job title details by matching title IDs between employees and titles tables
JOIN salaries s ON e.emp_no = s.emp_no -- join to get salary details by matching employee numbers between employees and salaries tables

GROUP BY t.title -- group the results by job title to aggregate the employee count and average salary per title

ORDER BY average_salary DESC; -- order by avg salary in desc order showing the highest paying titles first

