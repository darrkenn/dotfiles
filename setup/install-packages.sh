#!/usr/bin/bash

sudo pacman -Syu \
  base-devel \
  zsh \
  kitty \
  hyprland \
  tmux \
  neovim \
  waybar \
  hyprpaper \
  curl \
  dolphin \
  firefox \
  go \
  python \
  nodejs \
  npm \
  sddm \
  fastfetch \
  virtualbox \
  virtualbox-host-modules-arch \
  qemu \
  libvirt \
  virt-manager \
  virt-viewer \
  dnsmasq \
  vde2 \
  bridge-utils \
  openbsd-netcat \
  bridge-utils \
  docker \
  docker-buildx \
  zoxide \
  elixir --noconfirm

git clone https://aur.archlinux.org/yay.git
cd ~/yay
makepkg -si

yay -S kitty-cat

cd ~
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash
