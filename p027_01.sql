-- Q: poptbl2���s��������񎝂��֐����W�J����B{����, �S��, ����, ����, ���Q, ���m, �l��}
-- A:
SELECT
  CASE WHEN sex = '1' THEN '�j' ELSE '��' END AS ����
  ,SUM(population) AS �S��
  ,SUM(CASE WHEN pref_name = '����' THEN population ELSE 0 END) AS ����
  ,SUM(CASE WHEN pref_name = '����' THEN population ELSE 0 END) AS ����
  ,SUM(CASE WHEN pref_name = '���Q' THEN population ELSE 0 END) AS ���Q
  ,SUM(CASE WHEN pref_name = '���m' THEN population ELSE 0 END) AS ���m
  ,SUM(CASE WHEN pref_name = '����' OR pref_name = '����' OR pref_name = '���Q' OR pref_name = '���m' THEN population ELSE 0 END) AS �l��
FROM
  poptbl2
GROUP BY
  sex
;