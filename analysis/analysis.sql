SELECT 
	e.emp_no AS "Employee Number",
	first_name AS "First Name",
	last_name AS "Last Name",
	sex AS "Sex",
	salary AS "Salary"
FROM employee AS e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no;



SELECT 
	first_name AS "First Name",
	last_name AS "Last Name",
	hire_date AS "Hire Date"
FROM employee
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986'
ORDER BY hire_date;


SELECT
	dm.dept_no AS "Managers Department Number",
	dept_name AS "Department Name",
	dm.emp_no AS "Managers Employee Number",
	first_name AS "First Name",
	last_name AS "Last Name"
FROM dept_managers AS dm
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no
INNER JOIN employee AS e
ON dm.emp_no = e.emp_no;

SELECT 
	first_name AS "First Name",
	last_name AS "Last Name",
	sex AS "Sex"
FROM employee
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
SELECT  
	de.emp_no AS "Employee Number",
	last_name AS "Last Name",
	first_name AS "First Name",
	dept_name AS "Department Name"
FROM dept_emp AS de
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
    INNER JOIN employee AS e
        ON (de.emp_no = e.emp_no)
WHERE d.dept_name = 'Sales'
ORDER BY de.emp_no;	


SELECT  
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM employee AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;


SELECT last_name AS "Employee Last Name",
	COUNT(last_name) AS "Frequency Count"
FROM employee
GROUP BY last_name
ORDER BY "Frequency Count" DESC;
	
