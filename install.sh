#!/bin/bash

sudo apt-get -y install zsh emacs24 tree
git clone git@github.com:ftan84/.environment_settings.git
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -s ~/.environment_settings/toothed.zsh-theme ~/.oh-my-zsh/themes/toothed.zsh-theme
rm ~/.zshrc
ln -s ~/.environment_settings/.zshrc ~/.zshrc
ln -s ~/.environment_settings/.emacs ~/.emacs
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm get-pip.py
sudo pip install virtualenv
sudo pip install virtualenvwrapper
sudo chsh -s $(which zsh)
