WITH RankedSalaries AS (
    -- Define a CTE as...
    
SELECT
e.first_name, -- first name of the employee from the employees table
e.last_name, -- last name of the employee from the employees table
s.salary, -- salary of the employee from the salaries table
d.dept_name, -- department name from the departments table

-- assign a ranking within each department based on salary in descending order
ROW_NUMBER() OVER (PARTITION BY d.dept_name ORDER BY s.salary DESC) AS ranking

FROM employees e -- the employees table, which contains employee details

JOIN salaries s ON e.emp_no = s.emp_no -- join to get salary details by matching employee numbers between employees and salaries tables
JOIN dept_emp de ON e.emp_no = de.emp_no -- join to link employees to their departments through dept_emp table
JOIN departments d ON de.dept_no = d.dept_no -- join to get department details by matching department numbers between dept_emp and departments tables
)

SELECT
first_name, -- first name of the employee from the CTE
last_name, -- last name of the employee from the CTE
salary, -- salary of the employee from the CTE
dept_name -- department name from the CTE
FROM RankedSalaries -- select from the CTE where we have rankings assigned

WHERE ranking <= 5 -- filter to get only the top 5 highest-paid employees per department
ORDER BY dept_name, ranking; -- order results first by department name, then by ranking within each department
