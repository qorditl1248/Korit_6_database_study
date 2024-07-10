SELECT * FROM dvd_db.master_tb;

# rollback을 하게되면 start transaction 다시 해야함
# 명령의 실행 순서 

start transaction; # {중괄호를 열었다 생각}

set @name = "권혁진";
set @phone = "010-8888-7777";

savepoint sp_insert_name;
insert into join1_tb
values 
	(0, @name);

savepoint sp_insert_phone; 
insert into join2_tb 
values 	
	(0, @phone);
    
rollback to sp_insert_phone; # sp_insert_phone을 취소함 
    
set @new_join1_id = 0;
set @new_join2_id = 0;

# join1    
select	
	join1_id into @new_join1_id #join1_id의 결과를 new_join1_id에 넣겠다  
from
	join1_tb
order by 
	join1_id desc
limit 0, 1;   # 제일 위에 있는 값 들고옴 

# join2
select	
	join2_id into @new_join2_id #join1_id의 결과를 new_join1_id에 넣겠다  
from
	join2_tb
order by 
	join2_id desc
limit 0, 1;

select @new_join1_id;

insert into master_tb 
values (0, @new_join1_id, @new_join2_id);

commit; 