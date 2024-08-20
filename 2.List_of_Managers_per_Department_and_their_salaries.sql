SELECT
d.dept_name, -- department name from the departments table
e.first_name, -- first name of the employee from the employees table
e.last_name, -- last name of the employee from the employees table
s.salary -- highest salary of the employee, rounded to 2 decimal places
FROM dept_manager dm -- the dept_manager table, which links departments and managers

JOIN departments d ON dm.dept_no = d.dept_no -- join to get department details by matching department number from dept_manager and departments tables
JOIN employees e ON dm.emp_no = e.emp_no -- join to get employee details by matching employee number from dept_manager and employees tables

JOIN (
  SELECT emp_no, ROUND(MAX(salary),2) AS salary -- subquery to select the highest salary for each employee, rounded to 2 decimal places
  FROM salaries -- the salaries table, which contains salary information for employees
  GROUP BY emp_no -- group by employee number to ensure we get the maximum salary for each employee
) s ON e.emp_no = s.emp_no -- join to get salary details by matching employee number from employees and subquery

ORDER BY salary DESC; -- order the result set by salary in descending order, showing the highest-paid employees first

