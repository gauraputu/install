#!/bin/sh
echo 'installing necessary packages'
sudo pacman -S codeoss firefox chrome neovim nodejs
echo 'nessacary packages install compelete'

# setup node
echo 'installing nvm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
echo 'run $nvm list then $nvm install lts/latest-package-name'

# setup npm global packages
echo 'set up npm'
npm install -g mocha typescript
echo 'npm setup complete'

# setup neovim configuration
echo 'Setting up neovim'

if [[ -d ~/.config ]]
then
    if [[ -d ~/.config/nvim ]]
    then
        touch init.nvim
    else
        mkdir ~/.config/nvim
        touch init.nvim
    fi
else 
    mkdir ~/.config

    if [[ -d ~/.config/nvim ]]
    then
        touch init.nvim
    else
        mkdir ~/.config/nvim
        touch init.nvim
    fi
fi
echo 'neovim setup complete'
