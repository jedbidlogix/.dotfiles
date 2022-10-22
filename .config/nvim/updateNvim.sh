echo 'updating nvim'
sudo apt remove neovim -y
sudo add-apt-repository ppa:neovim-ppa/stable -y
sudo apt-get update -y
sudo apt-get install neovim -y
echo 'nvim update complete'

echo 'installing node'
sudo apt install nodejs -y
sudo apt install npm -y

echo 'pyright npm install'
sudo npm install -g pyright -y
sudo npm update -g pyright -y
