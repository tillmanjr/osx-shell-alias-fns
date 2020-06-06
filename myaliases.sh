alias myshell="~/usrshell/myshell.sh"

## ============ ls ============
## Colorize the ls output ##
alias ls="ls -G"
 
## Use a long listing format ##
alias ll="ls -la"
 
## Show hidden files ##
alias l.="ls -d .* -G"

## get rid of command not found ##
alias cd..="cd .."

## use our bespoke awscli.command to login to aws cli
alias aws-login="(pushd /Users/tdickson/code/fmi/devops/get-aws-credentials/out && ./awscli.command; popd)"

alias aws-cfg-edit="code ~/.aws/credentials ~/.aws/config"

## remove aws auth env vars
alias aws-env-clr="for var in AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN AWS_SECURITY_TOKEN ; do eval unset $var ; done"

alias aws-cfg-less="less ~/.aws/credentials"

alias aws-cfg-rm="rm ~/.aws/credentials"

alias aws-accesskey="aws configure get default.aws_access_key_id"

alias aws-secretkey="aws configure get default.aws_secret_access_key"

alias aws-cfg-2env='export AWS_ACCESS_KEY_ID=$(aws configure get default.aws_access_key_id) && export AWS_SECRET_ACCESS_KEY=$(aws configure get default.aws_secret_access_key)'

## ============ Silly Stuff ============ 
## =====================================

## ============ wtr ============
## a quick way to get weather forecast to terminal ##
alias wtr-sj="curl http://wttr.in/San+Jose?m"
alias wtr-sj-g="curl http://wttr.in/San+Jose?format=v2&m"

alias wtr-pa="curl curl http://wttr.in/Palo+Alto?m"
alias wtr-pa-g="curl curl http://wttr.in/Palo+Alto?format=v2&m"

alias wtr-bos="curl http://wttr.in/boston?m"
alias wtr-bos-g="curl http://wttr.in/boston?format=v2&m"

alias wtr-moon="curl http://wttr.in/moon"

alias cheat="curl cheat.sh"
 
## ============ cd ============
## a quick way to get out of current directory ##
alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
 
## confirmation #
alias mv="mv -i"
alias cp="cp -i"
alias ln="ln -i"

## ============ mkdir ============
## create path parts as needed
alias mkdir="mkdir -pv"

## ============ grep ============
alias grep="grep --color=auto"

## ============ simple conveniences ============
alias h.="history"

## ============ networking ============
## show all open ports
alias ports="netstat -tulanp"
alias myip="curl icanhazip.com"  # gets my public ip

## ============ ping cleanup ============
## Stop after sending count ECHO_REQUEST packets #
alias ping="ping -c 5"
## Do not wait interval 1 second, go fast #
alias fastping="ping -c 100 -s.2"

## ============ wget ============
## default to resume by default - for krimeny"s sake
alias wget="wget -c"

## ============ systems statuses ============
## pass options to free ##
alias meminfo="free -m -l -t"
 
## get top process eating memory
alias psmem="ps auxf | sort -nr -k 4"
alias psmem10="ps auxf | sort -nr -k 4 | head -10"
 
## get top process eating cpu ##
alias pscpu="ps auxf | sort -nr -k 3"
alias pscpu10="ps auxf | sort -nr -k 3 | head -10"
 
## Get server cpu info ##
alias cpuinfo="lscpu"
 
## older system use /proc/cpuinfo ##
##alias cpuinfo="less /proc/cpuinfo" ##
 
## get GPU ram on desktop / laptop##
alias gpumeminfo="grep -i --color memory /var/log/Xorg.0.log"

# about my mac
alias mymac="neofetch"


# ----------------------
# Git Aliases - all begin with gt
# ----------------------
## git add .. all begin with gta
alias gta="git add"
alias gtaa="git add ."
alias gtaaa="git add --all"
alias gtau="git add --update"
## git branch .. all begin with gtb
alias gtb="git branch"
alias gtbd="git branch --delete "
# git commit ... all begin with gtct
alias gtct="git commit"
alias gtctm="git commit --message"
alias gtctf="git commit --fixup"
# git checkout .. all begin with gtco
alias gtco="git checkout"
alias gtcob="git checkout -b"
alias gtcom="git checkout master"
alias gtcos="git checkout stage"
alias gtcod="git checkout develop"
# git diff .. all begin with gtdf
alias gtdf="git diff"
alias gtdfa="git diff HEAD"
# git init
alias gti="git init"
# git log
alias gtlg="git log --graph --oneline --decorate --all"
alias gtld='git log --pretty=format:"%h %ad %s" --date=short --all'
# git merge .. all begin with gtmg
alias gtmg="git merge --no-ff"
alias gtmga="git merge --abort"
alias gtmgc="git merge --continue"
# git pull .. all begin with gtpl
alias gtpl="git pull"
alias gtplr="git pull --rebase"
# alias gtr="git rebase"
# git status .. all start with gtst
alias gtst="git status"
alias gtsts="git status --short"
# git stash -- still need to think these through
# alias gtsts="git stash"
# alias gtsta="git stash apply"
# alias gstsd="git stash drop"
# alias gtstsl="git stash list"
# alias gtstsp="git stash pop"
# alias gtstss="git stash save"
