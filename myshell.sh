#!/bin/bash
# A menu driven shell script sample template 
## ----------------------------------
# Step #1: Define variables
# ----------------------------------
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'
 
# ----------------------------------
# Step #2: User defined function
# ----------------------------------
pauseold(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}
pause() {
    read -n 1 -s -r -p "Press any key to continue"
}
more() {
    read -n 1 -s -r -p "More available ... press any key"
}


showgithelp(){
	less $USR_SHELL_PATH/myhelp-git.txt
}
showfileopshelp() {
    less $USR_SHELL_PATH/myhelp-fileops.txt
}
shownetworkhelp() {
    clear
	echo "      ==========================================="
    echo "                 Network Shortcuts"
    echo "      ==========================================="
    echo " "
    echo "   ports      netstat -tulanp     show all open ports"
    echo "   myip       curl icanhazip.com  get my public ip"
    echo " "
    echo "   ping       ping -c 5           Stop after sending count..." 
    echo "                                      ...ECHO_REQUEST packets"
    echo "   fastping   ping -c 100 -s.2    Ping quickly by not waiting 1s interval"
    echo " "
    echo "   wget       wget -c             Default to resume - duh"
    echo " "
        pause
}
showmycomputerinfohelp() {
    clear
    echo "no help here yet"
}
# iTerm2 shortcuts
showit2help(){
    clear
	echo "========================================================"
    echo "                     iTerm2 Functions"
    echo "========================================================"
    echo "   iterm_tab       set Tab's title"
    echo "                      - append Title arg as quoted str-"
    echo " "
    echo "   iterm_window    set Window's title"
    echo "                      - append Title arg as quoted str-"
    echo " "
    echo "   iterm_both      reset to Window's title tracks Tab's"
    echo "                   - no argument"
    echo " "
        pause
}

showsilliness(){
    clear
    echo "============================================================"
    echo "                     Silly Stuff"
    echo "============================================================"
    echo "  Weather          For graph view append -g (cities only)"
    echo "                        e.g. wtr-sj-g"
    echo "                   ---------------------------------------"
    echo "   wtr-sj          Weather forecast for San Jose, CA"
    echo " "
    echo "   wtr-pa          Weather forecast for Palo Alto, CA"
    echo " "
    echo "   wtr-bos         Weather forecast for Boston, MA"
    echo " "
    echo "   wtr-moon        Phase of the moon"
    echo " "
    echo "   cheat           Cheat Sheet"
    echo " "
    echo "   dict [words]    Lookup word definition"
    echo "                       e.g. dict run  "
    echo "                       e.g. dict 'command line'  "
    echo " "
        pause
}

showawshelp(){
    clear
	echo "============================================================="
    echo "              AWS Shortcuts"
    echo "               prefixed with aws-"
    echo "============================================================="
    echo "   aws-login       log in to aws via awscli"
    echo "                     uses FMI's awscli.command / wrappers..."
    echo " "
    echo "   aws-cfg-edit    open credentials and config in VS Code"
    echo " "
    echo "   aws-env-clr     clear AWS credential env vars:"
    echo "                     AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY"
    echo "                     AWS_SESSION_TOKEN, AWS_SECURITY_TOKEN"
    echo " "
    echo "   aws-cfg-less    view aws config, uses less (~/.aws/config)"
    echo "   aws-cfg-rm      delete aws config (~/.aws/config)"
    echo "   aws-cfg-2env    export default KEYs to env vars"
    echo " "
    echo "   aws-accesskey   output default AWS_ACCESS_KEY_ID"
    echo "   aws-secretkey   output default AWS_SECRET_ACCESS_KEY_ID"     
    echo " "
    echo " "
        pause
}

# do something in two()
showpghelp(){
    clear
	echo "==========================================="
    echo "           postgreSQL Shortcuts"
    echo "            prefixed with pg"
    echo "==========================================="
    echo "   pgstatus      status of postgres service"
    echo "   pgstart       start postgres service"
    echo "   pgstop        stop postgres service"
    echo " "
        pause
}
showdockerhelp(){
    clear
	echo "==========================================="
    echo "           Docker Shortcuts"
    echo "            prefixed with" 
    echo "                dkr for docker"
    echo "                dkc for docker-compose"
    echo "==========================================="
    echo "   dockly        start dockly terminal tool"
    echo "   dkrpga        Purge everything - careful!"
    echo "   dkrcls        List Containers"
    echo "   dkrils        List Images"
    echo "   dkcbsh        Open bash shell in running container"
    echo "                   append shell identifier"
    echo " "
        pause
}
 
# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
	echo " T I L L M A N ' S  B A S H  C U S T O M I Z A T I O N S"
    echo "                 What are they again?"
    echo "                      Remind me!"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo " "
    echo "   a) AWS - cli login, helpers and automations"
    echo "   d) Docker Operations"
    echo "   f) File Operations            (via less)"
	echo "   g) Git shortcuts              (via less)"
	echo "   i) iTerm 2 Functions"
    echo "   n) Network shortcuts"
	echo "   p) Postgres shortcuts"
    echo "   s) Silliness - weather and stuff"
    echo "   q) Exit"
    echo " "
}
do_quit() {
    # NOTE: exit 0;; - would close the invoking shell
    exit
}
# read input from the keyboard and take a action
read_options(){
	local choice
	# read -p "Enter choice [ g, p, q ] " choice
    read -rsn1 -p"Select [ a, f, g, i, n, p, s, q ] " choice;echo
	case $choice in
        a) showawshelp ;;
        d) showdockerhelp ;;
        f) showfileopshelp ;;
		g) showgithelp ;;
        i) showit2help ;;
        n) shownetworkhelp ;;
		p) showpghelp ;;
        s) showsilliness ;;
		*) do_quit ;;
	esac
}
 
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
	show_menus
	read_options
done
