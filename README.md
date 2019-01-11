# docker-java
katomasa1254様からの依頼

## 納品物一覧
tree構造で説明
├── README.md
├── docker
│   ├── Dockerfile # web用Dockerイメージ作成ファイル
│   └── app #　アプリ
│       └── connectTest.jar
└── docker-compose.yml # docker-compose用ファイル

## 起動方法
ソース取得
```bash
git clone https://github.com/monkeydaichan/docker-java.git
```

docker起動コマンド
```bash
docker-compose up -d
```

起動確認コマンド
```bash
docker-compose ps
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
