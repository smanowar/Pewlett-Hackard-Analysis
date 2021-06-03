-- DELIVERABLE 1

-- create table of employees elegible for retirement by title
--exported as retirement_titles.csv
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    t.title,
    t.from_date,
    t.to_date
INTO retirement_titles
FROM Employees as e
INNER JOIN Titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

-- Use Dictinct with Orderby to remove duplicate rows
--exported as unique_titles.csv
SELECT DISTINCT ON (emp_no) 
emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Employees elegible for retirement count by title
--exported as retiring_titles.csv
SELECT COUNT (emp_no) as count, 
title
INTO retiring_titles
FROM unique_titles 
GROUP BY title 
ORDER BY count DESC;

--DELIVERABLE 2
--exported as mentorship_elegibility.csv
SELECT DISTINCT ON (emp_no)
	e.emp_no,
    e.first_name,
	e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
AND (de.to_date = '9999-01-01')
ORDER BY emp_no

