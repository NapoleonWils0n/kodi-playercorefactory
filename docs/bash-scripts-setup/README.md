# Bash scripts set up

#### We need to create a bin directory in your home for the bash scripts

edit your .bashrc in your home directory
im using vim to edit the file but you can use any text editor

	vim ~/.bashrc

add the code below to your ~/.bashrc
to add the ~/bin directory to your bash path

	# set PATH so it includes user's private bin if it exists
	if [ -d "$HOME/bin" ] ; then
	    PATH="$HOME/bin:$PATH"
	fi

create the bin directory in your home

	mkdir -p ~/bin

copy the bash-scripts to the bin directory

change directory to the bin directory in your home

	cd ~/bin

make all the bash scripts executable

	find . -type f -exec chmod +x {} \;

source your ~/.bashrc to pick up the scripts

	. ~/.bashrc

