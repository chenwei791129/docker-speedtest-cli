FROM python:3.7-alpine
LABEL MAINTAINER=AwEi \
      GITHUB="https://github.com/chenwei791129/docker-speedtest-cli" \
      DOCKERHUB="https://hub.docker.com/r/awei/speedtest-cli" \
      CLI_VERSION=v2.1.1

RUN pip install --no-cache-dir speedtest-cli

CMD ["speedtest-cli"]
