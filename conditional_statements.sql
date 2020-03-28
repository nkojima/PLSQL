-- 宣言部
DECLARE
  name VARCHAR2(10);
  message VARCHAR2(100);
-- 処理部
BEGIN
  name := 'nkojima';

  IF (name = 'mkojima') THEN
    message := '名前はmkojimaです。';
  ELSIF (name = 'okojima') THEN
    message := '名前はokojimaです。';
  ELSE
    message := '名前はmkojimaおよびokojimaではありません。';
  END IF;

  DBMS_OUTPUT.PUT_LINE(message);
END;