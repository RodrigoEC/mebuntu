#/bin/bash
source ./constants.sh
source ./installs/base.sh

if [ ! -d ${LOGS_PATH} ]
then
	mkdir ${LOGS_PATH}
fi

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
cp -r .dotfiles/.zshrc ~/.zshrc
cp -r .dotfiles/tmuxinator ~/.config/
cp -r .dotfiles ~/.config/nvim

sudo rm -rf .dotfiles
