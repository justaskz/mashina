FROM debian:11.4

RUN apt update && apt install -y vim less zsh wget git
WORKDIR "/root/repos/mashina"

# ENV USER_NAME=mashina
# ENV GROUP_NAME=mashina
# ENV HOME=/home/$USER_NAME

# RUN groupadd -r $GROUP_NAME && useradd --create-home --gid --shell /bin/bash $GROUP_NAME $USER_NAME
# RUN chown -R $USER_NAME:$GROUP_NAME $HOME
# RUN apt update && apt install -y vim less zsh wget git

# WORKDIR $HOME/repos/mashina

# USER $USER_NAME
