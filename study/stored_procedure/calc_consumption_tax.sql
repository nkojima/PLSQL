-- 消費税10%時の消費税額を求める。
-- price: 商品の税抜き価格。
-- tax: 消費税額。小数点以下の端数は切り捨てとする。
CREATE OR REPLACE PROCEDURE calc_consumption_tax(price IN NUMBER, tax OUT NUMBER)
-- 宣言部
IS
-- 処理部
BEGIN
  SELECT TRUNC(price  / 10)
  INTO tax
  FROM DUAL;
END;


-- ストアドプロシージャの実行
DECLARE
  in_price NUMBER;
  out_tax NUMBER;
BEGIN
  in_price := 100;
  
  calc_consumption_tax(in_price, out_tax);
  DBMS_OUTPUT.PUT_LINE('税抜き価格=' || in_price);
  DBMS_OUTPUT.PUT_LINE('消費税額(10%)=' || out_tax);
END;