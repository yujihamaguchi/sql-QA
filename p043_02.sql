-- Q: districtproductsにて、地方（district）ごとの値段（price）のランキングを求めよ。
--    OLAP関数を使ったものも作成せよ。
-- A:
/*
SELECT
	district
	,name
	,price
	,(SELECT
		COUNT(DISTINCT r2.price) + 1
	FROM
		districtproducts r2
	WHERE
		r1.district = r2.district
		AND r1.price < r2.price) AS ranking
FROM
	districtproducts r1
ORDER BY
	district
	,ranking
;
*/
SELECT
	district
	,name
	,price
	,DENSE_RANK () OVER (PARTITION BY district ORDER BY price DESC) AS ranking
FROM
	districtproducts
ORDER BY
	district
	,ranking
;