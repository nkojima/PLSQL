CREATE OR REPLACE PROCEDURE print_date
-- 宣言部
IS
  date_time VARCHAR2(50);
-- 処理部
BEGIN
  SELECT SYSDATE
  INTO date_time
  FROM DUAL;

  DBMS_OUTPUT.PUT_LINE('現在日=' || date_time);
END;


-- ストアドプロシージャの実行
CALL print_date();