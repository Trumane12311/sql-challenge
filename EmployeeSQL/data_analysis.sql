-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, 
		e.sex, s.salary FROM employees AS e
INNER JOIN salary AS s ON
e.emp_no = s.emp_no;


--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT last_name, first_name, hire_date FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31';


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, f.dept_name, e.emp_no, e.last_name, e.first_name FROM employees AS e
INNER JOIN dept_managers AS d ON
e.emp_no = d.emp_no
INNER JOIN departments AS f ON
d.dept_no = f.dept_no;


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, f.dept_name FROM employees AS e
INNER JOIN dept_emp AS d ON
e.emp_no = d.emp_no
INNER JOIN departments AS f ON
d.dept_no = f.dept_no;


--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM employees
WHERE (first_name = 'Hercules' and last_name LIKE 'B%');


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, f.dept_name FROM employees AS e
INNER JOIN dept_emp AS d ON
e.emp_no = d.emp_no
INNER JOIN departments AS f ON
d.dept_no = f.dept_no
WHERE dept_name = 'Sales';


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, f.dept_name FROM employees AS e
INNER JOIN dept_emp AS d ON
e.emp_no = d.emp_no
INNER JOIN departments AS f ON
d.dept_no = f.dept_no
WHERE dept_name IN ('Sales','Development');


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name AS "Last Name", COUNT(last_name) AS "Frequency of Name" FROM employees
GROUP BY "Last Name"
ORDER BY "Frequency of Name" DESC;