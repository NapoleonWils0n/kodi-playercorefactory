# rtmpdump install

## arch linux rtmpdump install

	sudo pacman -S rtmpdump

## ubuntu rtmpdump install

	sudo apt-get install rtmpdump

## mac osx rtmpdump install

install rtmpdump with homebrew


#### install xcode from the mac app store

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

## window rtmpdump

download rtmpdump

https://rtmpdump.mplayerhq.hu/

download the windows zip file

https://rtmpdump.mplayerhq.hu/download/rtmpdump-2.4-git-010913-windows.zip

unzip the file

### create a folder called rtmpdump and create another folder inside it called bin

so you should have this folder structure rtmpdump/bin

move rtmpdump.exe rtmpgw.exe rtmpsrv.exe rtmpsuck.exe into the rtmpdump/bin folder

move rtmpdump folder to your C drive, it should look like this

C:\rtmpdump\bin

with the executables inside the bin folder

### add rtmpdump to your windows system path


system properties, advanced system settings, enviormnental variables

system variables, path, edit

add the code below to the end of your windows path

;C:\rtmpdump\bin


your windows system path should look like this


;C:\cygwin\bin;C:\ffmpeg\bin;C:\Program Files\Git\cmd;C:%HOMEPATH%\git\kodi-playercorefactory\bash-scripts-windows;C:\curl\bin;C:\youtube-dl\bin;C:\windump\bin;C:\notify-send\bin;C:\aria2c\bin;C:\rtmpdump\bin





