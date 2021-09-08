#! bin/bash
cd spring-petclinic-angular
nvm install 12.14.1
alias launchchrome="\"/mnt/c/Program Fles (x86)/Google/Chrome/Application/chrome.exe\""
export CHROME_BIN=launchchrome
ng test
cd ..


