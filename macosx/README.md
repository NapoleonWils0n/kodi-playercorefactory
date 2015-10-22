# Mac osx set up

youtube video outline the set up

https://www.youtube.com/watch?v=nULCurjynVU

### download the ffmpeg ffplay ffprobe binaries

https://evermeet.cx/ffmpeg/
 
The files are in 7zip files 
so you need to download and install kekaosxto open the 7 zip files
 
### download kekaosx 

http://www.kekaosx.com/en/


open kekaosx from the application folder and click ok for dialog asking if you want to open it

then double click the .7zip and they will unzip

### next you need to copy ffmpeg ffplay and ffprobe to /usr/local

In the new version of Mac osx El Capitan you cant modify the system, 
so have to put the binaries in /usr/local
 

open the terminal and cd to your downloads folder

	cd ~/Downloads

switch to root and copy ffmpeg and ffplay to /usr/local

	sudo cp ffplay ffmpeg probe /usr/local

enter your admin password at the prompt


###  download the kodi-playercorefactory repo with git

create a git directory in your home, cd into the git directory
then clone the git repository


	mkdir -p ~/git

	cd ~/git

	git clone https://github.com/NapoleonWils0n/kodi-playercorefactory.git


### copy the playercorefactory.xml to your kodi userdata directory

In the Finder select the go menu and hold down alt, 
you should see the Library appear, select the Libray to open it in the Finder

Copy the playercorefactory.xml to the location below
	
	~/Library/Application Support/Kodi/userdata/playercorefactory.xml


### add the scripts to your bash path

move the bash_profile in this directory to ~/.bash_profile

mv bash_profile ~/.bash_profile

	if [ -d "$HOME/git/kodi-playercorefactory/bash-scripts-macosx" ] ; then
	        PATH="$HOME/git/kodi-playercorefactory/bash-scripts-macosx:$PATH"
	fi


Source your ~/.bash_profile

	. ~/.bash_profile


Mac osx vlc script

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/docs/mac-osx-vlc
