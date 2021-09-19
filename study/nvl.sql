-- 営業部門の全員を抽出しているだけのSQL。
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


-- 営業部門の全員を抽出しているだけのSQL。
-- NVL関数を使って、歩合給がnullの場合に「0」を返している。
SELECT
  T1.EMPNO AS 社員番号,
  T1.ENAME AS 社員名,
  T1.JOB AS 職種,
  NVL(T1.COMM, 0) AS 歩合給
FROM
  SCOTT.EMP T1,
  SCOTT.DEPT T2
WHERE
  T1.DEPTNO=T2.DEPTNO
  AND T2.DNAME='SALES';