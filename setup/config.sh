#!/usr/bin/bash

git clone https://github.com/LazyVim/starter ~/.config/nvim

cp -r ~/dotfiles/config/* .config/
cp ~/dotfiles/zsh/.zshrc ~

mkdir ~/Wallpaper/
cp ~/dotfiles/assets/flower.jpg ~/Wallpaper/

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlightin
