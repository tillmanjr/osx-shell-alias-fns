# The convention for resource configuarion of bash at terminal init
#     is to use ~/bashrc
# macOs's uses ~/.bash_profile instead of ~/.bashrc
#     following macOS's convention is fine for terminal but tends
#     to break other terminals
# This fixes that issue
if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

# NOTE: be sure to chmod 700 this file 
