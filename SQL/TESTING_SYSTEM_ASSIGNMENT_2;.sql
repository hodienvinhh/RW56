drop database if exists testing_system_assignment_1;
use testing_system_assignment_1;
insert into department(department_id,department_name)
values(1,'ke toan'),
(2,'cong quy'),
(3,'demo'),
(4,'demo1'),
(5,'demo2'),
(6,'demo3'),
(7,'demo4'),
(8,'demo5'),
(9,'demo6'),
(10,'demo7');
select*from department;
insert into position (position_id,position_name)
values(1,'dev'),
(2,'dev1'),
(3,'dev2'),
(4,'dev3'),
(5,'dev4'),
(6,'dev5'),
(7,'dev6'),
(8,'dev7'),
(9,'dev8'),
(10,'dev9');
select*from position;
insert into account(account_id,email,username,full_name,department_id,position_id,create_date)
values(1, 'trieu.hoangvan@vtiacademy.edu.vn','trieu.hoangvan','hoang trieu',1,10,'2022-01-09'),
(2,'vinh.hodien@vtiacademy.edu.vn','vinh.hodien','vinh ho',2,9,'2022-01-09'),
(3,'ho.buivan@vtiacademy.edu.vn','ho.buivan','bui ho',3,8,'2022-01-09'),
(4,'tung.cavan @vtiacademy.edu.vn','tung.cavan ','tung ca',4,7,'2022-01-09'),
(5,'quyen.vithi@vtiacademy.edu.vn','quyen.vithi','quyen vi',5,6,'2022-01-09'),
(6,'van.nguyenthi@vtiacademy.edu.vn','van.nguyenthi','van nguyen',6,5,'2022-01-09'),
(7,'tam.nguyenthi@vtiacademy.edu.vn','tam.nguyenthi','tam nguyen',7,4,'2022-01-09'),
(8,'dung.vinhthituong@vtiacademy.edu.vn','dung.vinhthituong@vtiacademy.edu.vn','tuong dung',8,3,'2022-01-09'),
(9,'nguyet.nguyenthi@vtiacademy.edu.vn','nguyet.nguyenthi','nguyet nguyen',9,2,'2022-01-09'),
(10,'linh.dangthikieu@vtiacademy.edu.vn','linh.dangthikieu','linh kieu',10,1,'2022-01-09');

insert into `Groups` (group_id,group_name,creator_id,create_date)
values(1,'name',1,'2022-01-08'),
(2,'name1',3,'2022-01-08'),
(3,'name2',5,'2022-01-08'),
(4,'name3',7,'2022-01-08'),
(5,'name4',9,'2022-01-08'),
(6,'name5',2,'2022-01-08'),
(7,'name6',4,'2022-01-08'),
(8,'name7',6,'2022-01-08'),
(9,'name8',8,'2022-01-08'),
(10,'name9',10,'2022-01-08');
select*from `Groups`;
insert into group_account(group_id,account_id,creator_id,join_date)
values(1,1,10,'2022-01-08');
insert into group_account(group_id,account_id,creator_id,join_date)
values(2,2, 9,'2022-01-08'),
(3,3,8,'2022-01-08'),
(4,4,7,'2022-01-08'),
(5,5,6,'2022-01-08'),
(6,6,5,'2022-01-08'),
(7,7,4,'2022-01-08'),
(8,8,3,'2022-01-08'),
(9,9,2,'2022-01-08'),
(10,10,1,'2022-01-08');
select*from  group_account;
