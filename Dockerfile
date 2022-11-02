FROM alpine:latest AS builder

WORKDIR /app
RUN apk --no-cache add wget && \
    # v2.1.4b1
    wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/22210ca35228f0bbcef75a7c14587c4ecb875ab4/speedtest.py && \
    chmod +x speedtest-cli

FROM python:3.11.0-alpine3.16
LABEL MAINTAINER=AwEi \
      GITHUB="https://github.com/chenwei791129/docker-speedtest-cli" \
      DOCKERHUB="https://hub.docker.com/r/awei/speedtest-cli"

WORKDIR /app
COPY --from=builder /app/speedtest-cli /app/speedtest-cli

ENTRYPOINT ["/app/speedtest-cli"]
