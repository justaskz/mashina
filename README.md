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
make install
```

### Uninstall
```
cd $HOME/.mashina
make uninstall
```

### Recipes
```
bash recipes/bash.sh config
bash recipes/starship.sh
```
