# Kodi playercorefactory.xml files and bash scripts

## players

ffmpeg
ffmpeg aac audio fix
ffmpeg x-forward http header
ffmpeg user agent referer http header

each ffmpeg player also has a recording duration for 30min, 1hr, 2hrs

ffplay
ffplay x-forward http header
ffplay user agent referer http header

vlc play
vlc record
vlc play and record

mpv play
mpv record
mpv play and record

curl download video
curl download video - useragent referer http header

wget download video
wget download video - useragent referer http header

## bash scripts

ffmpeg
ffmpeg aac audio fix
ffmpeg x-forward http header
ffmpeg user agent referer http header

each ffmpeg player also has a recording duration for 30min, 1hr, 2hrs


curl record m3u8 video

wget record m3u8 video

## usage

press y on the keyboard while a video is playing in kodi to bring up the play using contextual menu,
you can then choose from one the players in the playercorefactory.xml,
to play the video in an external player or record the video stream

You can also select a recording duration from the play using menu

### background recording from kodi


ps aux | grep ffmpeg

pgrep ffmpeg

kill PID

### foreground recording in the terminal

Save the url of the video from kodi by press y on the keyboard while a video is playing in kodi to bring up the play using contextual menu, then selecting the save url option which will echo the url into a text file on your desktop

You can then use one of the bash scripts and pass in the location of the text file with the url of video,
as an argument to script and it will download the video in a terminal window in the foreground


## download the kodi-playercorefactory repo with git

create a git directory in your home

mkdir -p ~/git

cd ~/git

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

