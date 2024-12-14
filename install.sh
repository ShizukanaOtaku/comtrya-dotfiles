sudo pacman -S --needed base-devel git --noconfirm
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
paru -S rustup --needed --noconfirm
rustup target add default
git clone https://github.com/comtrya/comtrya
cd comtrya
cargo build --release --all-features
sudo mv target/release/comtrya /usr/bin/comtrya
cd ..
rm -rf comtrya
comtrya -v -d . apply
