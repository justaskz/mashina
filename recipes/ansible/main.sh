source recipes/helpers/main.sh

function run {
  exit_if_installed ansible
  install
}

function install {
  pip install --user ansible==6.6.0

  # nord
  pip install -r collections/ansible_collections/nordsec/team_password_manager/requirements.txt --upgrade --user
  pip install request influxdb boto3

  rm -rf $MASHINA_BIN/ansible*
  ln -s $HOME/.local/bin/* $MASHINA_BIN
}

run
