#!/bin/bash

sudo apt-get -y install zsh emacs24 tree multitail git-flow
rm ~/.zshrc
ln -s ~/.environment_settings/.zshrc ~/.zshrc
ln -s ~/.environment_settings/.emacs ~/.emacs
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm get-pip.py
sudo pip install virtualenv
sudo pip install virtualenvwrapper
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -s ~/.environment_settings/toothed.zsh-theme ~/.oh-my-zsh/themes/toothed.zsh-theme
ln -s ~/.environment_settings/multitailrc ~/.multitailrc
sudo chsh -s $(which zsh)
