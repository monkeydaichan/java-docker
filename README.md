# docker-java
katomasa1254様からの依頼

## 納品物一覧

```bash
├── README.md
├── .dbdata # postgresqlのデータフォルダ
├── docker
│   ├── db
│   │   └── init # 初期データ作成スクリプトフォルダ
│   │       └── 1_createdb.sql
│   └── web
│       ├── Dockerfile # web用Dockerイメージ作成ファイル
│       └── app # アプリ
│           └── connectTest.jar
└── docker-compose.yml # docker-compose用ファイル
```

## ソース取得
Macの任意のディレクトリで下記コマンドを実行。
```bash
git clone https://github.com/monkeydaichan/docker-java.git
```

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