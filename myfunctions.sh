## ============ postgres ============
function pgstart() { pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start; }
function pgstop() { pg_ctl -D /usr/local/var/postgres stop -s -m fast; }
function pgstatus() { pg_ctl  -D /usr/local/var/postgres status; }

## =========== shell help ==========
## create a directory then cd into it
function mkcd() { mkdir "$1" && cd "$1"; } 

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function gtlgf() { git log --all --grep="$1"; }

# ----------------------
# Docker Functions
# ----------------------
# Prune everything - should add confirmation
function dkrpga() { docker system prune --all; }
function dkrcls() { docker container ls;}
function dkrcis() { docker image ls; }
function dkcbsh() { docker-compose exec "$1" bash; }

# ----------------------
# iTerm2 Functions
# ----------------------
# Setup tab and window title functions for iterm2
# iterm behaviour: until window name is explicitly set, it'll always track tab title.
# So, to have different window and tab titles, iterm_window() must be called
# first. iterm_both() resets this behaviour and has window track tab title again).
# Source: http://superuser.com/a/344397
set_iterm_name() {
  mode=$1; shift
  echo -ne "\033]$mode;$@\007"
}
iterm_both () { set_iterm_name 0 $@; }
iterm_tab () { set_iterm_name 1 $@; }
iterm_window () { set_iterm_name 2 $@; }



