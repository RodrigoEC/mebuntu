#!/bin/bash

install_base() {
	sudo snap install slack --classic
	sudo snap install notion-snap

	curl google.com
	if [ $? -ne 0 ]
	then
		echo -e "${YELLOW}> Installing curl dependency${NC}"
		sudo apt install curl
		echo -e "${GREEN}> curl installed${NC}"
	fi

	sudo apt install git
	sudo snap install discord
}

install_base
