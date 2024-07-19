FROM debian:12

RUN apt update && apt install -y vim less zsh wget git make sudo xz-utils curl procps unzip build-essential software-properties-common

ENV USER_NAME=mashina
ENV GROUP_NAME=mashina
ENV HOME=/home/$USER_NAME
ENV USER=$USER_NAME

RUN groupadd -r $GROUP_NAME && \
    useradd -g $GROUP_NAME $USER_NAME --create-home --shell=/bin/bash && \
    usermod -G sudo $USER_NAME && \
    echo 'mashina ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /opt/mashina
COPY ./ ./
RUN chown -R $USER_NAME:$GROUP_NAME /opt/mashina
USER $USER_NAME
RUN bash recipes/mashina/main.sh

CMD ["/usr/bin/tail", "-f", "/dev/null"]
