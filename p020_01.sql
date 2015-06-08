-- Q: coursemaster, OpenCoursesから開講状況がo,xで一覧せよ。{コース名, 六月, 七月, 八月}
-- A
SELECT
  course_name AS コース名
  ,CASE WHEN EXISTS (SELECT * FROM OpenCourses r2 WHERE r2.month = '200706' AND r1.course_id = r2.course_id) THEN 'o'  ELSE 'x' END AS 六月
  ,CASE WHEN EXISTS (SELECT * FROM OpenCourses r2 WHERE r2.month = '200707' AND r1.course_id = r2.course_id) THEN 'o'  ELSE 'x' END AS 七月
  ,CASE WHEN EXISTS (SELECT * FROM OpenCourses r2 WHERE r2.month = '200708' AND r1.course_id = r2.course_id) THEN 'o'  ELSE 'x' END AS 八月
FROM
  CourseMaster r1
ORDER BY 1
;
