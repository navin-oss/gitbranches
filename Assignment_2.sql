create database sunbeam;
use sunbeam;
create table user(email varchar(40) primary key,password varchar(40) unique,role enum("Admin","Student"));
insert into user values("pranotisankpal78@gmail.com","23ucs114","Student"),
("pranavmane78@gmail.com","23ucs115","Student"),
("shreyasidnale78@gmail.com","23ucs116","Student"),
("poojasankpal78@gmail.com","123456","Admin"),
("VVK78@gmail.com","654321","admin");
select * from user;
 create table course(course_id int primary key auto_increment,course_name varchar(40),description varchar(40),fees int,start_date date,end_date date,video_expire_days int);
insert into course (course_name,description,fees ,start_date ,end_date ,video_expire_days )values("AI","Artificial intelligence",4000,'2025-12-05','2026-10-05',25);
insert into course (course_name,description,fees ,start_date ,end_date ,video_expire_days )values("ML","Machine Learning",4000,'2025-12-05','2026-01-05',25);
 insert into course (course_name,description,fees ,start_date ,end_date ,video_expire_days )values("DS","Data Science",4000,'2025-12-05','2026-01-05',25);
 insert into course (course_name,description,fees ,start_date ,end_date ,video_expire_days )values("MERN","full stack",4000,'2025-12-05','2026-01-05',25);
 insert into course (course_id,course_name,description,fees ,start_date ,end_date ,video_expire_days )values(5,"java","Android development",4000,'2025-12-05','2026-01-05',25);
 select * from course;
 create table students(reg_no int primary key auto_increment,name varchar(40),email varchar(40),course_id int,mobile_no int,profile_pic blob,constraint fk_course_id foreign key(course_id) references course(course_id),constraint fk_email foreign key(email) references user(email));
 insert into students(name,email,course_id,mobile_no,profile_pic )values("Pranoti sankapl","pranotisankpal78@gmail.com",1,93226,NUll);
 insert into students(name,email,course_id,mobile_no,profile_pic )values("Pranoti sankapl","pranotisankpal78@gmail.com",2,93226,NUll);
 insert into students(name,email,course_id,mobile_no,profile_pic )values("Pranav mane","pranavmane78@gmail.com",3,93226,NUll);
 insert into students(name,email,course_id,mobile_no,profile_pic )values("Shreya Sidnale","shreyasidnale78@gmail.com",3,987367,NUll);
 insert into students(name,email,course_id,mobile_no,profile_pic )values("Shreya Sidnale","shreyasidnale78@gmail.com",4,987367,NUll);
 select * from course;
 create table videos (video_id int primary key auto_increment,course_id int,title varchar(40),description varchar(40),youtube_url varchar(60),added_at date default(current_date()),constraint fkk_course_id foreign key(course_id) references course(course_id));
 insert into videos(course_id,title,description,youtube_url)values(1,"Artifial intelligence basic"," AI basic","https://youtu.be/D1eL1EnxXXQ?si=3LB7pYFp0sVfFU_L");
  insert into videos(course_id,title,description,youtube_url)values(1,"Artifial intelligence basic"," AI basic","https://youtu.be/4dBWH8FmP4E?si=Rcv7nSZuhVPuYVhA");
 insert into videos(course_id,title,description,youtube_url)values(2,"Machine learning basic"," ML basic","https://youtu.be/4dBWH8FmP4E?si=Rcv7nSZuhVPuYVhA");
 insert into videos(course_id,title,description,youtube_url)values(4,"MERN basic"," MERN basic","https://youtu.be/4dBWH8FmP4E?si=Rcv7nSZuhVPuYVhA");
 select * from videos;
 /*1*/
 select * from course;
  /*2*/
 select s.reg_no,s.name,s.email,s.course_id,s.mobile_no,c.course_name from students s join course c on s.course_id=c.course_id;
  /*3*/
 select s.reg_no,s.name,s.email,s.mobile_no,c.course_id,c.course_name,c.description,c.start_date,c.end_date,c.video_expire_days from students s inner join course c on s.course_id=c.course_id;
  /*4*/
 select c.course_id ,c.course_name,c.start_date,c.end_date,c.video_expire_days,v.video_id ,v.title,v.added_at from course c join videos v on c.course_id=v.course_id;
