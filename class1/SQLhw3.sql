--select * from salesman
--select 'this is sql exercise practise and solution'
--select 1, 2, 3
--select 10+15
--select 2+7*9-6/2
--select name, commission from salesman
--select ord_date, salesman_id, ord_no, purch_amt from orders
--select distinct salesman_id from orders

--select name, city from salesman
--where city = 'Paris'

--select customer_id, cust_name, city, grade, salesman_id from customer
--where grade = 200

--select ord_no, ord_date, purch_amt from orders
--where salesman_id = 5001

--select year, subject, winner from nobel_win
--where year = 1970

--select winner from nobel_win
--where subject = 'Literature' and year = 1971

--select year, subject from nobel_win
--where winner = 'Dennis Gabor'

--select winner from nobel_win
--where subject = 'Physics' and year > 1950

--select year, subject, winner, country from nobel_win
--where subject = 'Chemistry' and year between 1965 and 1975

--select * from nobel_win
--where year > 1972 and winner in ('Menachem Begin', 'Yitzhak Rabin')

--select * from nobel_win
--where winner like 'Louis %'

--select * from nobel_win
--where (subject = 'Physics' and year = 1970) or (subject = 'Economics' and year = 1971)

--select * from nobel_win
--where year = 1970 and subject not in ('Physiology', 'Economics')

--select * from nobel_win
--where (subject = 'Physiology' and year < 1971) or (subject = 'Peace' and year >= 1974)

--select * from nobel_win
--where winner = 'Johannes Georg Bednorz'

--select * from nobel_win
--where winner not like 'P%'
--order by year desc, winner asc


---------24?
--select * from nobel_win
--where year = 1970
--order by subject

--select * from item_mast
--where pro_price between 200 and 600

--select avg(pro_price) from item_mast
--where pro_com = 16

--select pro_name as 'item_name', pro_price as 'price_in_rs' from item_mast

--select pro_name, pro_price from item_mast
--where pro_price >= 250
--order by pro_price desc, pro_name

----------------------------------29
--select avg(pro_price), pro_com from item_mast

--select pro_name, pro_price from item_mast
--where pro_price = (select min(pro_price) from item_mast)

--select distinct emp_lname from emp_details

--select * from emp_details
--where EMP_LNAME = 'Snares'

--select * from emp_details
--where EMP_DEPT = 57
-----------------------------------------------------------------------------------

--select * from customer
--where grade > 100

--select * from customer
--where city = 'New York' and grade >= 100

--select * from customer
--where city = 'New York' or grade >= 100

--select * from customer
--where city = 'New York' or grade <= 100

--select * from customer
--where city not in ('New York') and grade <= 100

--select * from orders
--where not (ord_date = ('2012-09-10') and salesman_id >= 5005 and purch_amt >= 1000)

--select * from salesman
--where commission between 0.10 and 0.12

--select * from orders
--where purch_amt <= 200 or not (ord_date >= '2012-02-10' and customer_id < 3009)

--select * from orders
--where (customer_id > 3005 and purch_amt < 1000) or not ord_date = '2012-08-17'

--------------------------------------10


--select * from emp_details
--where EMP_LNAME = 'Dosni' or EMP_LNAME = 'Mardy'

--select * from emp_details
--where EMP_DEPT = 47 or EMP_DEPT = 63