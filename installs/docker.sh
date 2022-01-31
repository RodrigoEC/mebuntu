#!/bin/bash
source ./colors.sh

install_docker() {
	echo -e "${YELLOW}> Installing dependencies${NC}"
	sudo apt install apt-transport-https ca-certificates curl software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
	sudo apt update
	apt-cache policy docker-ce:w

	echo -e "${YELLOW}> Installing docker${NC}"
	sudo apt install docker-ce
	sudo systemctl status docker
	
	echo -e "${YELLOW}> Installing docker-compose${NC}"
	sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

	echo -e "${YELLOW}> Adding user to docker group${NC}"
	sudo usermod -aG docker ${USER}
}

install_docker 2>../logs/docker_error.txt
if [ $? -eq 0 ]
then
	echo -e "${GREEN}\n> docker and docker-compose installed successfully${NC}"
else
	echo -e "${RED}\n> Error installing docker, go to logs/docker_error.txt to see errors log${NC}"
fi

