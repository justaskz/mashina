FROM debian:11.9

RUN apt update && apt install -y vim less zsh wget git make sudo xz-utils curl

ENV USER_NAME=mashina
ENV GROUP_NAME=mashina
ENV HOME=/home/$USER_NAME
ENV USER=$USER_NAME

RUN groupadd -r $GROUP_NAME && \
    useradd -g $GROUP_NAME -G sudo $USER_NAME --create-home --shell=/bin/bash && \
    echo 'mashina ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /root/repos/mashina
WORKDIR $HOME/repos/mashina
COPY ./ ./
RUN bash commands.sh install

RUN chown -R $USER_NAME:$GROUP_NAME $HOME
USER $USER_NAME
