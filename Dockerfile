FROM debian:11.4
RUN apt update && apt install -y vim less zsh wget git
WORKDIR "root/repos/mashina"
