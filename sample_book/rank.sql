# 출판사를 기준으로 category의 count를 집계한다. 
# partition by는 어디를 기준으로 나눌건지 정하는거 
# publisher_id 안에서 순위를 나누는 거 

# rank - 중복허용, 1 1 1 다음은 4 
# row_number - 중복 x
# dense_rank - 중복허용, 1 2 2 다음은 3

select
	*
from 
    (select 
	#rank() over(partition by publisher_id order by book_count desc) as `rank`,
	#dense_rank() over(partition by publisher_id order by book_count desc) as `dense`,
    row_number() over(partition by publisher_id order by book_count desc) as `num`,
	pc_count_tb.*
from 
	(select 
		publisher_id,
		category_id,
		count(*) as book_count
	  from 
	    book_tb
	  group by
		 publisher_id,
		 category_id) as pc_count_tb) as book_row_number_tb
where 
	num = 1;