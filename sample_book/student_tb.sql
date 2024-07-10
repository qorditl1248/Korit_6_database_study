SELECT * FROM study.student_tb;

# 문제) 각 반에서 1등과 꼴등을 찾아라 

select 
	student_name,
    class,
    score
from 
	student_tb
    
order by 
	score desc;
		
	

	

