-- calc_fibonacci.sql�����s���邽�߂�SQL

-- �錾��
DECLARE
  n NUMBER;            -- �t�B�{�i�b�`���̎��̒��̓Y�����un�v�B
  fib_result NUMBER;   -- �t�B�{�i�b�`���B
BEGIN
  n := 10;
  DBMS_OUTPUT.PUT_LINE('Calculate Fibonacci number: F(0)~F(' || n || ')');
  DBMS_OUTPUT.PUT_LINE('----------');

  -- �Y������0����10�܂ł̎��̃t�B�{�i�b�`����\������B
  FOR i IN 0..n LOOP
    fib_result := calc_fibonacci(i);
    DBMS_OUTPUT.PUT_LINE('F(' || i || ')' || '=' || fib_result);
  END LOOP;
END;