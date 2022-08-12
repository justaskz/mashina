source recipes/helpers/install.sh

function run {
  update_config
  exit_if_installed starship
  install
}

function install {
  wget https://raw.githubusercontent.com/starship/starship/master/install/install.sh -P $MASHINA_TMP
  # curl https://raw.githubusercontent.com/starship/starship/master/install/install.sh > $MASHINA_TMP/install.sh
  sh $MASHINA_TMP/install.sh --yes --bin-dir $MASHINA_BIN
  rm $MASHINA_TMP/install.sh
}

function update_config {
  cp recipes/starship/dotfiles/.starship $HOME
  cp recipes/starship/init/starship.sh $MASHINA_INIT
}

run
