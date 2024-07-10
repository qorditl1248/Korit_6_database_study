set @number = 10;

call usp_square(@number);

select @number;

# inout은 다시 들고 나올수 있음 

select 
	add_number(10, 20);
