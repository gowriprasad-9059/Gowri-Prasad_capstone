select * from employees_ptbl limit 2;
--1.
select A.emp_no,last_name,first_name,sex,salary from employees_ptbl A
join salaries_ptbl B on A.emp_no=B.emp_no limit 2;

--2.
select first_name,last_name,hire_date from final_employees_ptbl
where year(hire_date) = 1986

--3.
select A.dept_no,dept_name,A.emp_no,last_name,first_name from dept_manager_ptbl A
join employees_ptbl B
on A.emp_no=B.emp_no
join department_ptbl C
on A.dept_no=C.dept_no
limit 2;

--4.
select A.emp_no,last_name,first_name,dept_name
from employees_ptbl A
inner join dept_employee_ptbl B
on A.emp_no = B.emp_no
inner join department_ptbl C
on B.dept_no = C.dept_no;

--5.
select first_name,last_name,sex
from employees_ptbl
where first_name = 'Hercules' and last_name like 'B%'
limit 2;

--6.
select A.emp_no,last_name,first_name,dept_name 
from employees_ptbl A
join dept_employee_ptbl B
on A.emp_no = B.emp_no
join department_ptbl C
on B.dept_no = C.dept_no
where C.dept_name = 'Sales'
limit 2;

--7.
select emp_no,last_name,first_name,dept_name
from employees_ptbl
join dept_employee_ptbl
on dept_employee_ptbl.emp_no = dept_employee_ptbl.emp_no
join department_ptbl
on dept_employee_ptbl.dept_no = department_ptbl.dept_no
where department_ptbl.dept_name = 'sales' or department_ptbl.dept_name = 'Development'
limit 2;


--8.
select last_name,count(*)
from employees_ptbl
group by last_name
order by count(*) desc;






