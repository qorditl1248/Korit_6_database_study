# 데이터 수정 (DML - UPDATE)

select * from student_tb;

select 
	student_id
from 
	student_tb
where 
	student_name = "김준오"; 

# update (update -> where -> set)
# update테이블과 서브쿼리안의 테이블이 달라야함 -> 서브쿼리에 가상의 테이블을 생성해서 해줌
update 
	student_tb
set 
	email = "skjil1248@gmail.com"
where
	student_id in (select           				# id가 여러개이면 포함되어있는지 확인하는 in 사용
					temp_student_tb.student_id		# 서브쿼리 
				  from 
					(select * from student_tb) as temp_student_tb
				  where 
					temp_student_tb.student_name = "김준오");	
                    
update 
	student_tb
set
	phone = "010-1234-4321",
    email = "skjil1218@naver.com"
where
	student_id = 3;