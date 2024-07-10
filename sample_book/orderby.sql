-- order by - 정렬
# 정렬하고 싶은 컬럼명 적어줌 
# desc - 내림차순 (오름차순 - ASC)이 기본값)
# order by는 순서가 중요함 

select 
	*
from
	category_tb
order by 
	category_id desc;
    
select
	*
from
	book_tb
order by   
	publisher_id desc,
    category_id,
    book_id desc; 