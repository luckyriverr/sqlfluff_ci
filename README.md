# sqlfluff デモ

## 使用するLinter

- [sqlfluff](https://github.com/sqlfluff/sqlfluff)

## Dockerで動かす

```sh
docker pull sqlfluff/sqlfluff:<version_tag>
docker run -it --rm -v $PWD:/sql sqlfluff/sqlfluff:<version_tag> lint <target directory>
```

例：

```sh
docker pull sqlfluff/sqlfluff:0.9.4
docker run -it --rm -v $PWD:/sql sqlfluff/sqlfluff:0.9.4 lint sql
```

c.f <https://hub.docker.com/r/sqlfluff/sqlfluff>

## ルール

- [ルール一覧](https://docs.sqlfluff.com/en/stable/rules.html)
- 特定の行だけルール無視したい場合、`-- noqa: <rule>` を記述する

```sql
  SELECT DATETIME('2021-09-01 12:34:56') AS timestamp, 500 AS amount  -- noqa: L036, L029
  UNION ALL
  SELECT DATETIME('2021-09-02 01:12:23') AS timestamp, 150 AS amount  -- noqa: L036, L029
```

c.f <https://docs.sqlfluff.com/en/stable/rules.html#inline-ignoring-errors>

## CIでLinterを動かす

- Github ActionsでPull RequestをトリガーにLinter動かす
- ワークフローは .github/workflows/lint_sql.yml を参照

c.f <https://github.com/sqlfluff/sqlfluff-github-actions/tree/main/menu_of_workflows/sunrise_movement>
