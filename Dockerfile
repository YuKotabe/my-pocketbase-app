FROM golang:1.21  # ← ここがあるか確認！適切なバージョンかもチェック！
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build -o pocketbase
CMD ["/app/pocketbase", "serve", "--http", "0.0.0.0:8080"]
