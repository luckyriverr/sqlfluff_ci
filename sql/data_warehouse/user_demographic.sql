--
-- ユーザーのデモグラ情報を不可する
--
SELECT
  id,
  name,
  birthday,
  CAST(
    FLOOR(
      (
        CAST(FORMAT_DATE('Y%m%d', CURRENT_DATE('Asia/Tokyo')) AS INT64)
        - CAST(FORMAT_DATE('%Y%m%d', birthday) AS INT64)
      ) / 10000
    ) AS INT64
  ) AS age
FROM
  users
