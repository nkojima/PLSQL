-- 営業部門の全員を抽出するSQL。
-- NVL関数は使っていない。
SELECT
  T1.EMPNO AS 社員番号,
  T1.ENAME AS 社員名,
  T1.JOB AS 職種,
  T1.COMM AS 歩合給
FROM
  SCOTT.EMP T1,
  SCOTT.DEPT T2
WHERE
  T1.DEPTNO=T2.DEPTNO
  AND T2.DNAME='SALES';


-- 営業部門の全員を抽出するSQL。
-- NVL関数を使って、歩合給がnullの場合に「-1」を返している。
SELECT
  T1.EMPNO AS 社員番号,
  T1.ENAME AS 社員名,
  T1.JOB AS 職種,
  NVL(T1.COMM, -1) AS 歩合給
FROM
  SCOTT.EMP T1,
  SCOTT.DEPT T2
WHERE
  T1.DEPTNO=T2.DEPTNO
  AND T2.DNAME='SALES';

-- 営業部門の全員を抽出するSQL。
-- NVL2関数を使って、歩合給がnullの場合に「なし」、歩合給がある場合に「あり」を返している。
SELECT
  T1.EMPNO AS 社員番号,
  T1.ENAME AS 社員名,
  T1.JOB AS 職種,
  NVL2(T1.COMM, 'あり', 'なし') AS 歩合給
FROM
  SCOTT.EMP T1,
  SCOTT.DEPT T2
WHERE
  T1.DEPTNO=T2.DEPTNO
  AND T2.DNAME='SALES';


-- NVL2関数がPL/SQLで使えるかどうかを確認するためのサンプルコード。
-- 宣言部
DECLARE
  commission VARCHAR2(10);
-- 処理部
BEGIN
  SELECT
    NVL2(T1.COMM, 'あり', 'なし') AS 歩合給
    --NVL(T1.COMM, -1)
  INTO
    commission
  FROM
    SCOTT.EMP T1
  WHERE
    T1.ENAME='BLAKE';

  DBMS_OUTPUT.PUT_LINE(commission);
END;


-- NVL2関数がストアドプロシージャで使えるかどうかを確認するためのサンプルコード。
CREATE OR REPLACE PROCEDURE print_comm
-- 宣言部
IS
  commission VARCHAR2(10);
-- 処理部
BEGIN
  SELECT
    NVL2(T1.COMM, 'あり', 'なし')
  INTO
    commission
  FROM
    SCOTT.EMP T1
  WHERE
    T1.ENAME='BLAKE';

  DBMS_OUTPUT.PUT_LINE(commission);
END;
