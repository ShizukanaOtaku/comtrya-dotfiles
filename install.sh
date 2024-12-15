#!/bin/bash

sudo pacman -S --needed base-devel git rustup --noconfirm
rustup default stable

# Paru installation
(
  git clone https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si --noconfirm --clean
) &

# Comtrya (git version)
(
  git clone https://github.com/comtrya/comtrya
  cd comtrya
  cargo build --release --all-features
  sudo mv target/release/comtrya /usr/bin/comtrya
  cd ..
  rm -rf comtrya
) &

wait

# Clone and install the dotfiles
git clone --recursive https://github.com/ShizukanaOtaku/comtrya-dotfiles
cd comtrya-dotfiles
sudo comtrya -v -d . apply
