# osx-shell-alias-fns

# OBSOLETE  
## The contents of this repo is being replaced:  
### 1. zsh instead of bash  
### 2. improved and more consistent organization and namings  
  
My osx bash aliases and functions. 
I've recreated variants of this so many times I decided to stuff the current variant here

Includes a help menu to find forgotten functions or aliases 
works well, but parts are rough (git and file ops use less to display). 
```
$ myshell
...
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 T I L L M A N ' S  B A S H  C U S T O M I Z A T I O N S
                 What are they again?
                      Remind me!
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
   a) AWS - cli login, helpers and automations
   d) Docker Operations
   f) File Operations            (via less)
   g) Git shortcuts              (via less)
   i) iTerm 2 Functions
   n) Network shortcuts
   p) Postgres shortcuts
   s) Silliness - weather and stuff
   q) Exit
 
Select [ a, f, g, i, n, p, s, q ] 
```
  
Tapping the `i` key and ...  
  
```
========================================================
                     iTerm2 Functions
========================================================
   iterm_tab       set Tab's title
                      - append Title arg as quoted str-

   iterm_window    set Window's title
                      - append Title arg as quoted str-

   iterm_both      reset to Window's title tracks Tab's
                   - no argument

Press any key to continue
```
Or instead, tapping the S key...
```
============================================================
                     Silly Stuff
============================================================
  Weather          For graph view append -g (cities only)
                        e.g. wtr-sj-g
                   ---------------------------------------
   wtr-sj          Weather forecast for San Jose, CA
 
   wtr-pa          Weather forecast for Palo Alto, CA
 
   wtr-bos         Weather forecast for Boston, MA
 
   wtr-moon        Phase of the moon
 
   cheat           Cheat Sheet
 
   dict [words]    Lookup word definition
                       e.g. dict run  
                       e.g. dict 'command line'  
 
Press any key to continue
```

## To Install
To load the configs on terminal init:
Copy the contents of .bashrc and .bash_profile into the respectively named files in your home dir `~/`.  
Create new files as needed.  
```
chmod 700 ~/.bashrc
chmod 700 ~/.bash_profile
```
  
Copy the remaining files to `~/usrshell` (location can be changed by setting the export in `.bashrc`). 
```
cd ~/usrshell #or if you changed it in .bashrc cd there
chmod 700 myaliases.sh
chmod 700 myfunctions.sh
chmod 700 myshell.sh
```
  
reload your terminal   
`source ~/.bashrc` - depending on your configuration this may not be sufficient. 
  
## To Use. 
Enter function or alias from shell directly. 
Or enter `myshell` for menu driven help to find the function or alias you want. 
