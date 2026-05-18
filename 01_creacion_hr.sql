CREATE USER hr IDENTIFIED BY hr123;

GRANT CONNECT, RESOURCE TO hr;

ALTER USER hr QUOTA UNLIMITED ON USERS;

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    salary NUMBER(10,2),
    department_id NUMBER,
    CONSTRAINT fk_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);