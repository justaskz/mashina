sudo apt-get install dh-autoreconf libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev install-info

tar -zxf git-2.8.0.tar.gz
cd git-2.8.0
make configure
./configure --prefix=/usr
make all doc info
sudo make install install-doc install-html install-info
