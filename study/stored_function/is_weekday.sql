/*
 * 引数の日付が平日（月～金）であるかを判定する。
 * dt: 判定する日付。
 * RETURN: 平日であれば0、土日であれば1を返す。
 */
CREATE OR REPLACE FUNCTION is_weekday(dt IN DATE) RETURN NUMBER
-- 宣言部
IS
  day_of_week NUMBER(1);
  result NUMBER(1);
-- 処理部
BEGIN
  SELECT TO_CHAR(dt,'D')
  INTO day_of_week
  FROM DUAL;

  -- 曜日を表す値に応じて、平日であるかを判定する。
  -- https://www.projectgroup.info/tips/Oracle/function/F000006.html
  IF (day_of_week > 1) AND (day_of_week < 7) THEN
    result := 0;
  ELSE
    result := 1;
  END IF;

  RETURN result;
END;