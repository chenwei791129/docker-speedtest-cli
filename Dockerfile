FROM python:3.7
MAINTAINER AwEi

RUN pip install speedtest-cli

CMD ["speedtest-cli"]
