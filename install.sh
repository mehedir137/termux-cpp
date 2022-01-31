#!/data/data/com.termux/files/usr/bin/bash

echo 'Installing packages...'
apt install clang wget curl git neovim zsh nodejs -y

echo 'Changeing shell to zsh...'
chsh -s zsh

echo 'Linking vim to neovim'
ln -s '/data/data/com.termux/files/usr/bin/nvim' '/data/data/com.termux/files/usr/bin/vim'

cd '/data/data/com.termux/'

echo 'Downloading configurations...'
curl 'https://raw.githubusercontent.com/mehedir137/termux-cpp/main/termux.tar.gz' -o 'termux.tar.gz'

echo 'Extracting configurations...'
tar xzf 'termux.tar.gz'
rm 'termux.tar.gz'

echo 'All done! Restart termux!'

