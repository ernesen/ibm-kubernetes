FROM golang:alpine AS builder
WORKDIR /go/src/app
COPY main.go .
RUN go build -o webserver .

# second second container
FROM alpine
WORKDIR /app
COPY --from=builder /go/src/app /app

CMD ["./webserver"]