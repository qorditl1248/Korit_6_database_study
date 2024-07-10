-- Group by 집계, 중복제거 
# distinct - 중복제거 된 결과, 2개이상 안됨

# select 된 것에 대해 중복을 제거 
select 
	distinct 
    category_id,
	publisher_id
from 
	book_tb;
    

# 실행순서 (from -> where -> group by -> select)  
select 
	category_id,
	count(*)
from 
	book_tb
where 
	book_id > 7000
group by 
	category_id;
    
-- 문제) 도서명 중 "돈"이라는 글자가 들어간 데이터들을 찾아 카테고리별로 묶으시오
-- 그리고 카테고리 별로 도서 개수가 출력되어야 한다. (10개 이상)

# 서브쿼리는 최대한 3번 안에 끝내기 select - 3번 이상 안쓰기
select 
	*
from (select 
		category_id,
		count(*) as category_count 
	  from 
		book_tb
	  where
		book_name like "%돈%"
      group by 
		category_id) as category_group_book_tb  -- category_group_book_tb에 select 결과를 넣어줌
where 
	category_count > 10;
    


# having절  
select 
	category_id,
	count(*) as category_count 
from 
	book_tb	
where
	book_name like "%돈%"
group by 
	category_id
having 
	category_count > 10; -- 그룹 이후의 조건, select 다음에 having

