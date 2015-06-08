--    1. 現在の給料が30万円以上の社員は、10%の減給とする。
--    2. 現在の給料が25万円以上28万未満の社員は、20%の昇給とする。
UPDATE Salaries SET salary =
  CASE
    WHEN salary >= 300000 THEN salary * 0.9
    WHEN salary BETWEEN 250000 AND 280000 THEN salary * 1.2
    ELSE salary
  END
;

