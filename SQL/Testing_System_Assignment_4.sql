use testing_system_assignment_1;
-- Question 1: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ
SELECT A.email, A.username,A.full_name,D.department_name FROM department AS D
JOIN `account` AS A
ON A.department_id = D.department_id;

-- Question 2: Viết lệnh để lấy ra thông tin các account được tạo sau ngày 20/12/2010
SELECT * FROM `account` WHERE  create_date >'2010/12/20';

--  Question 3: Viết lệnh để lấy ra tất cả các developer
SELECT A.email, A.username,A.full_name,P.position_name
   FROM `account` AS A
   JOIN position AS P
   ON A.position_id = P.Position_id;
   
   -- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >=3 nhân viên
   SELECT count(A.department_id),D.department_name
    FROM department AS D
    JOIN `account` AS A
    ON  D.department_id = A.department_id
    GROUP BY A.department_id
    HAVING count(A.department_id) >=3;
    
-- Question 5: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều nhất
SELECT EQ.question_id,Q.content,Q.create_date FROM exam_question EQ
JOIN question Q
ON EQ.question_id=Q.question_id
GROUP BY EQ.question_id
HAVING max(EQ.question_id) =(SELECT max(tableA) FROM 
		(SELECT count(question_id) AS tableA FROM exam_question GROUP BY question_id) AS tableB);

-- Question 6: Thông kê mỗi category Question được sử dụng trong bao nhiêu Question
 SELECT CQ.category_id,CQ.category_name, COUNT(Q.category_id) FROM category_question CQ
 JOIN question Q ON CQ.category_id=Q.category_id
 GROUP BY Q.category_id;
 
 -- Question 7: Thông kê mỗi Question được sử dụng trong bao nhiêu Exam
SELECT count(Q.question_id),Q.question_id FROM question Q
 JOIN exam_question EQ
 ON Q.question_id=EQ.question_id
 GROUP BY Q.question_id;

 -- Question 8: Lấy ra Question có nhiều câu trả lời nhất
 SELECT count(A.question_id),Q.* FROM answer A
    JOIN question Q ON Q.question_id=A.question_id
    GROUP BY A.question_id
	HAVING count(Q.question_id)=
      (SELECT max(tableA) FROM
         (SELECT count(question_id) AS tableA FROM answer GROUP BY question_id) AS tableB);
    
    
    -- Question 9: Thống kê số lượng account trong mỗi group
    SELECT count(GR.group_id),G.group_name FROM `groups` G
    JOIN group_account GR
    ON G.group_id = GR.group_id
    GROUP BY G.group_id;
    
    -- Question 10: Tìm chức vụ có ít người nhất
SELECT P.position_id,P.position_name,A.* FROM position P
JOIN`account` A 
ON P.position_id = A.position_id
GROUP BY A.position_id
HAVING count(A.position_id) = 
    (SELECT min(countP) FROM 
            (SELECT count(position_id) countP ,position_id AS tableA FROM `account` GROUP BY position_id) AS tableB);
            
            
    -- Question 11: Thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM
    SELECT count(D.department_id),count(P.position_id), A.* FROM `account` A 
    JOIN department D ON D.department_id = A.department_id
    JOIN position P ON P.position_id = A.position_id
    GROUP BY A.position_id
    
    
             
