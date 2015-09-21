# Mac osx set up

### download the ffmpeg ffplay binaries

https://evermeet.cx/ffmpeg/
 
The files are in 7zip files 
so you need to download and install kekaosxto open the 7 zip files
 
### download kekaosx 

http://www.kekaosx.com/en/

###  download the kodi-playercorefactory repo with git

create a git directory in your home, cd into the git directory
then clone the git repository


	mkdir -p ~/git

	cd ~/git

	git clone https://github.com/NapoleonWils0n/kodi-playercorefactory.git


### create the symlink to the playercorefactory.xml

	ln -s ~/git/kodi-playercorefactory/macosx/playercorefactory.xml \
	~/Library/Application Support/Kodi/userdata/playercorefactory.xml


### add the scripts to your bash path

move the bash_profile in this directory to ~/.bash_profile

mv bash_profile ~/.bash_profile

	if [ -d "$HOME/git/kodi-playercorefactory/bash-scripts" ] ; then
	        PATH="$HOME/git/kodi-playercorefactory/bash-scripts:$PATH"
	fi


Source your ~/.bash_profile

	. ~/.bash_profile


Mac osx vlc script

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/docs/mac-osx-vlc
