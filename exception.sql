-- 宣言部
DECLARE
  name VARCHAR2(10);
  noNameException EXCEPTION;
-- 処理部
BEGIN
  name := '';

  IF (name <> 'mkojima') THEN
    DBMS_OUTPUT.PUT_LINE('名前は' || name || 'です。');
  ELSE
    RAISE noNameException;
  END IF;
-- 例外処理部
EXCEPTION
  WHEN noNameException THEN
    DBMS_OUTPUT.PUT_LINE('名前がありません。');
END;