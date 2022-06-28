function run {
  update_config
  exit_if_installed fzf
  install
}

function install_debian {
  FZF_HOME="$MASHINA_OPT/fzf"
  git clone --depth 1 https://github.com/junegunn/fzf.git $FZF_HOME
  bash $FZF_HOME/install --bin

  ln -s $FZF_HOME/bin/fzf $MASHINA_BIN
}

function update_config {
  cp -ar recipes/fzf/init/fzf.sh $MASHINA_INIT
  cp recipes/fzf/functions/fzf.sh $MASHINA_FUNCTIONS
}

run
