-- Q: projectsからstep_nbrが1まで完了しているproject_idを出力せよ。
--    （「プロジェクト内の全ての行について、工程番号が1以下ならば完了であり、1より大きければ待機である」という全称命題を用いて書け）
--    -> これをALL述語を用いて書き換えよ。
-- A
/*
SELECT
	DISTINCT
	project_id
FROM
	projects r1
WHERE
	NOT EXISTS (SELECT *
		FROM
			projects r2
		WHERE
			r1.project_id = r2.project_id
			AND (step_nbr > 1 AND status = '完了'
					OR step_nbr <= 1 AND status = '待機'))
;
*/
/*
SELECT
	DISTINCT
	r1.project_id
FROM
	projects r1
WHERE
	'完了' = ALL (SELECT status FROM projects r2 WHERE r1.project_id = r2.project_id AND r2.step_nbr <= 1)
	AND '待機' = ALL (SELECT status FROM projects r2 WHERE r1.project_id = r2.project_id AND r2.step_nbr > 1)
;
*/
/*
SELECT *
FROM
  projects r1
WHERE
NOT EXISTS (SELECT * FROM projects r2 WHERE
  r1.project_id = r2.project_id
  AND 1 = 
  CASE
    WHEN step_nbr <= 1 AND status <> '完了' THEN 1
    WHEN step_nbr > 1 AND status <> '待機' THEN 1
    ELSE 0
  END)
;
*/
SELECT *
FROM
  projects r1
WHERE
  1 = ALL (
    SELECT
      CASE
        WHEN step_nbr <= 1 AND status = '完了' THEN 1
        WHEN step_nbr > 1 AND status = '待機' THEN 1
        ELSE 0
      END
    FROM
      projects r2
    WHERE
      r1.project_id = r2.project_id)
;