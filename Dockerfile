FROM golang:latest
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build -o pocketbase
CMD ["/app/pocketbase", "serve", "--http", "0.0.0.0:8080"]
