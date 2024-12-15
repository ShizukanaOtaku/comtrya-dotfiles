#!/bin/bash

sudo pacman -S --needed base-devel git --noconfirm
if ! command -v cargo 2>&1 >/dev/null
then
  echo "Cargo could not be found!"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
rustup default stable

# Paru installation
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

# Comtrya (git version)
git clone https://github.com/comtrya/comtrya
cd comtrya
cargo build --release --all-features
sudo mv target/release/comtrya /usr/bin/comtrya
cd ..
rm -rf comtrya

# Clone and install the dotfiles
git clone https://github.com/ShizukanaOtaku/comtrya-dotfiles
cd comtrya-dotfiles
sudo comtrya -v -d . apply
