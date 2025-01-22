---------------------------------------1
--task 1)
--select first_name, last_name, hire_date,
--case 
--when month(hire_date) between 3 and 5 then 'spring'
--when month(hire_date) between 6 and 8 then 'summer'
--when month(hire_date) between 9 and 11 then 'autumn'
-- else 'winter'
--end
--as season
--from employees

--task 2)
--select first_name, last_name, hire_date,
--case 
--when hire_date like '%-03-%' or hire_date like '%-04-%' or hire_date like '%-05-%' then 'spring'
--when hire_date like '%-06-%' or hire_date like '%-07-%' or hire_date like '%-08-%' then 'summer'
--when hire_date like '%-09-%' or hire_date like '%-10-%' or hire_date like '%-11-%' then 'autumn'
--when hire_date like '%-12-%' or hire_date like '%-01-%' or hire_date like '%-02-%' then 'winter'
--end
--as season
--from employees

--task 3)
--select first_name, last_name, hire_date,
--case
--    when month(hire_date) in (3,4,5) then 'spring'
	--when month(hire_date) in (6,7,8) then 'summer'
	--when month(hire_date) in (9,10,11) then 'autumn'
	--else 'winter'
	--end as season
	--from employees
----------------------------------------------------------2
-- task 1)
--select salesman_id as 'ID', name, 'salesman' from salesman 
--where city = 'London'
--union
--select customer_id as 'ID', cust_name, 'customer' from customer
--where city = 'London'

-- task 2)
--select salesman_id, city from salesman
--union
--select salesman_id, city from customer

-- task 3)
--select customer_id, salesman_id from orders
--intersect
--select customer_id, salesman_id from customer

-- task 4)

--SELECT o.salesman_id, 
--       s.name, 
--       o.ord_no, 
--       'lowest_on' AS 'highest_on_lowest_on', 
--       o.ord_date
--FROM orders o
--JOIN salesman s ON o.salesman_id = s.salesman_id
--WHERE o.purch_amt = (
--    SELECT MIN(purch_amt)
--    FROM orders
--    WHERE ord_date = o.ord_date
--)

--UNION ALL

--SELECT o.salesman_id, 
--       s.name, 
--       o.ord_no, 
--       'highest_on' AS 'highest_on_lowest_on', 
--       o.ord_date
--FROM orders o
--JOIN salesman s ON o.salesman_id = s.salesman_id
--WHERE o.purch_amt = (
--    SELECT MAX(purch_amt)
--    FROM orders
--    WHERE ord_date = o.ord_date
--)

--ORDER BY ord_date, 'highest_on_lowest_on';

----------- task 5

--SELECT o.salesman_id, 
--       s.name, 
--       o.ord_no, 
--       'lowest_on' AS 'highest_on_lowest_on', 
--       o.ord_date
--FROM orders o
--JOIN salesman s ON o.salesman_id = s.salesman_id
--WHERE o.purch_amt = (
--    SELECT MIN(purch_amt)
--    FROM orders
--    WHERE ord_date = o.ord_date
--)

--UNION ALL

--SELECT o.salesman_id, 
--       s.name, 
--       o.ord_no, 
--       'highest_on' AS 'highest_on_lowest_on', 
--       o.ord_date
--FROM orders o
--JOIN salesman s ON o.salesman_id = s.salesman_id
--WHERE o.purch_amt = (
--    SELECT MAX(purch_amt)
--    FROM orders
--    WHERE ord_date = o.ord_date
--)

--ORDER BY 3;

----------- task 6 ????????
--select 
--       salesman_id,
--	   name,
--	   cust_name,
--	   commission
--	   from salesman, customer
--where salesman.city = customer.city
--union
--select 
       
----------- task 8
--select customer_id, city, grade, 'High Rating' from customer
--where grade >= 300 
--union 
--select customer_id, city, grade, 'Low Rating' from customer
--where grade < 300

----------- teask 9----------?????
--select salesman_id, name from orders
--where (salesman.salesman_id = orders.salesman_id 
--  and
--  select count(salesman_id) from orders
--   group by salesman_id 
--   having count (salesman_id) > 1 )
   

--------------------------------------------------------------3
----------- task 1)
--select mov_title, mov_year from movie

------------task 2)
--select mov_year from movie 
--where mov_title = 'American Beauty'

----------- task 3)
--select mov_title from movie
--where mov_year = 1999

----------- task 4)
--select mov_title from movie
--where mov_year < 1998

------------task 5) 
--select rev_name from reviewer
--union all
--select mov_title from movie

----------- task 6)
--select rev_name from reviewer 
--join rev_id 1 on reviewer.rev_id = rating.rev_id
--where rev_stars >= 7

--select rev_name from reviewer, rating 
--where reviewer.rev_id = rating.rev_id
--and rev_stars >= 7

----------- task 7)
--select mov_title from movie, rating
--where mov_id =  num_o_ratings = NULL

--select mov_title from movie
--where mov_id not in (select mov_id from rating)

----------- task 8)
--select mov_title from movie
--where mov_id in (905, 907, 917)

----------- task 9)
--select mov_id, mov_title, mov_year from movie
--where mov_title like '%Boogie%Nights%'
--order by mov_year 

----------- task 10)
--select act_id from actor
--where act_fname = 'Woody' and act_lname = 'Allen'

