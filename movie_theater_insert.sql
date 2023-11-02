--Movie theater id and location
insert into movie_theater(theater_id, location)values(1,'Boston');

select * from movie_theater

-- Customer
insert into customer(
	customer_id,
	first_name,
	last_name,
	billing_info,
	address
)values(
	1,
	'Jamie',
	'Jay',
	'5555-5555-5555-5555 555 01/2050',
	'555 Totally a Town, Towny Town, MA 00000'
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	billing_info,
	address
)values(
	2,
	'David',
	'Day',
	'5555-5555-5555-5555 555 01/2050',
	'555 Totally a Town, Towny Town, MA 00000'
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	billing_info,
	address
)values(
	3,
	'Baby',
	'Ray',
	'5555-5555-5555-5555 555 01/2050',
	'555 Totally a Town, Towny Town, MA 00000'
);

select * from customer

-- Employee
insert into employee(
	employee_id,
	first_name,
	last_name,
	theater_id
)values(
	1,
	'Freddy',
	'Jazza',
	'1'
);

insert into employee(
	employee_id,
	first_name,
	last_name,
	theater_id
)values(
	2,
	'Bonnie',
	'Boop',
	'1'
);

-- Movie
insert into movie(
	movie_id,
	movie_name,
	movie_date,
	movie_time,
	theater_number,
	theater_id
)values(
	1,
	'Tiny Nerdy Things',
	'1/1/2025',
	'6:00PM',
	'5',
	'1'
);

insert into movie(
	movie_id,
	movie_name,
	movie_date,
	movie_time,
	theater_number,
	theater_id
)values(
	2,
	'Wicked Nerdy Things',
	'1/1/2025',
	'5:00PM',
	'2',
	'1'
);

--Ticket
insert into ticket (
	ticket_id,
	order_date,
	ticket_amount,
	sub_total,
  	total_cost,
  	movie_id,
  	customer_id,
  	employee_id
)values(
	1,
	'1/1/2025',
	3,
	45.00,
	45.00,
	1,
	1,
	1
);

insert into ticket (
	ticket_id,
	order_date,
	ticket_amount,
	sub_total,
  	total_cost,
  	movie_id,
  	customer_id,
  	employee_id
)values(
	2,
	'1/1/2025',
	2,
	30.00,
	30.00,
	1,
	2,
	1
);

insert into ticket (
	ticket_id,
	order_date,
	ticket_amount,
	sub_total,
  	total_cost,
  	movie_id,
  	customer_id,
  	employee_id
)values(
	3,
	'1/1/2025',
	1,
	15.00,
	15.00,
	2,
	3,
	1
);

--Concession
insert into concession (
  	order_id,
  	product_id,
  	product_amount,
  	order_date,
  	sub_total,
  	total_cost,
  	employee_id,
  	customer_id
)values(
	1,
	1,
	3,
	'10/31/2023',
	30.00,
	30.00,
	1,
	1
);

insert into concession (
  	order_id,
  	product_id,
  	product_amount,
  	order_date,
  	sub_total,
  	total_cost,
  	employee_id,
  	customer_id
)values(
	2,
	1,
	2,
	'10/31/2023',
	10.00,
	10.00,
	2,
	2
);

insert into concession (
  	order_id,
  	product_id,
  	product_amount,
  	order_date,
  	sub_total,
  	total_cost,
  	employee_id,
  	customer_id
)values(
	3,
	1,
	1,
	'10/31/2023',
	10.00,
	10.00,
	2,
	3
);

--Award Program
insert into award_program (
  	member_id,
  	award_points,
  	customer_id,
  	ticket_id,
  	order_id
)values(
	1,
	75,
	1,
	1,
	1
);

insert into award_program (
  	member_id,
  	award_points,
  	customer_id,
  	ticket_id,
  	order_id
)values(
	2,
	40,
	2,
	2,
	2
);

select * from award_program
select * from customer

select count(member_id)
from award_program

select count(customer)
from customer
