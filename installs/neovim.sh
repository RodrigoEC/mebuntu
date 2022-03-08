#!/bin/bash

install_neovim() {
	sudo apt install neovim
	sudo apt install ranger

	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

	nvim --headless +PlugInstall +qall
}

install_neovim 2>${LOGS_PATH}/nvim_error.txt
if [ $? -eq 0 ]
then
	echo -e "${GREEN}\n> Neovim installed${NC}"
else
	echo -e "${RED}\n> Error installing Neovim, go to logs/nvim_error.txt to see errors log${NC}"
fi

