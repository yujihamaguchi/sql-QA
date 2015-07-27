-- Q: districtproducts2のranking属性に値を入れよ。
--    (Not work in MySQL)
-- A
UPDATE DistrictProducts2 r1
SET
	ranking = (SELECT
							COUNT(DISTINCT r2.price) + 1
						FROM
							DistrictProducts2 r2
						WHERE
							r1.district = r2.district
							AND r1.price < r2.price)
;
