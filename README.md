# サンプルアプリケーション
javaでDBに接続してcenterinfoのテーブルのcenterinfoカラムを出力するjarファイルを作成しました。  
これをWEBコンテナに設置してlogsにテーブルデータが出力されれば正常に動作します。

## folder-tree

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
│           └── run.sh # start app
└── docker-compose.yml # docker-compose file
└── test
    ├── createTable.sql
    └── insert.sql
```
  
##  データのインサート
コンテナの起動

```bash
$ cd javadocker
$ docker-compose up -d
```

テーブル作成とデータのインサートをします。
`test/createTable.sql`と`insert.sql`を実行してください。

## 動作確認
コンテナを再起動します。

```bash
$ docker-compose up -d
```

webコンテナのログを確認

```bash
$ docker-compose logs web
```

最下行に`web-container | 0`という出力があれば成功です。

# 参考サイト
http://docs.docker.jp/compose/startup-order.html
https://qiita.com/met_ganchan13/items/2af29ba1f6da87199de0
https://qiita.com/megmogmog1965/items/e7cd4500006c3b6b1894