use testing_system_assignment_1;
-- Question 2: lấy ra tất cả các phòng ban
SELECT* FROM department;

-- Question 3: lấy ra id của phòng ban "Sale"
SELECT department_id  FROM department WHERE department_name='sale';

-- Question 4: lấy ra thông tin account có full name dài nhất
select * from `account` where length(full_name) = ( select max(length(full_name)) from `account`);

 -- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id = 3;
 
 select * from `account` where length(full_name) = ( select max(length(full_name)) from `account`) and department_id =3;

-- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019;
 select*  from `group_account` where join_date < '2019/12/20';
 
-- Question 7: Lấy ra ID của question có >= 4 câu trả lời 
 select count(*) from answer group by question_id having count(answer_id) >=4;
 
 -- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019 
 select exam_id from exam where duration >=60 and create_date < '2019/12/20';
 
 -- Question 9: Lấy ra 5 group được tạo gần đây nhất;
select create_date from  `groups` order by create_date desc limit 5;
 
 -- Question 10: Đếm số nhân viên thuộc department có id = 2
select count(*) from `account`   where department_id=2;

-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"
select * from `account` where full_name like 'D%'and '%o';

--  Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019
delete from `exam` where create_date <'2019/12/20';

-- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
delete from `question` where content like 'câu hỏi%';

-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
update `account` set email ='loc.nguyenba@vti.com.vn', full_name='Nguyễn Bá Lộc'
where account_id = 1;

-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
update `group_account`
set group_id= 4
where account_id= 5