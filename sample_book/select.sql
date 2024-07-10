# 데이터 조회(DML - SELECT)

select * from student_tb; # student_td에 있는 것을 다 조회
select `student_id`, `student_name`, `phone`, `email`, `introduce`, `admission_date` from `study`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `study`.`student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from `student_tb`;
select student_id, student_name, phone, email, introduce, admission_date from student_tb;
select student_id, student_name from student_tb; # student_td안에서 id랑 name만 조회하겠다 
select student_name, student_id from student_tb; # 순서바꿔서 들고오는 것도 가능 

select student_id, student_name as s_name from student_tb; # student_name -> s_name으로 컬럼명을 바꿈 

# union(all)의 병합 조건 -> 컬럼의 '개수'와 '자료형'이 동일한 select 결과만 병합 가능 
# union -> 중복 제거 후 select 결과를 병합 
# union all -> 중복 제거 없이 select 결과 병합 

select 1 as number, "김준일" as name, 31 as age 
union all 
select 2 as number, "김준이" as name, 32 as age
union 
select 2 as number, "김준이" as name, 32 as age;

# union all 가능 -> 컬럼 개수 동일, 자료형 동일 !!
select student_id, student_name from student_tb
union all 
select student_id, phone from student_tb;

# 테이블 결과를 하나의 가상테이블로 만들 수 있음 
select 
	number, name
from 
	(select 1 as number, "김준일" as name, 31 as age 
	union all 
	select 2 as number, "김준이" as name, 32 as age
	union 
	select 2 as number, "김준이" as name, 32 as age) as temp_tb; #테이블 명이 존재하지 않기 때문에 가짜테이블명을 지정해줘야함 

 

