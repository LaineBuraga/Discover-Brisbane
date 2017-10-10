Show databases;
use ifb299;
show tables;
#describe client;
#drop table client;
/*
create table client(
	client_id INT auto_increment,
    email VARCHAR(255) NOT NULL, 
    firstname VARCHAR(45),
    lastname VARCHAR(45),
    salt VARCHAR(255),
    password VARCHAR(255),
    phone_number VARCHAR(10),
    client_type ENUM ('tourist', 'student', 'businessman'),	
    primary key ( client_id )
);*/
#rename table locations to location 