-- DELIVERABLE 1
-- Getting employee info from em table and titles from title table
SELECT em.emp_no, 
    em.first_name, 
    em.last_name,
	ti.title, 
    ti.from_date, 
    ti.to_date
	INTO retiring_emp_title
	FROM employees AS em
	LEFT JOIN titles as ti
	ON (em.emp_no = ti.emp_no)
	WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	ORDER BY em.emp_no;
SELECT * FROM retiring_emp_title

-- removing duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name, 
    last_name, 
    title
	INTO clean_titles
	FROM retiring_emp_title
	ORDER BY emp_no ASC, to_date DESC;
SELECT * FROM clean_titles

-- employees about to retire, filtered by recent job title
SELECT COUNT(title), title 
	INTO retiring_titles
	FROM clean_titles
	GROUP BY title
	ORDER BY COUNT(title) DESC;
SELECT * FROM retiring_titles

--DELIVERABLE 2
-- checks which employees are eligible for the mentorship program
SELECT DISTINCT ON (em.emp_no) em.emp_no, em.first_name, em.last_name, em.birth_date, de.from_date, de.to_date, ti.title
	INTO mentorship_elegiblity 
	FROM employees AS em
	LEFT JOIN dept_emp AS de
	ON em.emp_no = de.emp_no
	LEFT JOIN titles AS ti
	ON em.emp_no = ti.emp_no
	WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
	ORDER BY em.emp_no;
SELECT * FROM mentorship_elegiblity