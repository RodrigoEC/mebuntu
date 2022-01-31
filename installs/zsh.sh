#!/bin/bash


install_zsh() {
	sudo apt update
	echo -e "\n${YELLOW}> Starting to install ZSH${NC}"
	sudo apt install zsh -y
	echo -e "\n${YELLOW}> Starting to install oh-my-zsh${NC}"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

install_zsh 2>${LOGS_PATH}/zsh_errors.txt
if [ $? -eq 0 ]
then
	echo -e "\n${GREEN}> ZSH and oh-my-zsh installed successfully${NC}"
else
	echo -e "\n${RED}> Error when installing ZSH and oh-my-zsh, got to logs/zsh_errors.txt to see what went wrong${NC}"
fi

