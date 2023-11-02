--Movie theater id and location
create table movie_theater(
	theater_id SERIAL primary key,
	location VARCHAR(100)
);

-- Customer
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(100),
	address VARCHAR(100)
);

-- Employee
create table employee(
	employee_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	theater_id INTEGER not null,
	foreign key(theater_id) references movie_theater(theater_id)
);	

-- Movie		
create table movie(
	movie_id SERIAL primary key,
	movie_name VARCHAR(100),
	movie_date DATE default CURRENT_DATE,
	movie_time VARCHAR(100),
	theater_number INTEGER,
	theater_id INTEGER not null,
	foreign key(theater_id) references movie_theater(theater_id)
);

--Ticket
create table ticket (
	ticket_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	ticket_amount NUMERIC(8,2),
	sub_total NUMERIC(8,2),
  	total_cost NUMERIC(10,2),
  	movie_id INTEGER,
  	customer_id INTEGER,
  	employee_id INTEGER,
  	foreign key (movie_id) references movie(movie_id),
  	foreign key (customer_id) references customer(customer_id),
  	foreign key (employee_id) references employee(employee_id)
);

--Concession
create table concession (
  	order_id SERIAL primary key,
  	product_id INTEGER,
  	product_amount INTEGER,
  	order_date DATE default CURRENT_DATE,
  	sub_total NUMERIC(8,2),
  	total_cost NUMERIC(10,2),
  	employee_id INTEGER,
  	customer_id INTEGER,
  	foreign key (customer_id) references customer(customer_id),
  	foreign key (employee_id) references employee(employee_id)
);

--Award Program
create table award_program (
  member_id SERIAL primary key,
  award_points INTEGER,
  customer_id INTEGER,
  ticket_id INTEGER,
  order_id INTEGER,
  foreign key (ticket_id) references ticket(ticket_id),
  foreign key (order_id) references concession(order_id)
);