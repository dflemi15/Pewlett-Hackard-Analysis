-- Create retirement titles table
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.to_date, t.from_date
INTO ret_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM ret_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM ret_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no ASC, title DESC;

SELECT * FROM unique_titles;

-- Retrieve number of employees by job title
SELECT COUNT(emp_no),
title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;

-- Create The Employye Eligible for the Mentorship Program table
SELECT DISTINCT ON (e.emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO ment_elig
FROM employees as e
LEFT JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
 AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM ment_elig;

-- Additional querries
SELECT e.emp_no, 
e.first_name, 
e.last_name,
e.birth_date,
de.dept_no,
de.to_date
INTO ret_dept
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM ret_dept;

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
dept_no
INTO unique_dept
FROM ret_dept
WHERE (to_date = '9999-01-01')
ORDER BY emp_no ASC, dept_no DESC;

SELECT * FROM unique_dept;

SELECT COUNT(emp_no),
dept_no
INTO dept_ret
FROM unique_dept
GROUP BY dept_no
ORDER BY COUNT(dept_no) DESC;

SELECT * FROM dept_ret;

