# Kodi playercorefactory.xml files and bash scripts

## players

ffmpeg
ffmpeg aac audio fix
ffmpeg x-forward http header
ffmpeg user agent referer http header

ffplay
ffplay x-forward http header
ffplay user agent referer http header

vlc

mpv

curl

wget


## usage

press y on the keyboard while a video is playing to bring up the play using contextual menu,
you can then choose from one the players in the playercorefactory.xml to play the video in an external player or record the video stream

### background recording from kodi


### foreground recording in the terminal


## download with git and symlink

download the kodi-playercorefactory repo with git


git clone url


symlink from one of the playercorefactory.xml in the git repo to where the playercorefactory.xml is

ln -s ~/git/kodi-playercorefactory/linux/combined/playercorefactory.xml ~/.kodi/userdata/playercorefactory.xml 


you should also be able to use an alias on mac osx and the windows equivilant

see below for location of the userdata folder for your operating system



## Kodi wiki Userdata directory

http://kodi.wiki/view/Userdata


### Location of the userdata folder

Operative system	File path
Android	Android/data/org.xbmc.kodi/files/.kodi/userdata/ (see note)
iOS	/private/var/mobile/Library/Preferences/Kodi/userdata/
Linux	~/.kodi/userdata/
Mac	/Users/<your_user_name>/Library/Application Support/Kodi/userdata/ (see note)
OpenELEC	/storage/.kodi/userdata/
Windows	Start - type %APPDATA%\kodi\userdata - press <Enter>



## Kodi wiki External players - playercorefactory.xml

http://kodi.wiki/view/External_players