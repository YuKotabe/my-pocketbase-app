# ベースイメージとして Alpine を使用
FROM alpine:latest

# 必要なパッケージをインストール
RUN apk add --no-cache go build-base git

# 作業ディレクトリを設定
WORKDIR /app

# ソースコードをコンテナにコピー
COPY . .

# Go の依存関係を解決
RUN go mod tidy

# PocketBase をビルド
RUN go build -o pocketbase

# サーバーを起動
CMD [ "./pocketbase", "serve", "--http=0.0.0.0:8080" ]
