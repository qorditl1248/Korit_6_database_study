
#데이터 삽입(DML - INSERT)

select * from student_tb;

# insert into `study`.`student_tb` // Database가 use되지않은 경우
# insert into `student_tb`         // Database가 use상태인 경

insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values 
	(0, "김준일", "010-9988-1916", "skjil1218@kakao.com", now());
    
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
values 
	(0, "김준이", "010-9988-1916", "skjil1218@kakao.com", now()),
	(0, "김준삼", "010-9988-1916", "skjil1218@kakao.com", now()),
	(0, "김준사", "010-9988-1916", "skjil1218@kakao.com", now());
    
    
insert into student_tb
	(student_id, student_name, phone, email, introduce, admission_date)
values 
	(0, "김준오", "010-9988-1916", "skjil1218@kakao.com", null, now());
    
insert into student_tb
	(student_id, phone, email, introduce, studnet_name, admission_date)
values 
	(0, "010-9988-1916", "skjil1218@kakao.com", null, "김준육", now());
    
insert into student_tb #컬럼을 생략할 수 있는 방법은 값을 차례대로 넣을 수 있을 경우 
values 
	(0, "김준칠", "010-9988-1916", "skjil1218@kakao.com", null, now());