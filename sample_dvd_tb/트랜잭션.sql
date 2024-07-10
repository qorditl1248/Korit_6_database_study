# 트랜잭션(Transcation)
# @@ - 전역
# commit - 끄고 열어도 값이 저장되어있음 

set @name = "김준일";
select @name;

select @@autocommit;
set @autocommit = 0;

insert into master_tb
values
	(0, 6, 2);
    
commit;