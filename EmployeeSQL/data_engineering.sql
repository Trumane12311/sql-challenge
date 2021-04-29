CREATE TABLE "Departments" (
    "id" SERIAL   NOT NULL,
    "dept_no" VARCHAR(10)   NOT NULL,
    "dept_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "DeptEmployees" (
    "id" SERIAL   NOT NULL,
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_DeptEmployees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "DeptManagers" (
    "id" SERIAL   NOT NULL,
    "dept_no" VARCHAR(10)   NOT NULL,
    "emp_no" INT   NOT NULL,
    CONSTRAINT "pk_DeptManagers" PRIMARY KEY (
        "id","dept_no"
     )
);

CREATE TABLE "Employees" (
    "id" SERIAL   NOT NULL,
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR(20)   NOT NULL,
    "birth_date" VARCHAR(20)   NOT NULL,
    "first_name" VARCHAR(100)   NOT NULL,
    "last_name" VARCHAR(100)   NOT NULL,
    "sex" VARCHAR(30)   NOT NULL,
    "hire_date" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Salary" (
    "id" SERIAL   NOT NULL,
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salary" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Title" (
    "id" SERIAL   NOT NULL,
    "title_id" VARCHAR(10)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "DeptEmployees" ADD CONSTRAINT "fk_DeptEmployees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "DeptManagers" ADD CONSTRAINT "fk_DeptManagers_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");
