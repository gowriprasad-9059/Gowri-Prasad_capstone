Create external Table department_ptbl (dept_no varchar(20) ,dept_name varchar(20))
STORED AS PARQUET LOCATION "/user/anabig114227/prasad_captone/DEPARTMENT";


CREATE external TABLE dept_employee_ptbl(emp_no int,dept_no varchar(10))
STORED AS PARQUET LOCATION "/user/anabig114227/prasad_captone/DEPT_EMPLOYEE";

CREATE TABLE dept_manager_ptbl(dept_no varchar(10),emp_no int)
STORED AS PARQUET LOCATION "/user/anabig114227/prasad_captone/DEPT_MANAGER";

CREATE external TABLE employees_ptbl(emp_no int ,emp_title_id VARCHAR(10),birth_date VARCHAR(12),first_name VARCHAR(15),last_name VARCHAR(15),sex CHAR(2),hire_date VARCHAR(12),no_of_projects int,Last_performance_rating VARCHAR(5),left_ VARCHAR(10),last_date VARCHAR(12))
STORED AS PARQUET LOCATION "/user/anabig114227/prasad_captone/EMPLOYEES";


CREATE external TABLE salaries_ptbl(emp_no int,salary INT)
STORED AS PARQUET LOCATION "/user/anabig114227/prasad_captone/SALARIES";

CREATE external TABLE titles_ptbl(title_id VARCHAR(10),title VARCHAR(10))
STORED AS PARQUET LOCATION "/user/anabig114227/prasad_captone/TITLES";


DROP TABLE IF EXISTS final_employees_ptbl;
create table final_employees_ptbl as 
select emp_no,emp_title_id,FROM_UNIXTIME( UNIX_TIMESTAMP(birth_date,'M/d/yyyy')) as  birth_date,
first_name,last_name,sex,
FROM_UNIXTIME( UNIX_TIMESTAMP(hire_date,'M/d/yyyy')) as hire_date,
no_of_projects,last_performance_rating,left_,
FROM_UNIXTIME( UNIX_TIMESTAMP(last_date,'M/d/yyyy')) as last_date from employees_ptbl;






