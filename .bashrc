export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

## load my custom functions and aliases
export USR_SHELL_PATH=~/usrshell

source $USR_SHELL_PATH/myfunctions.sh
source $USR_SHELL_PATH/myaliases.sh

# NOTE: be sure to chmod 700 this file 
