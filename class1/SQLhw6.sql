--hotel reservation 

--create table customers (
--customer_id int primary key identity(1, 1), 
--name varchar(50), 
--email varchar(50) unique, 
--phone int, 
--addres varchar(50), 
--membershiplevel varchar(50) )

--create table rooms (
--room_id int primary key identity(1,1),
--room_number varchar(50) unique,
--capacity int,
--price_pernight int,
--availabilitystatus varchar(50)
--)
 
--create table bookings (
--booking_id int primary key identity(1,1),
--customer_id int,
--room_id int,
--checkindate date,
--checkoutdate date,
--totalamount int,
--bookingstatus varchar(50),
-- FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
-- FOREIGN KEY (room_id) REFERENCES rooms(room_id)
--)


--create table payments (
--    payment_id INT PRIMARY KEY identity(1,1),
--    booking_id INT,
--    payment_date DATE,
--    payment_method varchar(50),
--    Payment_status varchar(50),
--    amount_paid int,
--    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
--)


--create table services (
--    service_id INT PRIMARY KEY identity(1,1),
--    serviceName VARCHAR(50),
--    description varchar(50),
--    price int
--)


--create table servicerequests (
--    request_id INT PRIMARY KEY identity(1,1),
--    booking_id INT,
--    service_id INT,
--    request_date DATE,
--    quantity INT,
--    TotalPrice int,
--    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id),
--    FOREIGN KEY (service_id) REFERENCES services(service_id)
--)


--create table reviews (
--    review_id INT PRIMARY KEY identity(1,1),
--    customer_id INT,
--    booking_id INT,
--    review_text varchar(50),
--    rating INT CHECK (rating BETWEEN 1 AND 5),
--    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
--    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
--);









