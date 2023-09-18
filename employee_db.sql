-- data analysis question 1 -- 
SELECT e.last_name, e.first_name, e.sex, s.salary, e.emp_no
FROM employees as e 
INNER JOIN salaries as s 
ON e.emp_no = s.emp_no

-- question 2 -- 
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e 
WHERE DATE_PART('year', hire_date) = 1986;

-- question 3 -- 
SELECT dm.dept_no, dm.emp_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager as dm 
INNER JOIN departments as d
ON dm.dept_no = d.dept_no 
INNER JOIN employees as e 
ON dm.emp_no = e.emp_no 

-- question 4 -- 
SELECT de.emp_no, de.dept_no, d.dept_name, e.first_name, e.last_name
FROM dept_emp as de 
INNER JOIN departments as d 
ON de.dept_no = d.dept_no 
INNER JOIN employees as e 
ON de.emp_no = e.emp_no 

-- question 5 -- 
SELECT e.first_name, e.last_name, e.sex
FROM employees as e 
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

-- question 6 -- 
SELECT e.last_name, e.first_name, e.emp_no
FROM employees as e 
INNER JOIN dept_emp as de 
ON e.emp_no = de.emp_no 
WHERE dept_no = 'd007'

-- question 7 -- 
SELECT e.last_name, e.first_name, e.emp_no, d.dept_name
FROM employees as e 
INNER JOIN dept_emp as de 
ON e.emp_no = de.emp_no 
INNER JOIN departments as d 
ON de.dept_no = d.dept_no 
WHERE dept_name IN ('Sales', 'Development');

--question 8 -- 
SELECT last_name, COUNT(*) as count 
FROM employees
GROUP BY last_name 
ORDER BY count DESC;