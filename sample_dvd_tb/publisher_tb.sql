select * from publisher_tb;

-- insert into publisher_tb(publisher_name)
select
	-- 발행자,
    nullif(발행자, "")    # 괄호안에 값이 같다면 값을 null로 바꿈 
    -- ifnull(nullif(replace(발행자, " ", ""), ""), "발행자 없음")
from
	sample_dvd_tb
group by
	발행자
having
	 nullif(발행자, "") is not null;
    

# 공백인거 null인거 빼고 나오게 하는거 
insert into publisher_tb(publisher_name)
select 
	nullif(발행자, "") as publisher_name 
from
	sample_dvd_tb
group by
	발행자
having 
	publisher_name is not null;