select * from rental_tb;
# rand() - 랜덤 함수 0 ~ 9까지 나옴 
# 


-- insert into rental_tb 

select 
	distinct
	0 as rental_id,
    floor(rand() * 3000) + 1 as dvd_id,
    "김준이" as customer_name,
    now() as rental_date
from
	dvd_tb
where
	dvd_id < 1001;

select 
	*
from 
	left outer join (rental_tb as rt)
