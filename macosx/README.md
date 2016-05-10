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


#### install ffmpeg ffplay and ffprobe 

create a folder called bin in your home folder, /Users/your-username/bin

	mkdir -p ~/bin

copy the ffmpeg, ffprobe and ffplay in to the bin folder

if you have ffmpeg installed to another location create a symbolic link to $HOME/bin/ffmpeg
the same applies to ffplay and ffprobe

then edit your ~/.bash_profile, for example with nano

nano ~/.bash_profile

and add the code below to your ~/.bash_profile, 
which will add any binaries in ~/bin to your bash path


	if [ -d "$HOME/bin" ] ; then
	        PATH="$HOME/bin:$PATH"
	fi

 
Then source your ~/.bash_profile

	. ~/.bash_profile


## mac osx rtmpdump install

install rtmpdump with homebrew

#### install xcode command line tools

open a terminal and type

	xcode-select --install

### home brew install

open a terminal and paste in the code below

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

check brew install

	brew doctor

install rtmpdump

	brew install rtmpdump

install wget

	brew install wget 

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


## Important note

You need to install ffmpeg, ffplay, ffprobe, wget and rtmpdump to the following locations

$HOME/bin/ffmpeg

$HOME/bin/ffplay

$HOME/bin/ffprobe

/usr/local/bin/wget
 
/usr/local/bin/rtmpdump

If they are installed in a different location create a symbolic link to the location specified above

symbolic link syntax

	ln -s /path/to/source /path/to/destination

for example to create a symbolic link for ffmpeg from /usr/local/bin/ffmpeg to $HOME/bin/ffmpeg

	ln -s /usr/local/bin/ffmpeg ~/bin/ffmpeg


We have to specify the exact location of the binaries in the scripts to get them to work in El Capitan

## mpv install

Download the 64bit build from mpv.io and install to your Applications folder

https://mpv.io/installation/

latest build, works on El Capitan

http://sva.wakku.to/~chris/mpv_builds/mpv_latest.zip

## vlc install

Download vlc from videolan.org and install to your Applications folder

https://www.videolan.org/vlc/download-macosx.html

### Read the ssh client and server set up

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/docs/ssh

