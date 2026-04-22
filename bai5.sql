/*
Vấn đề: 
	Bạn cần mỗi dòng = 1 khóa học (giữ title, price)
	Nhưng lại cần giá trung bình của toàn hệ thống
 Nếu dùng GROUP BY
	Dữ liệu bị gom → mất từng khóa học
Cách Scalar Subquery giải quyết
	(SELECT AVG(price) FROM Courses)
    --> Scalar Subquery -> Luôn trả về 1 giá trị duy nhất , Được tính như một “hằng số động”

*/

SELECT 
    title,
    price,
    price - (
        SELECT AVG(price) 
        FROM Courses
    ) AS Price_Difference
FROM Courses;