-- Q: empskillsからskillsに存在するスキルを網羅したempを抽出せよ。HAVINGを用いず差集合を用いた関係除算で求めよ。
-- A
/*
SELECT
  emp
FROM
  empskills r1
GROUP BY
  emp
HAVING
  SUM(CASE WHEN EXISTS(SELECT * FROM skills r2 WHERE r1.skill = r2.skill) THEN 1 ELSE 0 END) = (SELECT COUNT(*) FROM skills)
;
*/
SELECT
  DISTINCT
  emp
FROM
  empskills r1
WHERE
  NOT EXISTS
  (SELECT skill FROM skills
  MINUS
  SELECT skill FROM empskills r2 WHERE r1.emp = r2.emp)
;