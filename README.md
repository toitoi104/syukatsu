
# README

## モデル準備

### companies

```
docker-compose run web rails generate scaffold companies name:string employees:integer average_salary:integer average_age:integer listed:bool listed_type:integer flow:string industry_type:integer hire:integer magnification:float

docker-compose run web rails db:migrate

// Gemfileを編集したら実行
docker-compose run web bundle install
```

## docker準備


```
https://www.codeadvisor.jp/entry/2018/10/06/235712

```

## dockerコマンド

```
//dockerが動いてるか確認
$ docker-machine ls

// コンテナ全削除
$ docker rm -f `docker ps -a -q`

// コンテナの作成と開始
$ docker compose up

// コンテナの開始
$ doxker compose start

// 各コンテナ情報
$ docker ps

------------------------------
//　bashに入る docker ps で得たコンテナIDを利用
$ docker exec -it {コンテナID} /bin/bash

// mysqlに接続　(パスはdocker-compose.ymlに記載)
$ mysql -u root -p

// データベース確認
$ show databases;
------------------------------



```

## エラー対応

### docker compose upでエラー 「exited with code 1」

- 作成したコンテナを削除していないのが原因

```
rm tmp/pids/server.pid
rm tmp/pids/unicorn.pid
```

- 上記２つのファイルを削除し、コンテナを作り直したら解決

## Migrations are pending. To resolve this issue, run: bin/rails db:migrate RAILS_ENV=development

- モデルの型でミスってるかも
- 対応してから　docker-compose run web rails db:migrate