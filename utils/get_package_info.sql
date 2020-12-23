/**
 * 作成日、最終更新日など、パッケージの情報を確認するSQL。
 * 
 * 2020/12/23 nkojima
 */
SELECT
  * 
FROM
  ALL_OBJECTS 
WHERE
  OBJECT_TYPE IN ('PACKAGE', 'PACKAGE BODY')
  AND OBJECT_NAME = 'record_type';  -- パッケージ名は適宜変更すること。
