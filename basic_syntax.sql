-- PL/SQLの基本構文

-- 宣言部
DECLARE
  message VARCHAR2(50);
-- 処理部
BEGIN
  message := 'Hello, world!';
  DBMS_OUTPUT.PUT_LINE('message=' || message);
END;