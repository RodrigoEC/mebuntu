#!/bin/bash
source ./colors.sh

install_nvm() {
	is_valid=$('curl google.com')
	if [ $? -ne 0 ]
	then
		echo -e "${YELLOW}> Installing curl dependency${NC}"
		sudo apt install curl
		echo -e "${GREEN}> curl installed${NC}"
	fi

	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

	nvm install --lts
}

install_nvm 2>../logs/nvm_error.txt
if [ $? -eq 0 ]
then
	echo -e "${GREEN}\n> NVM installed${NC}"
else
	echo -e "${RED}\n> Error installing NVM, go to logs/nvm_error.txt to see errors log${NC}"
fi

