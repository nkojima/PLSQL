-- 釣銭として必要な硬貨の枚数の最小値を求めるストアドプロシージャ。
-- change: 釣銭額
CREATE OR REPLACE PROCEDURE give_change(change IN NUMBER)
-- 宣言部
IS
  TYPE AR1 IS VARRAY(6) OF NUMBER;
  jp_coins AR1 := AR1(500, 100, 50, 10, 5, 1);
  
  change_buff NUMBER;
  number_of_coins NUMBER;
  total_number_of_coins NUMBER;
-- 処理部
BEGIN
  change_buff := change;  -- INパラメータは変更できないため、ここでバッファに入れておく。
  total_number_of_coins := 0;  -- 初期値を設定しておかないと正しい結果を得られない。
  
  DBMS_OUTPUT.PUT_LINE('釣り銭：' || change_buff || '円');
  
  FOR i IN jp_coins.first..jp_coins.last LOOP
    number_of_coins := TRUNC(change_buff / jp_coins(i));  -- i番目の硬貨の必要枚数を求める。
    total_number_of_coins := total_number_of_coins + number_of_coins;
    DBMS_OUTPUT.PUT_LINE(jp_coins(i) || '円：' || number_of_coins || '枚');
    change_buff := TRUNC(MOD(change_buff, jp_coins(i)));
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('必要な硬貨の枚数：' || total_number_of_coins);
END;



-- ストアドプロシージャの実行
-- 宣言部
DECLARE
-- 処理部
BEGIN
  give_change(786);
END;