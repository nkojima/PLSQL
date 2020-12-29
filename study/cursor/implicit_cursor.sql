-- 宣言部
DECLARE
-- 処理部
BEGIN
  FOR cur IN (
    SELECT
      DEPTNO,
      DNAME,
      LOC
    FROM
      SCOTT.DEPT
  ) LOOP
    DBMS_OUTPUT.PUT_LINE(cur.DEPTNO || ',' || cur.DNAME || ',' || cur.LOC);
  END LOOP;
END;