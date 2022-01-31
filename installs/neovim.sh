#!/bin/bash

install_neovim() {
	sudo apt install neovim
	sudo apt install ranger

	nvim --headless +PlugInstall +qall
}

install_neovim 2>${LOGS_PATH}/nvim_error.txt
if [ $? -eq 0 ]
then
	echo -e "${GREEN}\n> Neovim installed${NC}"
else
	echo -e "${RED}\n> Error installing Neovim, go to logs/nvim_error.txt to see errors log${NC}"
fi

