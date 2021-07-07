### Installation
```
git clone https://github.com/justaskz/mashina
cd mashina
make common
```

### Development
From Vagrant instance:
```
ln -s /vagrant/ $HOME/mashina
ln -s /vagrant/files/shewill $HOME/.shewill
cd $HOME/mashina
source files/shewill/main.sh
bash recipes/common/build_tools.sh
bash recipes/bash.sh

```
