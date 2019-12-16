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
