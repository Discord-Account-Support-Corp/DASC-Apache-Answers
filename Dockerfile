FROM golang:1.21 AS builder
WORKDIR /app

RUN git clone https://github.com/apache/incubator-answer.git .
RUN make build

FROM debian:bullseye-slim
WORKDIR /app
COPY --from=builder /app/bin/answer /app/answer

EXPOSE 80
CMD ["./answer", "run"]
