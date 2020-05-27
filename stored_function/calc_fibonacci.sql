-- フィボナッチ数を返すストアドファンクション
CREATE OR REPLACE FUNCTION calc_fibonacci(n IN NUMBER) RETURN NUMBER
-- 宣言部
IS
-- 処理部
BEGIN
  IF (n=0) THEN
    RETURN 0;
  ELSIF (n=1) THEN
    RETURN 1;
  ELSE
    RETURN calc_fibonacci(n-2) + calc_fibonacci(n-1);
  END IF;
END;