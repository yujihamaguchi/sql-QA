-- Q: Products2から相関サブクエリを用いずに重複行を削除せよ。（ヒント：rowidの補集合をEXCEPTで求めてそれを削除対象とする）
-- A
START TRANSACTION;
DELETE FROM Products2
WHERE
	rowid IN (
  SELECT rowid FROM Products2
  MINUS
  SELECT MIN(rowid) FROM Products2 GROUP BY name, price)
;
