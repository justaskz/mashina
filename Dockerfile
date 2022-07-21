# FROM debian:10.12
FROM debian:11.4

RUN apt -y update \
  && apt install -y git
