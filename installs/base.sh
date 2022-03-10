#!/bin/bash

install_base() {
	sudo snap install slack --classic
	sudo snap install notion-snap
	sudo snap install spotify
	sudo snap install discord

	curl google.com
	if [ $? -ne 0 ]
	then
		echo -e "${YELLOW}> Installing curl dependency${NC}"
		sudo apt install curl
		echo -e "${GREEN}> curl installed${NC}"
	fi

	sudo apt install git
	git config --global user.name "RodrigoEC"
	git config --global user.email "rodrigo.cavalcanti@ccc.ufcg.edu.br"
}

install_base
