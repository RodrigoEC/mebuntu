#!/bin/bash

install_tmux() {
	sudo apt update
	echo -e "\n${YELLOW}> Starting to install TMUX${NC}"
	sudo apt install tmux

	echo -e "\n${YELLOW}> Starting to install tmuxinator${NC}"
	sudo apt install tmuxinator
}

install_tmux 2>${LOGS_PATH}/tmux_errors.txt
if [ $? -eq 0 ]
then
	echo -e "\n${GREEN}> TMUX and Tmuxinator installed successfully${NC}"
else
	echo -e "\n${RED}> Error when installing TMUX or tmuxinator, got to logs/tmux_errors.txt to see what went wrong${NC}"
fi
