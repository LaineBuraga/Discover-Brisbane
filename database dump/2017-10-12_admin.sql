Show databases;
use ifb299;
show tables;
#describe client;
#drop table client;
/*
create table client(
	client_id INT auto_increment,
    email VARCHAR(255) NOT NULL UNIQUE, 
    firstname VARCHAR(45),
    lastname VARCHAR(45),
    salt VARCHAR(255),
    password VARCHAR(255),
    phone_number VARCHAR(10),
    client_type ENUM ('tourist', 'student', 'businessman'),	
    primary key ( client_id )
);
#rename table locations to location 
create table category_type (
	category_id INT auto_increment,
    category VARCHAR(255) NOT NULL
);*/

#Update client set email = 'test2@gmail.com' where client_id = 2;
#Alter table client add unique (email);

#create table for categories
/*
create table category (
	category_id INT auto_increment,
    category_name VARCHAR(255) NOT NULL UNIQUE,
    primary key ( category_id )
);
*/
#inserting values for category table
/*insert into category ( category_name ) 
values ( 'Colleges' ), ( 'Libraries' ), ( 'Industries' ), ( 'Hotels' ), ( 'Parks' ), ( 'Zoos' ), ( 'Museums' ), ( 'Restaurants' ), ( 'Malls' )
*/

#create table for colleges
/*
create table college (
	college_id INT auto_increment,
    college_name VARCHAR(255) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    departments VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    category_id INT NOT NULL,
    photo_name VARCHAR(255),
    foreign key ( category_id ) references category ( category_id),
    primary key ( college_id )
);*/

#remove not null
#alter table college change column departments departments VARCHAR(255) null;

#create view for Colleges from Location table -- to transfer details to college table
/*create view forCol as 
select name, address, departments, email, photo_name from location where category = 'College';

create view justCol as 
select category_id from category where category_name = 'Colleges';

Insert into college ( college_name, address, departments, email, category_id, photo_name )
select name, address, departments, email, category_id, photo_name 
from forCol natural join justCol; 
*/

#create table for libraries
/*
create table library (
	library_id INT auto_increment,
    library_name VARCHAR(255) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    phone_number CHAR(10),
    email VARCHAR(255),
    category_id INT NOT NULL,
    photo_name VARCHAR(255),
    foreign key ( category_id ) references category ( category_id),
    primary key ( library_id )
);*/

#create view for Libraries from Location table -- to transfer details to library table
/*create view forLib as 
select name, address, phone_number, email, photo_name from location where category = 'Library';

create view justLib as 
select category_id from category where category_name = 'Libraries';

Insert into library ( library_name, address, email, category_id, photo_name )
select name, address, email, category_id, photo_name 
from forLib natural join justLib; 

#insert numbers without spaces in between -- exactly 10 digits
Update library
set phone_number = '0734034166'
where library_name = 'Brisbane Square Library';

Update library
set phone_number = '0738407666'
where library_name = 'State Library of Queensland';
*/

#create table for industries
/*
create table industry (
	industry_id INT auto_increment,
    industry_name VARCHAR(255) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    industry_type VARCHAR(255),
    email VARCHAR(255),
    category_id INT NOT NULL,
    photo_name VARCHAR(255),
    foreign key ( category_id ) references category ( category_id),
    primary key ( industry_id )
);
*/
#create view for industries from Location table -- to transfer details to industry table
/*create view forInd as 
select name, address, industry_type, email, photo_name from location where category = 'industry';

create view justInd as 
select category_id from category where category_name = 'Industries';

Insert into industry ( industry_name, address, industry_type, email, category_id, photo_name )
select name, address, industry_type, email, category_id, photo_name 
from forInd natural join justInd; 
*/

#create table for hotels
/*
create table hotel (
	hotel_id INT auto_increment,
    hotel_name VARCHAR(255) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    phone_number CHAR(10),
    email VARCHAR(255),
    photo_name VARCHAR(255),
    primary key ( hotel_id )
);*/

#describe hotel;

#create view for hotels from Location table -- to transfer details to hotel table
/*create view forHotel as 
select name, address, phone_number, email, photo_name from location where category = 'hotel';

create view justHotel as 
select category_id from category where category_name = 'Hotels';

Insert into hotel ( hotel_name, address, email, photo_name )
select name, address, email, photo_name 
from forHotel; 

#insert numbers without spaces in between -- exactly 10 digits
Update hotel
set phone_number = '0733068888'
where hotel_name = 'Treasury Hotel';

Update hotel
set phone_number = '0738536000'
where hotel_name = 'The Sebel Quay West Brisbane';

select * from hotel;
*/

#create table for parks
/*
create table park (
	park_id INT auto_increment,
    park_name VARCHAR(255) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    phone_number CHAR(10),
    email VARCHAR(255),
    category_id INT NOT NULL,
    photo_name VARCHAR(255),
    foreign key ( category_id ) references category ( category_id),
    primary key ( park_id )
);*/

#create view for parks from Location table -- to transfer details to park table
/*create view forpark as 
select name, address, email, photo_name from location where category = 'park';

create view justpark as 
select category_id from category where category_name = 'Parks';

Insert into park ( park_name, address, email, category_id, photo_name )
select name, address, email, category_id, photo_name 
from forpark natural join justpark; 

#insert numbers without spaces in between -- exactly 10 digits
Update park
set phone_number = '0734038888'
where park_name = 'City Botanic Gardens';

Update park
set phone_number = '0734032535'
where park_name = 'Brisbane Botanic Gardens Mt Coot-tha';
*/

#create table for zoos
/*
create table zoo (
	zoo_id INT auto_increment,
    zoo_name VARCHAR(255) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    phone_number CHAR(10),
    email VARCHAR(255),
    category_id INT NOT NULL,
    photo_name VARCHAR(255),
    foreign key ( category_id ) references category ( category_id),
    primary key ( zoo_id )
);*/

#create view for zoos from Location table -- to transfer details to zoo table
/*create view forZoo as 
select name, address, email, photo_name from location where category = 'zoo';

create view justZoo as 
select category_id from category where category_name = 'Zoos';

Insert into zoo ( zoo_name, address, email, category_id, photo_name )
select name, address, email, category_id, photo_name 
from forZoo natural join justZoo; 

#insert numbers without spaces in between -- exactly 10 digits
Update zoo
set phone_number = '0754362000'
where zoo_name = 'Australia Zoo';

Update zoo
set phone_number = '0755341266'
where zoo_name = 'Currumbin Wildlife Sanctuary';
*/

#create table for museums
/*
create table museum (
	museum_id INT auto_increment,
    museum_name VARCHAR(255) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    phone_number CHAR(10),
    email VARCHAR(255),
    category_id INT NOT NULL,
    photo_name VARCHAR(255),
    foreign key ( category_id ) references category ( category_id),
    primary key ( museum_id )
);*/

#create view for museums from Location table -- to transfer details to museum table
/*create view forMuse as 
select name, address, email, photo_name from location where category = 'museum';

create view justMuse as 
select category_id from category where category_name = 'Museums';

Insert into museum ( museum_name, address, email, category_id, photo_name )
select name, address, email, category_id, photo_name 
from forMuse natural join justMuse; 

#insert numbers without spaces in between -- exactly 10 digits
Update museum
set phone_number ='0738407555'
where museum_name = 'Queensland Museum & Science Centre';

Update museum
set phone_number = '0732117052'
where museum_name = 'MacArthur Museum Brisbane';
*/

#create table for restaurant
/*
create table restaurant (
	restaurant_id INT auto_increment,
    restaurant_name VARCHAR(255) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    phone_number CHAR(10),
    email VARCHAR(255),
    category_id INT NOT NULL,
    photo_name VARCHAR(255),
    foreign key ( category_id ) references category ( category_id),
    primary key ( restaurant_id )
);*/


#create view for restaurants from Location table -- to transfer details to restaurant table
/*create view forRes as 
select name, address, email, photo_name from location where category = 'restaurant';

create view justRes as 
select category_id from category where category_name = 'Restaurants';

Insert into restaurant ( restaurant_name, address, email, category_id, photo_name )
select name, address, email, category_id, photo_name 
from forRes natural join justRes; 

#insert numbers without spaces in between -- exactly 10 digits
Update restaurant
set phone_number = '0732119020'
where restaurant_name = 'Riverbar & Kitchen';

Update restaurant
set phone_number = '0732113431'
where restaurant_name = 'Funny Funny Korean Restaurant & Pub';
*/

#create table for malls
/*
create table mall (
	mall_id INT auto_increment,
    mall_name VARCHAR(255) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    phone_number CHAR(10),
    email VARCHAR(255),
    category_id INT NOT NULL,
    photo_name VARCHAR(255),
    foreign key ( category_id ) references category ( category_id),
    primary key ( mall_id )
);*/

#create view for malls from Location table -- to transfer details to mall table
/*create view forMall as 
select name, address, email, photo_name from location where category = 'mall';

create view justMall as 
select category_id from category where category_name = 'Malls';

Insert into mall ( mall_name, address, email, category_id, photo_name )
select name, address, email, category_id, photo_name 
from forMall natural join justMall; 

#insert numbers without spaces in between -- exactly 10 digits
Update mall
set phone_number = '0732236900'
where mall_name ='Myer Centre, Brisbane';

Update mall
set phone_number = '0730066290'
where mall_name = 'Queen Street Mall';*/

#syntax to change all category_name column to just name
/*alter table hotel change `hotel_name` `name` VARCHAR(255) NOT NULL;
describe hotel;*/

#reuse queries below to remove foreign keys in individual category table
/*show create table museum;
alter table hotel drop foreign key hotel_ibfk_1;
alter table hotel drop column category_id;
select * from hotel;*/

#delete category table
#SHOW ENGINE INNODB STATUS;
#drop table category;

 /*
#create a summary table of all locations
create table locationSummary (
	location_id INT auto_increment,
    name VARCHAR(255) NOT NULL, 
    category VARCHAR (255) NOT NULL,
	primary key ( location_id ),
    foreign key college_id_fk ( name ) references college ( name ) ON UPDATE CASCADE ON DELETE NO ACTION,
    foreign key library_id_fk ( name ) references library ( name ) ON UPDATE CASCADE ON DELETE NO ACTION,
    foreign key industry_id_fk ( name ) references industry ( name ) ON UPDATE CASCADE ON DELETE NO ACTION,
    foreign key hotel_id_fk ( name ) references hotel ( name ) ON UPDATE CASCADE ON DELETE NO ACTION,
    foreign key park_id_fk ( name ) references park ( name ) ON UPDATE CASCADE ON DELETE NO ACTION,
    foreign key zoo_id_fk ( name ) references zoo ( name ) ON UPDATE CASCADE ON DELETE NO ACTION,
    foreign key museum_id_fk ( name ) references museum ( name ) ON UPDATE CASCADE ON DELETE NO ACTION,
    foreign key restaurant_id_fk ( name ) references restaurant ( name ) ON UPDATE CASCADE ON DELETE NO ACTION,
    foreign key mall_id_fk ( name ) references mall ( name ) ON UPDATE CASCADE ON DELETE NO ACTION
);*/

#INSERT INTO locationSummary (name, category) VALUES
 #   ( (SELECT name from college WHERE college_id=1), 'College' );

/*
select name, address, departments, null, null, email, photo_name from college 
union 
select name, address, null, null, phone_number, email, photo_name from library
union 
select name, address, null, industry_type, null, email, photo_name from industry
union 
select name, address, null, null, phone_number, email, photo_name from hotel
union
select name, address, null, null, phone_number, email, photo_name from park
union
select name, address, null, null, phone_number, email, photo_name from zoo
union
select name, address, null, null, phone_number, email, photo_name from museum
union
select name, address, null, null, phone_number, email, photo_name from restaurant
union
select name, address, null, null, phone_number, email, photo_name from mall;*/

/*
Update location
set category = 'Mall'
where location_id = 18 or location_id = 19; 
select * from location;*/

#drop all views 
/*drop view justcol;
drop view justhotel;
drop view justind;
drop view justlib;
drop view justmall;
drop view justmuse;
drop view justpark;
drop view justres;
drop view justzoo;*/
show tables;
/*
alter table location 
	add constraint college_id_fk foreign key ( name, address, departments, email, photo_name ) references college ( name, address, departments, email, photo_name ) 
		ON UPDATE CASCADE ON DELETE NO ACTION,
    add constraint library_id_fk foreign key ( name, address, phone_number, email, photo_name ) references library ( name, address, phone_number, email, photo_name ) 
		ON UPDATE CASCADE ON DELETE NO ACTION,
    add constraint industry_id_fk foreign key ( name, address, industry_type, email, photo_name ) references industry ( name, address, industry_type, email, photo_name ) 
		ON UPDATE CASCADE ON DELETE NO ACTION,
    add constraint hotel_id_fk foreign key ( name, address, phone_number, email, photo_name ) references hotel ( name, address, phone_number, email, photo_name ) 
		ON UPDATE CASCADE ON DELETE NO ACTION,
    add constraint park_id_fk foreign key ( name, address, phone_number, email, photo_name ) references park ( name, address, phone_number, email, photo_name ) 
		ON UPDATE CASCADE ON DELETE NO ACTION,
    add constraint zoo_id_fk foreign key ( name, address, phone_number, email, photo_name ) references zoo ( name, address, phone_number, email, photo_name ) 
		ON UPDATE CASCADE ON DELETE NO ACTION,
    add constraint museum_id_fk foreign key ( name, address, phone_number, email, photo_name ) references museum ( name, address, phone_number, email, photo_name ) 
		ON UPDATE CASCADE ON DELETE NO ACTION,
    add constraint restaurant_id_fk foreign key ( name, address, phone_number, email, photo_name ) references restaurant ( name, address, phone_number, email, photo_name ) 
		ON UPDATE CASCADE ON DELETE NO ACTION,
    add constraint mall_id_fk foreign key ( name, address, phone_number, email, photo_name ) references mall ( name, address, phone_number, email, photo_name ) 
		ON UPDATE CASCADE ON DELETE NO ACTION;*/
