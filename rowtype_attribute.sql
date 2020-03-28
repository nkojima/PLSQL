-- 宣言部
DECLARE
  dep SCOTT.DEPT%ROWTYPE;
-- 処理部
BEGIN
  SELECT
    DEPTNO,
    DNAME,
    LOC
  INTO
    dep
  FROM
    SCOTT.DEPT
  WHERE
    DEPTNO = 10;

  DBMS_OUTPUT.PUT_LINE('部署コード：' || dep.DEPTNO);
  DBMS_OUTPUT.PUT_LINE('部署名：' || dep.DNAME);
  DBMS_OUTPUT.PUT_LINE('地域：' || dep.LOC);
END;