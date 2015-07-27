-- Q: productsにてnameの非順序対（組み合わせ）を出力せよ。（ヒント：自己非等値結合を用いる）
-- A
SELECT
  r1.name AS name1
  ,r2.name AS name2
FROM
  Products r1
  ,Products r2
WHERE
  r1.name < r2.name
ORDER BY
  1,2
;
