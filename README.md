### Installation
```
mkdir -p $HOME/repos/
git clone https://github.com/justaskz/mashina $HOME/repos/mashina
git clone git@github.com:justaskz/mashina.git $HOME/repos/mashina
$HOME/repos/mashina
make install
```

### Development
From Vagrant instance:
```
mkdir -p $HOME/repos/
ln -s /vagrant/ $HOME/repos/mashina
cd $HOME/repos/mashina
# source shewill/main.sh
# bash recipes/shewill/main.sh
# bash recipes/bash/main.sh config
```

### Uninstall
```
cd $HOME/repos/mashina
make uninstall
```

### Recipes
```
# source shewill/main.sh
# bash recipes/shewill/main.sh
# bash recipes/bash/main.sh config
# bash recipes/common/build_tools.sh
# source $HOME/.profile

bash recipes/starship/main.sh
# bash recipes/fzf/main.sh
bash recipes/tmux/main.sh
# bash recipes/ssh/main.sh
```
