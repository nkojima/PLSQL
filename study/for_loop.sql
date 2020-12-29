-- PL/SQLのFOR文の例

-- 宣言部
DECLARE
-- 処理部
BEGIN
  FOR i IN 1..12 LOOP
    IF (i IN (2, 4, 6, 9, 11)) THEN
      DBMS_OUTPUT.PUT_LINE(i || '月は「小の月」です');
    ELSE
      DBMS_OUTPUT.PUT_LINE(i || '月は「大の月」です');
    END IF;
  END LOOP;
END;