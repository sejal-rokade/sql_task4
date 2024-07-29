select * from passenger

--custom constraint after table is created that particular column to not allow value ('a1', 'b1' , 'check')

alter table passenger add column luggage int not null default 0
	
alter table passenger add column city varchar not null default 0

alter table passenger add constraint check_city check (city not in ('a1','b1','check'))

update passenger set city='a1' where passenger_id = 1   --it is fail due to check constraint

update passenger set city='b1' where passenger_id = 3     --it also fail

update passenger set city='check' where passenger_id = 4   --it also fail

update passenger set city='nagpur' where passenger_id = 2 
