#!/bin/bash

install_base() {
	sudo snap install discord
	sudo snap install slack
	sudo snap install notion-snap

	curl google.com
	if [ $? -ne 0 ]
	then
		echo -e "${YELLOW}> Installing curl dependency${NC}"
		sudo apt install curl
		echo -e "${GREEN}> curl installed${NC}"
	fi

	sudo apt install git
}

install_base
