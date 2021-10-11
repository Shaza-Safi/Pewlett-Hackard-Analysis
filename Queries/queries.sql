-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
-- Create a new table using the INTO clause.
-- Retrieve the title, from_date, and to_date columns from the Titles table.
-- Join both tables on the primary key.
-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.

SELECT e.emp_no,
    e.first_name,
    e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
	INTO retirement_titles
	FROM employees AS e
	JOIN titles AS ti
	ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	ORDER BY emp_no;
	
select * from retirement_titles;

-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
-- Use Dictinct with Orderby to remove duplicate rows

-- drop table unique_titles;

SELECT DISTINCT ON (emp_no) rt.emp_no, rt.first_name, rt.last_name, rt.title
into unique_titles
FROM retirement_titles as rt
ORDER BY emp_no, to_date DESC;

select * from unique_titles;

-- First, retrieve the number of titles from the Unique Titles table.
-- Then, create a Retiring Titles table to hold the required information.
-- Group the table by title, then sort the count column in descending order.

-- drop table retiring_titles;

select count(title) from unique_titles;

SELECT count(title), title
into retiring_titles
FROM unique_titles
GROUP BY title
order by count(title)Desc;

select * from retiring_titles;

-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- Retrieve the from_date and to_date columns from the Department Employee table.
-- Retrieve the title column from the Titles table.
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
-- Create a new table using the INTO clause
-- Join the Employees and the Department Employee tables on the primary key
-- Join the Employees and the Titles tables on the primary key
-- Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965
-- Order the table by the employee number

--drop table mentorship_eligibilty;

SELECT DISTINCT ON(emp_no) en.emp_no, en.first_name, en.last_name, en.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibilty
FROM emp_name as en
JOIN dept_emp as de
ON en.emp_no=de.emp_no
JOIN titles_info as ti
ON de.emp_no = ti.emp_no
WHERE (de.to_date = '9999-01-01') and (en.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY emp_no;

select * from mentorship_eligibilty;

