SELECT 
d.dept_name, -- department name from the departments table
COUNT(DISTINCT de.emp_no) AS num_employees, -- count unique number of employees and alias it as ...
COUNT(DISTINCT dm.emp_no) AS num_managers, -- count unique number of managers and alias it as...
ROUND(AVG(s.salary),2) AS avg_salary -- get average salary for each department
FROM departments d
	
LEFT JOIN dept_emp de ON d.dept_no = de.dept_no -- join with dept_emp table to include employee information related to each department
LEFT JOIN dept_manager dm ON d.dept_no = dm.dept_no -- join with dept_manager table to include manager information related to each department
LEFT JOIN employees e ON de.emp_no = e.emp_no -- join with employees table to get employee details for salary calculations
LEFT JOIN salaries s ON e.emp_no = s.emp_no -- join with salaries table to get salary details for each employee
	
GROUP BY d.dept_name --group table by department name
ORDER BY avg_salary DESC;
