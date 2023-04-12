#!/bin/bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim

sudo apt install git
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

#sudo apt install clangd-12
#sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
#pip3 isntall cmake-language-server
sudo apt install npm
sudo npm install -g n
source ~/.bashrc
sudo n stable
#sudo npm i -g pyright
sudo apt install xclip #neovim 使用系统剪切板
