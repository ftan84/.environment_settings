# .environment_settings
Settings for my development environment which includes oh my zsh and emacs

## Installation
```
sudo apt-get install git zsh
chsh -s $(which zsh)
```
Log out and log back in
```
git clone git@github.com:ftan84/.environment_settings.git
cd .environment_settings
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cp toothed.zsh-theme ~/.oh-my-zsh/themes/
rm ~/.zshrc
ln -s .zshrc ~/.zshrc
cd ~
sudo apt-get install build-essential
sudo apt-get build-dep emacs24
wget http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.gz

cd .environment_settings
ln -s .emacs ~/.emacs
```
