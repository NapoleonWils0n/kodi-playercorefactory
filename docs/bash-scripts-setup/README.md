# Bash scripts set up

#### add the $HOME/git/kodi-playercorefactory/bash-scripts directory to your bash path


edit your .bashrc in your home directory
im using vim to edit the file but you can use any text editor

	vim ~/.bashrc

add the code below to your ~/.bashrc
to add the $HOME/git/kodi-playercorefactory/bash-scripts directory to your bash path

the default file path is your home-directory/git/kodi-playercorefactory/bash-scripts
if you have downloaded the git repo to a different path then change the code below accordingly


# set PATH so it includes the kodi playercorefactory scripts
if [ -d "$HOME/git/kodi-playercorefactory/bash-scripts" ] ; then
    PATH="$HOME/git/kodi-playercorefactory/bash-scripts:$PATH"
fi


The scripts are already executable so you dont need to chomd +x the scripts

source your ~/.bashrc to pick up the scripts

	. ~/.bashrc

