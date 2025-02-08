FROM alpine:latest

WORKDIR /app
COPY . /app
RUN apk add --no-cache go && go build -o pocketbase

CMD ["./pocketbase", "serve", "--http", "0.0.0.0:8080"]
