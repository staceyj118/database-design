-- Create department table
CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL PRIMARY KEY, 
	dept_name VARCHAR(50) NOT NULL
); 

SELECT * FROM departments; 


-- Create titles table 
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(30) NOT NULL
); 

SELECT * FROM titles;

-- Create employee table 
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title VARCHAR(5) NOT NULL,
	FOREIGN KEY(emp_title) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date Date NOT NULL
);

SELECT * FROM employees;

-- Create dept employee table JUNCTION TABLE 
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(5) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

-- Create dept manager table JUNCTION 
CREATE TABLE dept_manager (
	dept_no VARCHAR(5) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
); 

SELECT * FROM dept_manager;

-- Create salary table 
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary BIGINT NOT NULL
);

SELECT * FROM salaries; 


