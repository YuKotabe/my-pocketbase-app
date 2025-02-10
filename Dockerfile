FROM golang:1.21

WORKDIR /app
COPY . .

RUN go mod tidy
RUN go build -o pocketbase

# ✅ PostgreSQL に接続できるように `--db ${PB_DB_URL}` を追加！
CMD ["/app/pocketbase", "serve", "--http", "0.0.0.0:8080", "--db", "${PB_DB_URL}"]
