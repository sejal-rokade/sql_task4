create table flight(
	flight_id serial primary key,
	airline varchar(100),
	number int
)

select * from flight

INSERT INTO flight (Airline, number) VALUES ('Delta',123),('united',876),('american',345)

create table passenger(
	passenger_id serial primary key,
	f_name varchar(100),
	l_name varchar(100),
	gender varchar(50),
	age int check (age <78),
	flight_id int,
	foreign key (flight_id) references flight(flight_id)
)

insert into passenger(f_name,l_name,gender,age,flight_id) values('raman','goenke','male',44,1)

select * from passenger

copy passenger from 'D:\DATA ANALYTICS\SQL\Task\sql_task4.csv' delimiter ',' csv header 

select f_name from passenger 

select distinct flight_id from passenger

select f_name from passenger where age>30

select f_name,l_name from passenger where gender='female' AND flight_id= 3

Select * from passenger where gender='female' or flight_id= 2

select * from passenger where not flight_id= 1 

update passenger set l_name='shetty' where passenger_id=100

update passenger set f_name=case
       when passenger_id=3 then 'vicky'
        when passenger_id=4 then 'ram'
end
where passenger_id in(3,4)

update passenger set age=null where age=31

delete from passenger where passenger_id=99

alter table passenger add column mob int,
add column city varchar(100)

alter table passenger drop column city

alter table passenger rename column mob to contact

alter table passenger add column email varchar(50) not null default 'no email'

select * from passenger where passenger_id in(56,76,88)

select * from passenger where age between 40 and 50


