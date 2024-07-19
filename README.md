```bash
curl https://raw.githubusercontent.com/justaskz/mashina/master/install.sh | bash
```

### Installation
```
mkdir -p $HOME/repos
git clone git@github.com:justaskz/mashina.git $HOME/repos/mashina
cd $HOME/repos/mashina
make install
```

```
bash recipes/mashina/main.sh
source $HOME/.profile
bash recipes/common/main.sh
```

### Development
#### Docker

Create and connect to container:
```bash
make build
make up
make connect
```

#### Vagrant
From Vagrant instance:
```
mkdir -p $HOME/repos/
ln -s /vagrant/ $HOME/repos/mashina
cd $HOME/repos/mashina
```

### Uninstall
```
cd $HOME/repos/mashina
make uninstall
```
