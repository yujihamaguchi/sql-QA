-- Q: products2にて重複行をdeleteせよ。(ヒント：rowidとEXISTS述語と自己非等値結合を利用すること)
-- A
DELETE FROM products2 r1
WHERE
	EXISTS (SELECT *
		FROM
			products2 r2
		WHERE
			r1.name = r2.name
			AND r1.price = r2.price
			AND r1.rowid < r2.rowid)
;