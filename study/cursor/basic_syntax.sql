-- 宣言部
DECLARE
  -- カーソルの宣言
  CURSOR cur IS SELECT * FROM SCOTT.DEPT;
  -- カーソルの結果セットを代入する変数
  dept_row cur%ROWTYPE;
-- 処理部
BEGIN
  -- カーソルを開く
  OPEN cur;
    LOOP
      -- 結果セットから変数へ代入する
      FETCH cur INTO dept_row;
      EXIT WHEN cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(dept_row.DEPTNO || ',' || dept_row.DNAME || ',' || dept_row.LOC);
    END LOOP;
  -- カーソルを閉じる
  CLOSE cur;
END;