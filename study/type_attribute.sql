-- 宣言部
DECLARE
  depNo SCOTT.DEPT.DEPTNO%TYPE;
  depName SCOTT.DEPT.DNAME%TYPE;
-- 処理部
BEGIN
  SELECT
    DEPTNO,
    DNAME
  INTO
    depNo,
    depName
  FROM
    SCOTT.DEPT
  WHERE
    DEPTNO = 10;

  DBMS_OUTPUT.PUT_LINE('部署コード：' || depNo);
  DBMS_OUTPUT.PUT_LINE('部署名：' || depName);
END;