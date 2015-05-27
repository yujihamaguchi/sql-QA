-- Q: products2から相関サブクエリを用いずに重複行を削除せよ。（ヒント：rowidの補集合をEXCEPTで求めてそれを削除対象とする）
-- A
DELETE FROM products2
WHERE
	rowid IN (
  SELECT rowid FROM products2
  MINUS
  SELECT MIN(rowid) FROM products2 GROUP BY name, price)
;