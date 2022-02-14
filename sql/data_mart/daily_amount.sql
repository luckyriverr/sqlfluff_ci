--
-- 日毎の売上を算出する
--
WITH purchases AS (
  SELECT DATETIME('2021-09-01 12:34:56') AS timestamp, 500 AS amount  -- noqa: L036, L029
  UNION ALL
  SELECT DATETIME('2021-09-02 01:12:23') AS timestamp, 150 AS amount  -- noqa: L036, L029
  UNION ALL
  SELECT DATETIME('2021-09-02 12:23:34') AS timestamp, 200 AS amount  -- noqa: L036, L029
  UNION ALL
  SELECT DATETIME('2021-09-04 11:11:11') AS timestamp, 700 AS amount
)

SELECT
  DATE(timestamp) AS date,
  SUM(amount) AS amount
FROM
  purchases
GROUP BY
  date
ORDER BY
  date
