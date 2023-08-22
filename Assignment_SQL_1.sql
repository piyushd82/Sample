
use piyush;
##Asignment 1 : Finding ID which is mapped with all technology
create table CV_table (
ID int,
Technology varchar(40));

insert into CV_table values ( 1, 'DS');
insert into CV_table values ( 1, 'Tableau');
insert into CV_table values ( 1, 'Python');
insert into CV_table values ( 1, 'SQL');
insert into CV_table values ( 2, 'R');
insert into CV_table values ( 2, 'Power BI');
insert into CV_table values ( 2, 'Python');
select * from CV_Table;

select ID from cv_table where Technology in ('DS', 'Python','SQL');
select ID from cv_table where Technology in ('DS', 'Python','SQL', '') group by id;

##Query for the problem statement
select ID from cv_table where Technology = 'Python' 
and ID in (select ID from cv_table where Technology = 'SQL' 
and ID in (select ID from cv_table where Technology = 'DS') 
and ID in (select ID from cv_table where Technology = 'Tableau'));


## Assignment 2 : Finding ID which doesn't have any likes in Social media
use piyush;
create table eCOM (prod_id int, prod_name varchar(30));
create table fb (like_id int, prod_id int, like_date date);

insert into eCOM values ( 001, 'Blog'),
(002, 'Wall Post'),
(003, 'Home - Adv'),
(004, 'V Blog'),
(005, 'Cooking'),
(006, 'Spritual'),
(007, 'Sports'),
(008, 'Education'),
(009, 'Broadcaster'),
(010, 'Politics');

select * from eCom;

insert into fb values (2,1, '2023-04-19'),
(3,1, '2023-04-01'),
(4,1, '2023-04-02'),
(5,1, '2023-04-03'),
(6,1, '2023-04-04'),
(7,2, '2023-04-05'),
(8,2, '2023-04-19'),
(9,2, '2023-04-08'),
(10,2, '2023-04-09'),
(11,3, '2023-04-09'),
(12,3, '2023-04-10'),
(13,3, '2023-04-11'),
(14,5, '2023-04-11'),
(15,5, '2023-04-12'),
(16,5, '2023-04-13'),
(17,5, '2023-04-14'),
(18,6, '2023-04-11'),
(19,6, '2023-04-12'),
(20,6, '2023-04-13'),
(21,6, '2023-04-14'),
(22,7, '2023-04-11'),
(23,7, '2023-04-12'),
(24,7, '2023-04-13'),
(25,7, '2023-04-14'),
(26,8, '2023-04-11'),
(27,8, '2023-04-12'),
(28,8, '2023-04-13'),
(29,8, '2023-04-14'),
(30,9, '2023-04-11'),
(31,9, '2023-04-12'),
(32,9, '2023-04-13'),
(33,9, '2023-04-14'),
(34,10, '2023-04-11'),
(35,10, '2023-04-12'),
(36,11, '2023-04-13'),
(37,12, '2023-04-14')
;

SELECT distinct prod_id FROM fb;
describe fb;
select prod_id, prod_name from ecom where prod_id not in (select distinct prod_id from fb);
