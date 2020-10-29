-- 宣言部
DECLARE
  date_time VARCHAR2(50);
-- 処理部
BEGIN
  SELECT SYSDATE
  INTO date_time
  FROM DUAL;

  DBMS_OUTPUT.PUT_LINE('現在日=' || date_time);
END;