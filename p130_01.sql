-- Q: EmpSkillsからSkillsに存在するスキルを網羅したempを抽出せよ。HAVINGを用いず差集合を用いた関係除算で求めよ。
-- A
/* Using HAVING clause.
SELECT
  emp
FROM
  EmpSkills r1
GROUP BY
  emp
HAVING
  SUM(CASE WHEN EXISTS(SELECT * FROM Skills r2 WHERE r1.skill = r2.skill) THEN 1 ELSE 0 END) = (SELECT COUNT(*) FROM Skills)
;
*/

/* Using RELATIONAL ALGEBRA(MINUS).
SELECT
  DISTINCT
  emp
FROM
  EmpSkills r1
WHERE
  NOT EXISTS
  (SELECT skill FROM Skills
  MINUS
  SELECT skill FROM EmpSkills r2 WHERE r1.emp = r2.emp)
;
*/

-- Not using above. workin on MySQL(Not supported MINUS or EXCEPT)
SELECT
  DISTINCT
  r1.emp
FROM
  EmpSkills r1
WHERE
  NOT EXISTS (SELECT *
    FROM
      Skills r2
    WHERE
      NOT EXISTS (SELECT *
        FROM
          EmpSkills r3
        WHERE
          r2.skill = r3.skill
          AND r1.emp = r3.emp))
;

