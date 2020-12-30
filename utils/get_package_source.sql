/**
 * パッケージのソースコードを確認するSQL。
 * 
 * 2020/12/23 nkojima
 */
SELECT
  line, -- 行番号
  text  -- コード
FROM
  user_source
WHERE
  type = 'PACKAGE BODY' -- 'PACKAGE'にすると仕様部のコードを確認できる
  AND name = 'pkg_test'  -- パッケージ名は適宜変更すること。
ORDER BY line;