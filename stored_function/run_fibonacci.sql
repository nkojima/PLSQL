-- calc_fibonacci.sqlÇé¿çsÇ∑ÇÈÇΩÇﬂÇÃSQL

-- êÈåæïî
DECLARE
  n NUMBER;
  fib_result NUMBER;
BEGIN
  n := 10;
  DBMS_OUTPUT.PUT_LINE('Calculate Fibonacci number: F(0)~F(' || n || ')');
  DBMS_OUTPUT.PUT_LINE('----------');

  FOR i IN 0..n LOOP
    fib_result := calc_fibonacci(i);
    DBMS_OUTPUT.PUT_LINE('F(' || i || ')' || '=' || fib_result);
  END LOOP;
END;