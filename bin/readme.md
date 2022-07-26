#After cloning the repo into ~/.dotfiles run:
$ stow .

#To clean up symlinks run:
$ stow -D .

#To add a folder to dotfiles
e.g
$ mv ~/.config/i3 ~/.dotfiles/.config/i3


#Install Packer for Nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim


 Run NeoVim with PackerSync command:
nvim +PackerSync
