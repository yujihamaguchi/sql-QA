-- Q: Products4にて、値段の高い順に順位をつけよ。同じ値段の商品は同じ順位になるようにして、次の順位は飛び石にせず、連番になるようにせよ。
--    OLAP関数を用いた解も作れ。
-- A
SELECT
  name
  ,price
  ,(SELECT
      COUNT(DISTINCT r2.price)
    FROM
      Products4 r2
    WHERE
      r1.name <> r2.name
      AND r1.price < r2.price) + 1 AS rank
FROM
  Products4 r1
ORDER BY
  rank
;
/*
SELECT
	name
	,price
	,DENSE_RANK() OVER(ORDER BY price DESC)
FROM
	Products4
;
*/
