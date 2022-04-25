### Installation
```
git clone https://github.com/justaskz/mashina $HOME/.mashina
cd .mashina
make install
```

### Development
From Vagrant instance:
```
ln -s /vagrant/ $HOME/.mashina
cd $HOME/.mashina
source shewill/main.sh
bash recipes/shewill/main.sh
bash recipes/bash/main.sh config
```

### Uninstall
```
cd $HOME/.mashina
make uninstall
```

### Recipes
```
source shewill/main.sh
bash recipes/shewill/main.sh
bash recipes/bash/main.sh config
bash recipes/common/build_tools.sh
source $HOME/.profile

bash recipes/starship/main.sh
bash recipes/fzf/main.sh
bash recipes/tmux/main.sh
bash recipes/ssh/main.sh
```
