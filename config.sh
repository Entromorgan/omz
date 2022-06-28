#!/bin/bash
sudo apt update
sudo apt install -y curl
sudo apt install -y zsh
export http_proxy='http://10.214.131.221:10811'
export https_proxy='http://10.214.131.221:10811'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
export http_proxy=''
export https_proxy=''
cp ./zshrc ~/.zshrc
rm -rf ~/.oh-my-zsh
cp -r ./oh-my-zsh ~/.oh-my-zsh
source ~/.zshrc
