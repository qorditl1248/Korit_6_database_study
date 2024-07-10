SELECT * FROM dvd_db.master_tb;
SELECT * FROM dvd_db.join1_tb;
SELECT * FROM dvd_db.join2_tb;

# master_tb을 기준으로 하나의 테이블로 합치는거 
# left outer join - 합집합, 왼쪽이 기준으로 왼쪽 다 들고옴 (오른쪽이 참이 아니라면 왼쪽만 들고옴)
# inner join - 교집합, 둘다 다 가지고 있으면 들고옴 (둘 다 참이 아니라면서 안들고옴)
# 1=1 전체조회 
select
	*
from
	master_tb as mt
	left outer join join1_tb as jt1 on(jt1.join1_id = mt.name_id and jt1.join1_id < 4)
	left outer join join2_tb as jt2 on(jt2.join2_id = mt.phone_id)