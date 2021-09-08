#! bin/bash
cd spring-petclinic-angular
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 12.14.1
npm update
alias launchchrome="\"/mnt/c/Program Fles (x86)/Google/Chrome/Application/chrome.exe\""
export CHROME_BIN=launchchrome
ng test
cd ..


