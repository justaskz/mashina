source recipes/helpers/main.sh

function run {
  exit_if_installed ansible
  install
}

function install {
  ANSIBLE_VERSION=6.4.0 # Used in nord

  pip install --user ansible==$ANSIBLE_VERSION

  rm -rf $MASHINA_BIN/ansible*
  ln -s $HOME/.local/bin/ansible* $MASHINA_BIN
}

function nord {
  sudo mkdir -p /srv/ansible/
  sudo touch /srv/ansible/.ansible_vault_password

  # from ansible dir
  cd ~/repos/ansible/
  pip install --upgrade --user -r collections/ansible_collections/nordsec/team_password_manager/requirements.txt
  pip install --user boto3 influxdb netaddr
}

run
