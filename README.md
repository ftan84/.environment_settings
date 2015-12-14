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
```
