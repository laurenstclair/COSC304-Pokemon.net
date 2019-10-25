create table Customer (
	id int not null auto_increment,
	first_name varchar(25),
	last_name varchar(35),
	email varchar(50),
	phone varchar(15),
	address varchar(30),
	city varchar(30),
	provice_state varchar(30),
	postal_code int,
	country varchar(20), #should we use country code or string
	user_id varchar(25),
	password varchar(30),
	primary key (id)
);

create table PaymentMethod(
	id int not null auto_increment,
	method varchar(25),
	num int,
	expiratory_date datetime,
	primary key (id)

);

create table OrderSummary(
	id int not null auto_increment,
	order_date datetime,
	total_order_amount decimal(10, 2), 
	shipment_address varchar(40),
	city varchar(30),
	provice_state varchar(30),
	postal_code int,
	country varchar(20),
	primary key (id)
);

create table Category(
	id int not null auto_increment,
	name varchar(30),
	primary key (id)
);

create table Product(
	id int not null auto_increment,
	name varchar(30),
	price decimal(10, 2),
	image_url varchar(100),
	image BLOB,
	description CLOB,
	primary key (id)

);

create table Shipment(
	id int not null auto_increment,
	shipment_date datetime,
	description CLOB,
	primary key(id);
);

create table Warehouse (
	id int not null auto_increment,
	name varchar(40)
);

create table ShoppingCart(
	quantity int, 
	price decimal(10, 2)
);

create table Review(
	id int not null auto_increment,
	rating decimal(1,1),
	comment varchar(128),
	review_date datetime,
	primary key (id)
);

