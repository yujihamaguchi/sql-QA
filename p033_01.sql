-- Q: products2にて重複行をdeleteせよ。(ヒント：rowidを使用する)
-- A
DELETE
FROM
  products2 r1
WHERE
  r1.rowid < (SELECT
                MAX(r2.rowid)
              FROM
                products2 r2
              WHERE
                r1.name = r2.name
                AND r1.price = r2.price)
;