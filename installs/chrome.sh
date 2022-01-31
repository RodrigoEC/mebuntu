#!/bin/bash

install_google_chrome() {
	echo -e "\n${YELLOW}> Starting to install google chrome${NC}"
	wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

	echo -e "\n${YELLOW}> Updating dependencies${NC}"
	sudo apt-get update

	echo -e "\n${YELLOW}> Installing google chrome${NC}"
	sudo apt install google-chrome-stable
}

install_google_chrome 2>${LOGS_PATH}/google_chrome_errors.txt
if [ $? -eq 0 ]
then
	echo -e "\n${GREEN}> google chrome installed successfully${NC}"
else
	echo -e "\n${RED}> Error when installing google chrome, got to logs/google_chrome_errors.txt to see what went wrong${NC}"
fi
