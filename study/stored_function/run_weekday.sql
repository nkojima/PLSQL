-- 宣言部
DECLARE
  dt DATE;
  result NUMBER;
BEGIN
  dt := TO_DATE('2021-04-19', 'YYYY-MM-DD');

  SELECT
    is_weekday(dt)
  INTO
    result
  FROM
    dual;

  IF (result=0) THEN
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(dt, 'YYYY-MM-DD') || 'は平日です。');
  ELSE
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(dt, 'YYYY-MM-DD') || 'は土日です。');
  END IF;
END;