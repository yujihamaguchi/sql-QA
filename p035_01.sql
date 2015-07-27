-- Q: Addressesにて同じ家族だけど住所が不一致なレコードを出力せよ。(自己非等値結合を用いて)
-- A
SELECT
  r1.*
FROM
  Addresses r1
  ,Addresses r2
WHERE
  r1.family_id = r2.family_id
  AND r1.address <> r2.address
;
