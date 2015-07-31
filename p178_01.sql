-- Q: Teams2より、隊（team_id）の状態（status）が全て"待機"である隊を検索せよ。（NOT EXISTSを用いて）
-- A:
SELECT *
FROM
  Teams2 r1
WHERE
  NOT EXISTS (SELECT * FROM Teams2 r2 WHERE
    r1.team_id = r2.team_id
    AND r2.status <> '待機')
;
