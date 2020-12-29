/*
 * calc_fibonacci.sqlを実行するためのSQL。
 */
-- 宣言部
DECLARE
  n NUMBER;            -- フィボナッチ数の式の中の添え字「n」。
  fib_result NUMBER;   -- フィボナッチ数。
BEGIN
  n := 10;
  DBMS_OUTPUT.PUT_LINE('Calculate Fibonacci number: F(0)~F(' || n || ')');
  DBMS_OUTPUT.PUT_LINE('----------');

  -- 添え字が0から10までの時のフィボナッチ数を表示する。
  FOR i IN 0..n LOOP
    fib_result := calc_fibonacci(i);
    DBMS_OUTPUT.PUT_LINE('F(' || i || ')' || '=' || fib_result);
  END LOOP;
END;