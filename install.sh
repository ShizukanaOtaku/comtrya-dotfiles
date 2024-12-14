sudo pacman -S --needed base-devel git --noconfirm
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup default stable
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
git clone https://github.com/comtrya/comtrya
cd comtrya
cargo build --release --all-features
sudo mv target/release/comtrya /usr/bin/comtrya
cd ..
rm -rf comtrya
git clone https://github.com/ShizukanaOtaku/comtrya-dotfiles
cd comtrya-dotfiles
comtrya -v -d . apply
