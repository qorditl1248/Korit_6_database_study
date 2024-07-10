
select * from producer_tb;

-- producer_tb 제작자, 위아래 둘이 똑같은 거 
insert into producer_tb
select 
	distinct
    0,
	제작자
from 
	sample_dvd_tb;

-- insert into producer_tb
-- select 
--     0,
-- 	제작자
-- from 
-- 	sample_dvd_tb
-- group by
-- 	제작자;
    