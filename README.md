# sqlfluff linter demo

[sqlfluff](https://github.com/sqlfluff/sqlfluff)

## ローカル

```sh
docker pull sqlfluff/sqlfluff:latest
docker run -it --rm -v $PWD:/sql sqlfluff/sqlfluff:latest lint sql/
```
