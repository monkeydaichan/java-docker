# docker-java
katomasa1254様からの依頼

## 納品物一覧

```bash
├── README.md
├── .dbdata # data directoru of postgresql
├── docker
│   ├── db
│   │   └── init # 初期データ作成スクリプトフォルダ
│   │       └── 1_createdb.sql
│   └── web
│       ├── Dockerfile # file for creating docker image
│       └── app # appli
│           └── connectTest.jar
│           └── postgresql-42.2.5.jar # jdbc driver
└── docker-compose.yml # docker-compose file
```

## ソース取得
Macの任意のディレクトリで下記コマンドを実行。
またはリポジトリからzipファイルを取得。
```bash
git clone https://github.com/monkeydaichan/docker-java.git
```

## 設定変更
docker-compose.ymlファイルの９行目をweb apiが使用するポートに変更

## 起動方法

```bash
cd docker-java
```

docker起動コマンド
```bash
docker-compose up -d
```

起動確認コマンド
```bash
$ docker-compose ps
    Name                   Command              State           Ports
------------------------------------------------------------------------------
db-container    docker-entrypoint.sh postgres   Up      0.0.0.0:5432->5432/tcp
web-container   ash                             Up      0.0.0.0:3000->3000/tcp
```

## 動作確認

## デバッグ
docker-compose up -d をしただけだとweb-containerではjava -jar connetTest.jarファイルが実行されるのみです。  
もし実行に失敗した場合は、コンテナが強制終了されるのでデバッグするときは、docker-compose.ymlファイルの21行目をコメントアウトしてdocker-compose down && docker-compose up -dで再度実行してください。  
実行後、jarファイルの実行が失敗してもコンテナは起動しているので下記のコマンドでコンテナへ接続してください。

webコンテナへの接続コマンド
```bash
docker-compose exec web ash
```

dbコンテナへの接続コマンド
```bash
docker-compose exec db ash
```

コンテナから抜ける際はexitコマンドで可能

## 停止方法

```bash
docker-compose down
```