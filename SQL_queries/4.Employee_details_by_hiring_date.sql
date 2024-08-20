SELECT 
e.first_name, -- first name of the employee from the employees table
e.last_name, -- last name of the employee from the employees table
e.hire_date, -- hire date of the employee from the employees table
t.title, -- job title of the employee from the titles table
s.salary -- current salary of the employee from the salaries table
FROM employees e -- the employees table, which contains basic employee information

JOIN salaries s ON e.emp_no = s.emp_no -- join to get salary details by matching employee numbers between employees and salaries tables
JOIN titles t ON e.emp_title_id = t.title_id -- join to get job title details by matching title IDs between employees and titles tables

ORDER BY e.hire_date DESC; -- order by hire date in desc order showing the most recently hired employees first
