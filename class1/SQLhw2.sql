--create database hwclass4

--create table passengers (
--id int primary key,
--first_name varchar(20),
--last_name varchar(20),
--date_of_birth date,
--country_of_citizenship varchar(20),
--country_of_residence varchar(20),
--passport_number varchar(20),
--created_at timestamp,
--updated_at date
--)

--create table security_check (
--id bigint primary key,
--check_result varchar(20),
--comments varchar(20),
--created_at timestamp,
--updated_at date,
--passengers_id int,
--foreign key (passengers_id) references passengers (id)
--)

--create table booking (
--bookingid int primary key,
--flight_id int,
--status varchar(20),
--booking_platform varchar(20),
--created_at timestamp,
--updated_at date,
--passengers_id int,
--foreign key (passengers_id) references passengers (id)
--)

--create table baggage (
--id int primary key,
--weight_in_kg decimal(4,2),
--created_date timestamp,
--updated_date date,
--booking_id int,
--foreign key (booking_id) references booking (bookingid)
--)

--create table baggage_check (
--id int primary key,
--check_result varchar(20),
--created_at int,
--updated_at int,
--booking_id int,
--passengers_id int,
--foreign key (booking_id) references booking (bookingid),
--foreign key (passengers_id) references passengers (id)
--)

--create table no_fly_list (
--id int primary key,
--active_from date,
--active_to date,
--no_fly_reason varchar(20),
--created_at timestamp,
--updated_at date,
--passengers_id int,
--foreign key (passengers_id) references passengers (id)
--)

--create table boarding_pass (
--id int primary key,
--qr_code varchar(20),
--created_at timestamp,
--updated_at date,
--booking_id int,
--foreign key (booking_id) references booking (bookingid)
--)

--create table airline (
--id int primary key,
--airline_code varchar(20),
--airline_name varchar(20),
--airline_country varchar(20),
--created_at timestamp,
--updated_at date
--)

--create table airport (
--id int primary key,
--airport_name varchar(20),
--country varchar(20),
--states varchar(20),
--city varchar(20),
--created_at timestamp,
--updated_at date
--)

--create table flights (
--flight_id int primary key,
--departing_gate varchar(20),
--arriving_gate varchar(20),
--created_at timestamp,
--updated_at date,
--airline_id int,
--departing_airport_id int,
--arriving_airport_id int,
--foreign key (airline_id) references airline (id),
--foreign key (departing_airport_id) references airport (id),
--foreign key (arriving_airport_id) references airport (id)
--)

--create table flight_manifest (
--id int primary key,
--created_at timestamp,
--updated_at date,
--booking_id int,
--flight_id int,
--foreign key (booking_id) references booking (bookingid),
--foreign key (flight_id) references flights (flight_id)
--)
