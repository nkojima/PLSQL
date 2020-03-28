-- 三角形の面積を求める。
-- base: 底辺
-- height: 高さ
CREATE OR REPLACE PROCEDURE calc_area(base IN NUMBER, height IN NUMBER)
-- 宣言部
IS
  area NUMBER;
-- 処理部
BEGIN
  SELECT (base * height / 2)
  INTO area
  FROM DUAL;

  DBMS_OUTPUT.PUT_LINE(area);
END;