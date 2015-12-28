# .environment_settings
Settings for my development environment which includes oh my zsh and emacs

## Installation
If installing on Ubuntu 15.10 or later, you may run install.sh
```
cd ~
./.environment_settings/install.sh
```

## Installation (LTS 14.04)
First we need to install git and zsh. Then change the default shell to zsh. Make sure to run these commands in home directory ~
```
cd ~
sudo apt-get install -y git zsh tree
```
Log out and log back in. From here we clone the settings from the repo, install oh-my-zsh, and create symlink for .zshrc.
```
git clone git@github.com:ftan84/.environment_settings.git
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -s ~/.environment_settings/toothed.zsh-theme ~/.oh-my-zsh/themes/toothed.zsh-theme
rm ~/.zshrc
ln -s ~/.environment_settings/.zshrc ~/.zshrc
```
Next we need to download and build Emacs 24.5 and create symlink for .emacs file.
```
cd ~
sudo apt-get -y update
sudo apt-get -y install build-essential
sudo apt-get -y build-dep emacs24
wget http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.gz
tar -xf emacs-24.5.tar.*
cd emacs-24.5
./configure
make
sudo make install
cd ~
rm -r emacs-24.5 emacs-24.5.tar.gz
ln -s ~/.environment_settings/.emacs ~/.emacs
```
Install Python stuff
```
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm get-pip.py
sudo pip install virtualenv
sudo pip install virtualenvwrapper
```
Switch over to zsh as default
```
chsh -s $(which zsh)
```