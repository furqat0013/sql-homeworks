-------------------------------------------------------AGGREGATE FUNCTIONS---------------------------------------------

----------task 1
--select sum(purch_amt) from orders

----------task 2
--select avg(purch_amt) from orders

----------task 3
--select count(distinct salesman_id) from orders

----------task 4
--select count(distinct customer_id) from customer1

----------task 5
--select count(grade) from customer1

----------task 6
--select max(purch_amt) from orders

----------task 7
--select min(purch_amt) from orders

----------task 8
--select city, max(grade) from customer1
--group by city

-----------task 9--------
--select customer_id, max(purch_amt) from orders
--group by customer_id

-----------task 10------
--select customer_id, ord_date, max(purch_amt) from orders
--group by customer_id, ord_date

-----------task 11 --------
--select salesman_id, max(purch_amt) from orders
--where ord_date = '2012-08-17'
--group by salesman_id

---------task 12-------
--select customer_id, ord_date, max(purch_amt) from orders
--where purch_amt > 2000
--group by customer_id, ord_date

---------task 13 ------
--select customer_id, ord_date, max(purch_amt) from orders
--where purch_amt between 2000 and 6000
--group by customer_id, ord_date

--------task 14-----
--select customer_id, ord_date, max(purch_amt) from orders
--group by customer_id, ord_date
--having max(purch_amt) in (2000, 30000, 5760, 6000)

--------task 15--------
--select customer_id, max(purch_amt) from orders
--group by customer_id
--having customer_id between 3002 and 3007
 
 -----------task 16--------
 --select customer_id, max(purch_amt) from orders
 --group by customer_id
 --having customer_id between 3002 and 3007
 --and max(purch_amt) > 1000

 ---------------task 17---------
 --select salesman_id, max(purch_amt) from orders
 --group by salesman_id
 --having salesman_id between 5003 and 5008

 ------------task 18 -------
--select count(ord_no) from orders
--where ord_date = '2012-08-17'

--------------task 19--------
--select count(*) from salesman
--where city is not NULL

--------------task 20 -----------
--select ord_date, salesman_id, count(ord_no) from orders
--group by ord_date, salesman_id

------------task 21------
--select avg(pro_price) from item_mast

------------task 22-------
--select count(pro_id) from item_mast
--where pro_price >= 350

------------task 23----------
--select avg(pro_price) as Average_price, pro_com from item_mast
--group by pro_com

-----------task 24 -------
--select sum(dpt_allotment) from emp_department

----------task 25 ---------
--select emp_dept, count(emp_idno) from emp_details
--group by emp_dept 


----------------------------------------------------------BOOLEAN AND RELATIONAL OPERATORS-------------------------------------------

-- task 1
--select customer_id, cust_name, city, grade, salesman_id from customer1
--where grade > 100

----task 2
--select * from customer1
--where city = 'New York' and grade > 100

--task 3
--select * from customer1
--where city = 'New York' or grade > 100

-- task 4
--select * from customer1
--where city = 'New York' or not grade > 100

-- task 5
--select * from customer1
--where city != 'New York' and not grade > 100

--task 6
--select * from orders
--where not ((ord_date = '2012-09-10' and salesman_id > 5005) or purch_amt > 1000)

--task 7
--select * from salesman
--where commission between 0.10 and 0.12

--task 8
--select * from orders
--where purch_amt < 200 or not (ord_date >= '2012-02-10' and customer_id < 3009)

--task 9
--select * from orders
--where not (ord_date = '2012-08-17' or (customer_id > 3005 and purch_amt < 1000))

--task 10 ????
--select ord_no, purch_amt, 


----task 11
--select * from emp_details
--where EMP_LNAME = 'dosni'or EMP_LNAME = 'mardy'

----task 12
--select * from emp_details
--where EMP_DEPT = 47 or EMP_DEPT = 63


--------------------------------------------------WILDCARD AND SPECIAL OPERATORS-----------------------------------------

----task 1
--select * from salesman
--where city in ('Paris', 'Rome') 

--task 2
--select * from salesman
--where city = 'Paris' or city = 'Rome'

--task 3
--select * from salesman
--where city not in ('Paris', 'Rome')

--task 4
--select * from customer1
--where customer_id in (3007, 3008, 3009)

--task 5
--select * from salesman
--where commission between 0.12 and 0.14

--task 6
--select * from orders
--where purch_amt between 500 and 4000 and purch_amt not in (948.50, 1983.43)

--task 7
--select * from salesman
--where name between 'A' and 'L'

--task 8
--select * from salesman
--where name not between 'A' and 'M'

--task 9
--select * from customer1
--where cust_name like 'B%'

--task 10
--select * from customer1
--where cust_name like '%N'

--task 11
--select * from salesman
--where name like 'N__l%'

--task 12
--select col1 from testtable
--where col1 like '%/_%' escape '/'

--task 13
--select col1 from testtable
--where col1 not like '%/_%' escape '/'

--task 14
--select col1 from testtable
--where col1 like '%//%' escape '/'

--task 15
--select col1 from testtable
--where col1 not like '%//%' escape '/'

--task 16
--select col1 from testtable
--where col1 like '%/_//%' escape '/'

--task 17
--select col1 from testtable
--where col1 not like '%/_//%' escape '/'

--task 18
--select col1 from testtable
--where col1 like '%/%%' escape '/'

--task 19
--select col1 from testtable
--where col1 not like '%/%%' escape '

--task 20
--select * from customer1
--where grade is NULL

--task 21
--select * from customer1
--where grade is not NULL

--task 22
--select * from emp_details
--where EMP_LNAME like 'D%'


------------------------------------------------FORMATTING QUERY OUTPUT-----------------------------------------------

--task 1
--select salesman_id, name, city, commission * 100, '%' from salesman

--task 2
--select 'for', ord_date, 'there are', count(ord_no) as count, 'orders' from orders
--group by ord_date

--task 3
--select * from orders
--order by ord_no 

--task 4
--select * from orders
--order by ord_date desc

--task 5
--select * from orders
--order by ord_date, purch_amt desc

--task 6
--select cust_name, city, grade from customer1
--order by customer_id

--task 7
--select salesman_id, ord_date, max(purch_amt) from orders
--group by salesman_id, ord_date
--order by salesman_id, ord_date

--task 8
--select cust_name, city, grade from customer1
--order by 
--case when grade is null then 0 else 1 end, grade desc

--task 9
--select customer_id, count(distinct (ord_no)), max(purch_amt) from orders
--group by customer_id
--order by 2 desc

--task 10
--select ord_date, sum(purch_amt), sum(purch_amt * 0.15) from orders
--group by ord_date
--order by ord_date

------------------------------------------------ QUERING ON MULTIPLE TABLES -------------------------------------------

--task 1
--select c.cust_name, s.name, s.city from salesman s
--join customer1 c on c.city = s.city

--task 2
--select c.cust_name, s.name from salesman s
--join customer1 c on c.salesman_id = s.salesman_id

--task 3
--select o.ord_no, c.cust_name, o.customer_id, o.salesman_id from customer1 c
--join orders o on c.customer_id = o.customer_id
--join salesman s on s.salesman_id = o.salesman_id
--where s.city != c.city

--task 4
--select o.ord_no, c.cust_name from orders o
--join customer1 c on o.customer_id = c.customer_id

--task 5
--select cust_name as Customer, grade as Grade, ord_no  from orders, customer1
--where customer1.customer_id = orders.customer_id
--and Grade is not null

----task 6
--select cust_name as customer, customer1.city, name as salesman, commission from salesman, customer1
--where salesman.salesman_id = customer1.salesman_id
--and commission between 0.12 and 0.14

--task 7
--select ord_no, cust_name, commission as commission2, purch_amt * commission as commission from orders, salesman, customer1
--where orders.salesman_id = salesman.salesman_id
--and orders.customer_id = customer1.customer_id
--and grade >=200 

--task 8
--select * from customer1, orders
--where orders.customer_id = customer1.customer_id
--and ord_date = '2012-10-05'


---------------------------------------------- FILTERING AND SORTING ON HR DATABASE --------------------------------------------

--task 1
--select CONCAT_WS(' ', FIRST_NAME, LAST_NAME) as fullname, salary from employees
--where salary < 6000

--task 2
--select first_name, last_name, department_id, salary from employees
--where salary > 8000

--task 3
--select first_name, last_name, department_id from employees
--where last_name = 'McEwen'

--task 4
--select * from employees
--where department_id is null

--task 5
--select * from employees
--where department_name = 'Marketing'

--task 6
--select CONCAT_WS(' ', first_name, last_name) as fullname, hire_date, salary, department_id from employees
--where first_name not like '%M%'
--order by DEPARTMENT_ID

--task 7
--select * from employees
--where salary between 8000 and 12000
--and HIRE_DATE > '1987-06-05' 
--and DEPARTMENT_ID not in (40, 120, 70)
--and COMMISSION_PCT is not null

--task 8
--select CONCAT_WS(' ', first_name, last_name) as fullname, salary from employees
--where COMMISSION_PCT is null

--task 9
--select CONCAT_WS(' ', first_name, last_name) as fullname, phone_number, salary from employees
--where salary between 9000 and 17000

--task 10
--select first_name, last_name, salary from employees
--where first_name like '%m'

--task 11
--select CONCAT_WS(' ', first_name, last_name) as fullname, salary from employees
--where salary not between 7000 and 15000
--order by fullname

--task 12
--select CONCAT_WS(' ', first_name, last_name) as fullname, job_id, hire_date from employees
--where hire_date between '2007-11-05' and '2009-07-05'

--task 13
--select CONCAT_WS(' ', first_name, last_name) as fullname, department_id from employees
--where department_id = 70 or department_id = 90

--task 14
--select CONCAT_WS(' ', first_name, last_name) as fullname, salary, manager_id from employees
--where MANAGER_ID is not null

--task 15
--select * from employees 
--where HIRE_DATE < '2002-06-21'

--task 16
--select first_name, last_name, email, salary, manager_id from employees
--where manager_id in (120, 103, 145)

--task 17
--select * from employees
--where first_name like '%D%' or first_name  like '%S%' or first_name  like '%N%'
--order by salary desc

--task 18
--select CONCAT_WS(' ', first_name, last_name) as fullname, hire_date, commission_pct, concat_ws('-', email, PHONE_NUMBER), salary from employees
--where salary > 11000 or PHONE_NUMBER like '______3%'

--task 19
--select first_name, last_name, department_id from employees
--where first_name like '__s%'

--task 20
--select employee_id, first_name, job_id, department_id from employees
--where department_id not in (50, 30, 80)

--task 21
--select employee_id, first_name, job_id, department_id from employees
--where department_id in (30, 40, 90)

--task 22
--select employee_id from job_history
--group by employee_id
--having count(employee_id) >= 2

--task 23
--select job_id, count(employee_id) as count, sum(salary) as sum, max(salary)- min(salary) as salary_difference from employees
--group by job_id

--task 24 **
--select job_id from job_history
--where end_date - start_date > 300 
--group by job_id 
--having count(employee_id) >=2

--task 25
--select country_id, count(city) from locations
--group by country_id

--task 26
 --select manager_id, count(employee_id) from employees
 --group by manager_id

 --task 27
 --select * from jobs
 --order by job_title desc

 --task 28
 --select first_name, last_name, hire_date from employees
 --where job_id in ('SA_REP', 'SA_MAN')

 --task 29
 --select department_id, avg(salary) from employees
 --where COMMISSION_PCT is not null
 --group by DEPARTMENT_ID

 --task 30
 --select department_id from employees
 --group by department_id, manager_id
 --having count(EMPLOYEE_ID) >= 4

 --task 31
 --select department_id from employees
 --where COMMISSION_PCT is not null
 --group by department_id
 --having count(commission_pct) >10

 --task 32
 --select employee_id, max(start_date) as end_date from job_history
 --group by employee_id

 --task 33
 --select * from employees
 --where COMMISSION_PCT is null and salary between 7000 and 12000 and DEPARTMENT_ID = 50

 --task 34
 --select job_id, avg(salary) from employees
 --group by job_id 
 --having avg(salary) > 8000

 --task 35
 --select job_title, (max_salary - min_salary) as salary_diff from jobs
 --where max_salary between 12000 and 18000

 --task 36
 --select first_name, last_name from employees
 --where first_name like 'D%' or last_name like 'D%'

 --task 37
 --select * from jobs
 --where min_salary > 9000

 --task 38
 --select * from employees
 --where hire_date > '1987-09-07'