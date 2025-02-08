# ベースイメージに Alpine Linux を使用
FROM alpine:latest

# 必要なパッケージをインストール（go、ビルドツール、必要なライブラリ）
RUN apk add --no-cache go build-base git

# 作業ディレクトリを作成
WORKDIR /app

# 現在のディレクトリ（ローカル）から `/app` にすべてコピー
COPY . .

# Go で PocketBase をビルド
RUN go build -o pocketbase

# サーバーを起動
CMD [ "./pocketbase", "serve", "--http=0.0.0.0:8080" ]
