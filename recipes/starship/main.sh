source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed starship
  install
}

function update_config {
  mkdir -p $HOME/.config/starship
  cp recipes/starship/dotfiles/starship.toml $HOME/.config/starship/starship.toml
  cp recipes/starship/init/starship.sh $MASHINA_INIT
}

function install {
  wget https://raw.githubusercontent.com/starship/starship/master/install/install.sh -P $MASHINA_TMP
  # curl https://raw.githubusercontent.com/starship/starship/master/install/install.sh > $MASHINA_TMP/install.sh
  sh $MASHINA_TMP/install.sh --yes --bin-dir $MASHINA_BIN
  rm $MASHINA_TMP/install.sh
}

run
