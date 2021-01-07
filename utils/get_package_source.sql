/**
 * パッケージのソースコードを確認するSQL。
 * 
 * 2020/12/23 nkojima
 */
SELECT
  line AS 行番号,
  text AS コード
FROM
  user_source
WHERE
  type = 'PACKAGE BODY' -- 'PACKAGE'にすると仕様部のコードを確認できる
  AND name = 'pkg_test'  -- パッケージ名は適宜変更すること。
ORDER BY line;