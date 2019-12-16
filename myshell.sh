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
	less ./myhelp-git.txt
}
showfileopshelp() {
    less ./myhelp-fileops.txt
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
 
# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
	echo " T I L L M A N ' S  B A S H  C U S T O M I Z A T I O N S"
    echo "                 What are they again?"
    echo "                      Remind me!"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo " "
    echo "   f) File Operations            (via less)"
	echo "   g) Git shortcuts              (via less)"
    echo "   n) Network shortcuts"
	echo "   p) Postgres shortcuts"
	echo " "
    echo "   q) Exit"
    echo " "
}
# read input from the keyboard and take a action
read_options(){
	local choice
	# read -p "Enter choice [ g, p, q ] " choice
    read -rsn1 -p"Select [ f, g, n, p, q ] " choice;echo
	case $choice in
        f) showfileopshelp ;;
		g) showgithelp ;;
        n) shownetworkhelp ;;
		p) showpghelp ;;
		*) exit 0;;
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
