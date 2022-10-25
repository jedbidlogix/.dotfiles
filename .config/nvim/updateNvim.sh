echo 'updating nvim'
sudo apt remove neovim -y
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update -y
sudo apt-get install neovim -y
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim -y
echo 'nvim update complete'

echo 'installing node'
sudo apt install nodejs -y
sudo apt install npm -y

echo 'pyright npm install'
sudo npm install -g pyright -y
sudo npm update -g pyright -y

echo 'sumneko LSP setup'
sudo apt install build-essential
sudo apt-get install ninja-build
cd ~/.config/nvim

git clone  --depth=1 https://github.com/sumneko/lua-language-server 
cd lua-language-server
git submodule update --depth 1 --init --recursive

cd 3rd/luamake
sudo bash compile/install.sh
cd ../..
sudo bash 3rd/luamake/luamake rebuild

