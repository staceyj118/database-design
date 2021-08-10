CREATE TABLE departments (
	dept_no VARCHAR(5), 
	dept_name VARCHAR(50)
); 

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(5)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5),
	emp_no INT
); 

CREATE TABLE employees (
	emp_no INT,
	emp_title VARCHAR(5),
	birth_date VARCHAR(10),
	first_name VARCHAR(30),
	last_name VARCHAR(40),
	sex VARCHAR(1),
	hire_date VARCHAR(10) 
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

CREATE TABLE titles (
	title_id VARCHAR(5),
	title VARCHAR(30)
)