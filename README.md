# Que-Backend

# Heroku デプロイ　仕様

## デプロイ

```
$ git push heroku master
```

## データベース反映

```
<!-- テーブル作成 -->
$ heroku run rails db:migrate
<!-- サーバー停止 -->
heroku ps:scale web=0
<!-- サーバー起動 -->
heroku ps:scale web=1
```
