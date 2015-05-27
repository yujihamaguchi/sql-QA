-- Q: seatsから連続するn個の空席の組み合わせを全て抽出せよ。（出力は{seat} 〜{seat}とし、nは動的に入力出来るようにすること。）
-- A:
VARIABLE head_cnt NUMBER
EXECUTE :head_cnt := &head_cnt;
/* my A:
SELECT
  r1.seat - :head_cnt + 1
  || ' 〜 '
  || r1.seat AS range
FROM
  seats r1
WHERE
  NOT EXISTS (SELECT * FROM seats r2 WHERE
    r1.seat BETWEEN r2.seat AND r2.seat + :head_cnt - 1
    AND r2.status = '占')
ORDER BY
  range
/
*/
/*
VAR head_cnt NUMBER;
EXEC :head_cnt := &head_cnt;
SELECT
	r1.seat || '〜' || r2.seat
FROM
	seats r1
	,seats r2
WHERE
	r1.seat < r2.seat
	AND NOT EXISTS (SELECT *
		FROM
			seats r3
		WHERE
			r3.status <> '空'
			AND r3.seat BETWEEN r1.seat AND r2.seat)
	AND r2.seat - r1.seat + 1 = :head_cnt
;
*/
SELECT
  r1.seat AS s
  ,'〜'
  ,r2.seat AS e
FROM
  seats r1
CROSS JOIN
  seats r2
WHERE
  r1.seat + :head_cnt - 1 = r2.seat
  AND NOT EXISTS (SELECT * FROM seats r3 WHERE
    r3.seat BETWEEN r1.seat AND r2.seat
    AND r3.status <> '空')
;