# where - 조건 
# 길어지면 밑으로 길어지게 사용 
# select문 실행 순서 - (from -> where -> select) 어떤테이블에서 어디에 어떤걸 보여줄지 
 
# 단순 비교 연산 
select 
	*
from 
	student_tb
where
	student_name = "김준일"; #student_name의 김준일 있는지 찾아달라(비교연산)

# OR 연산  
select 
	student_id,
    student_name
from 
	student_tb
where 
	student_name = "김준일"
    or student_name = "김준이";
    
# IN 연산 - OR연산 대체, (위처럼 쓸수도 아래처럼 쓸수도 있어야 함)
select 
	*
from 
	student_tb 
where
	student_name in ("김준일", "김준이", "김준삼"); # student_name 안에 있는 김준일, 김준이, 김준삼을 찾아라
    

# AND 연산 
select 
	*
from 
	student_tb
where
	student_id > 2
    and student_id < 4;
    
# BETWEEN A AND B -> ~부터 ~까지 (이상, 이하)
select 
	*
from 
	student_tb
where
	student_id between 2 and 4; 
    
    
# NOT (not)
select 
	*
from 
	student_tb
where 
	not student_name = "김준일";

# null 체크
# is null(긍정), is not null(부정) - 둘 중에 하나로 체크해야함  
select 
	*
from 
	student_tb
where 
	introduce is null;
#   introduce is not null;



insert into student_tb
values 
	(0, "손경태", "010-1111-2222", "aaa@gmail.com", null, now()),
	(0, "김지현", "010-1111-3333", "bbb@naver.com", null, now()),
	(0, "김동인", "010-2222-2222", "ccc@gmail.com", null, now()),
	(0, "김정현", "010-4444-3333", "aaabbb@naver.com", null, now()),
	(0, "권오광", "010-5555-2222", "bbbccc@kakao.com", null, now()),
	(0, "권혁진", "010-1111-5555", "aaabbbccc@kakao.com", null, now());



# 와일드 카드(like)
select 
	*
from 
	student_tb
where
	student_name like "김%"; #김으로 시작하는 이름을 가져와


select 
	*
from 
	student_tb
where 
	email like "%gmail.com"; #gmail.com으로 끝나는 것을 찾아라 
    
select 
	* 
from 
	student_tb
where 
	phone like "%2222%"; # 자리 상관없이 2222을 포함하고 있으면 됨 
    
select
	*
from 
	student_tb
where
	phone like "%2222%"
    and not phone like "%2222";  # 2222을 포함하고 있으면서 2222로 끝나는 것은 아님 
    

# 2번째 와일드카드 (_ 언더바, 글자의 개수를 정해서 씀 ___ 3개면 3글자)

select 
	*
from 
	student_tb
where
	email like "___bbb%"; # _(언더바) bbb를 포함하면서, 앞에는 3글자, 뒤에는 아무거나 오면 됨 



