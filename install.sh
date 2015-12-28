#!/usr/bin/zsh

sudo apt-get -y install git zsh
sudo chsh -s $(which zsh)
git clone git@github.com:ftan84/.environment_settings.git
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -s ~/.environment_settings/toothed.zsh-theme ~/.oh-my-zsh/themes/toothed.zsh-theme
rm ~/.zshrc
ln -s ~/.environment_settings/.zshrc ~/.zshrc
