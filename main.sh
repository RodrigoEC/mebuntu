#!/bin/bash
source ./constants.sh
source ./installs/base.sh

echo -e "${YELLOW}\n##################"
echo -e "# Installing NVM #"
echo -e "##################\n${NC}"
source ./installs/nvm.sh

echo -e "${YELLOW}\n################################"
echo -e "# Installing zsh and oh-my-zsh #"
echo -e "################################\n${NC}"
source ./installs/zsh.sh

echo -e "${YELLOW}\n##################################"
echo -e "# Installing tmux and tmuxinator #"
echo -e "##################################\n${NC}"
source ./installs/tmux.sh

echo -e "${YELLOW}\n###########################"
echo -e "#    Installing Neovim    #"
echo -e "###########################\n${NC}"
source ./installs/neovim.sh

echo -e "${YELLOW}\n########################################"
echo -e "# Installing docker and docker-compose #"
echo -e "########################################\n${NC}"
source ./installs/docker.sh

echo -e "${YELLOW}\n############################"
echo -e "# Installing google-chrome #"
echo -e "############################\n${NC}"
source ./installs/chrome.sh

git clone https://github.com/RodrigoEC/my-dotfiles.git .dotfiles
cp -R .dotfiles/.zshrc .zshrc
cp -R .dotfiles/tmuxinator .config/
cp -R .dotfiles .config/nvim

