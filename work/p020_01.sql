SELECT
  r1.course_name
  ,CASE WHEN EXISTS (SELECT * FROM OpenCourses r2 WHERE r2.month = 200706 AND r1.course_id = r2.course_id) THEN 'o' ELSE 'x' END AS 'June'
  ,CASE WHEN EXISTS (SELECT * FROM OpenCourses r2 WHERE r2.month = 200707 AND r1.course_id = r2.course_id) THEN 'o' ELSE 'x' END AS 'July'
  ,CASE WHEN EXISTS (SELECT * FROM OpenCourses r2 WHERE r2.month = 200708 AND r1.course_id = r2.course_id) THEN 'o' ELSE 'x' END AS 'August'
FROM
  CourseMaster r1
ORDER BY 1
;

