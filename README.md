# .environment_settings
Settings for my development environment which includes oh my zsh and emacs

## Installation
First we need to install git and zsh. Then change the default shell to zsh. Make sure to run these commands in home directory ~
```
sudo apt-get install git zsh
chsh -s $(which zsh)
```
Log out and log back in. From here we clone the settings from the repo, install oh-my-zsh, and create symlink for .zshrc.
```
git clone git@github.com:ftan84/.environment_settings.git
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cp toothed.zsh-theme ~/.oh-my-zsh/themes/
rm ~/.zshrc
ln -s .environment_settings/.zshrc ~/.zshrc
```
Next we need to download and build Emacs 24.5 and create symlink for .emacs file.
```
cd ~
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get build-dep emacs24
wget http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.gz
tar -xf emacs-24.5.tar.*
cd emacs-24.5
./configure
make
sudo make install
cd ~
rm -r emacs-24.5 emacs-24.5.tar.gz
ln -s .environment_settings/.emacs ~/.emacs
```
