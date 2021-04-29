CREATE TABLE departments (
    id SERIAL   NOT NULL,
    dept_no VARCHAR(10) PRIMARY KEY  NOT NULL,
    dept_name VARCHAR(255)   NOT NULL
);

CREATE TABLE dept_emp (
    id SERIAL   NOT NULL,
    emp_no INT  NOT NULL,
    dept_no VARCHAR(10)   NOT NULL
);

CREATE TABLE dept_managers (
    id SERIAL  PRIMARY KEY NOT NULL,
    dept_no VARCHAR(10)   NOT NULL,
    emp_no INT   NOT NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY  NOT NULL,
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(20)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(100)   NOT NULL,
    last_name VARCHAR(100)   NOT NULL,
    sex VARCHAR(30)   NOT NULL,
    hire_date DATE   NOT NULL
);

CREATE TABLE salary (
    id SERIAL PRIMARY KEY  NOT NULL,
    emp_no INT   NOT NULL,
    salary INT   NOT NULL
);

CREATE TABLE titles (
    id SERIAL   NOT NULL,
    title_id VARCHAR(10) PRIMARY KEY NOT NULL,
    title VARCHAR(30)   NOT NULL
);

ALTER TABLE dept_emp ADD CONSTRAINT "fk_DeptEmployees_dept_no" FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_managers ADD CONSTRAINT "fk_DeptManagers_dept_no" FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);
