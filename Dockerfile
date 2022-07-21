FROM debian:10.12

RUN apt -y update \
  && apt install -y git
