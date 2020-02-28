# osx-shell-alias-fns
My osx bash aliases and functions

To load the configs on terminal init:
Copy the contents of .bashrc and .bash_profile into the respectively named files in your home dir `~/`.
Create new ones if the done exist.
```
chmod 700 ~/.bashrc
chmod 700 ~/.bash_profile
```

Copy the remaining files to `~/usrshell` (location can be changed by setting the export in `.bashrc`)
```
cd ~/usrshell #or if you changed it in .bashrc cd there
chmod 700 myaliases.sh
chmod 700 myfunctions.sh
chmod 700 myshell.sh
```

reload your terminal 
`source ~/.bashrc` - depending this may not be sufficient
