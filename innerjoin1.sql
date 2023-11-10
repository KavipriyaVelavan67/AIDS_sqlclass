create database join1;
use join1;
create table student_data(
stud_id int primary key,
stud_name varchar(255) not null,
stud_mailid varchar(255) unique,
stud_contact bigint not null,
stud_dep varchar(255) not null,
stud_place varchar(255) not null
);
 create table Tech_details(
 tech_id int unique,
 tech_name varchar(255) not null,
 tech_inst varchar(255) not null,
 tech_city  varchar(255) not null,
 stud_id int 
 );
 
 select*from student_data ;
 select*from tech_details;
 
 insert into student_data Values(1,"amutha","amutha23@gmail.com",9876543201,"cse","coimbatore");
 insert into student_data Values (2,"Manjumitha","madhu3@gmail.com",883894542,"it","chennai");
 insert into student_data Values (3,"Kannan","kannu45@gmail.com",7789673422,"mech","salem");
 insert into student_data Values (4,"Stella","stella@gmail.com",9092033672,"cse","salem");
 insert into student_data Values (5,"Maaran","maara91@gmail.com",987654456,"it","madurai");
 
insert into tech_details Values(101,"Java","IDM techpark","erode",1);
insert into tech_details Values(102,"Bootstap","zuci","chennai",2);
insert into tech_details Values(103,"python","zealous","salem",3);
insert into tech_details Values(104,"Javascript","IDM techpark","erode",4);
 insert into tech_details Values(105,"php","Abc tech","madurai",5);
 
 select student_data.stud_id,student_data.stud_name,student_data.stud_place,tech_details.tech_name,tech_details.tech_city
 from student_data
 INNER JOIN tech_details
 ON student_data.stud_id=tech_details.stud_id;

 select student_data.stud_id,student_data.stud_name,student_data.stud_place,tech_details.tech_name,tech_details.tech_city
 from student_data
 FULL JOIN tech_details
 ON student_data.stud_id=tech_details.stud_id;
 
 