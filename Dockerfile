FROM golang:1.18-alpine3.14 AS builder
WORKDIR /app

COPY . .

RUN go clean --modcache
RUN GOOS=linux go build -o server server.go

FROM alpine:3.14
WORKDIR /app

RUN apk --no-cache add tzdata
COPY --from=builder /app/server .

EXPOSE 80
CMD [ "/app/server" ]