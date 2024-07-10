
# 실행순서 
# from -> where -> group by -> select -> having -> order by -> limit
# select랑 having은 dbms에 따라 자리가 달라질수도 있음 

select * from dvd_tb;

insert into dvd_tb

select 
	0,
    등록번호,
    제목,
    pdt.producer_id,
    pbt.publisher_id,
    발행년,
    데이터기준일자 
from
	sample_dvd_tb as sdt
    left outer join producer_tb pdt on(pdt.producer_name = sdt.제작자)
	left outer join publisher_tb pbt on(pbt.publisher_name = sdt.발행자);
    
    
    
select 
	dt.dvd_id,
    dt.registration_number,
    dt.title,
    dt.producer_id,
    pdt.producer_name,
    dt.publisher_id,
    pbt.publisher_name,
    dt.publication_year,
    dt.database_date
from
	dvd_tb as dt
    left outer join producer_tb as pdt on(pdt.producer_id = dt.producer_id)   # 조인은 키값으로! 
    left outer join publisher_tb as pbt on(pbt.publisher_id = dt.publisher_id)
limit 10, 10;  # 10부터 10개


# title, producer_id, publisher_id가 같으면 하나의 dvd
select 
	title,
    producer_id,
    publisher_id,
    count(*) as dvd_count
from
	dvd_tb
group by
	title,
    producer_id,
    publisher_id
having 
	dvd_count > 1;