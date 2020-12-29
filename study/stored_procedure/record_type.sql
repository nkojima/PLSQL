CREATE OR REPLACE PACKAGE record_type IS
  -- 社長の情報を格納するレコード型（≒構造体）
  TYPE PRESIDENT_ROW IS RECORD (
    emp_no NUMBER,
    emp_name VARCHAR2(32767),
    job VARCHAR2(32767)
  );
  
  -- レコード型を使ったストアドプロシージャ
  PROCEDURE print_president_info;
END;
/


CREATE OR REPLACE PACKAGE BODY record_type IS

  -- 社長の情報を表示するストアドプロシージャ。
  PROCEDURE print_president_info
    IS
      -- レコード型（PRESIDENT_ROW型）の変数
      president PRESIDENT_ROW;
    BEGIN
      SELECT
        T1.EMPNO,
        T1.ENAME,
        T1.JOB
      INTO
        president.emp_no,
        president.emp_name,
        president.job
      FROM
        SCOTT.EMP T1
      WHERE
        JOB = 'PRESIDENT';
    
    DBMS_OUTPUT.PUT_LINE('-----社長の情報-----');
    DBMS_OUTPUT.PUT_LINE('社員番号' || president.emp_no);
    DBMS_OUTPUT.PUT_LINE('氏名' || president.emp_name);
    DBMS_OUTPUT.PUT_LINE('職種' || president.job);
  END print_president_info;

END record_type;
/


-- ストアドプロシージャの実行。
EXEC record_type.print_president_info();