# Que-Backend

# Rails プロジェクト(ruby2.6.6, rails6.1.4)を Heroku にデプロイするための変更箇所

1.

Heroku のアプリ設定画面で nodejs と ruby の build パックを入れる

2.

terminal

```
$ bundle lock --add-platform x86_64-linux
```

3.

package.json

```
"scripts": {
    "start": "node server.js"
}
```

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
