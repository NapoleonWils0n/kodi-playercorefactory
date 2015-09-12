# Kodi playercorefactory.xml repo

A set of playercorefactory.xml files for kodi to play videos in an external player or record the video.
There is also a set of bash script to record the outside of kodi using the terminal

Files are part of this youtube tutorial 

kodi record any video by using ffmpeg, rtmpdump, vlc and mpv as external players

https://www.youtube.com/playlist?list=PL7hhhG5qUoXlpmIjqv2eEBukAeJSVNsdX

Youtube video showing you how to set up the kodi-playercorefactory repo

kodi playercorefactory.xml git repo - kodi recording videos 27

https://www.youtube.com/watch?v=It92vzpK9xo

### documentation

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/docs/bash-scripts-setup

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/docs/ffmpeg-install

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/docs/mac-osx-vlc

## usage

press y on the keyboard while a video is playing in kodi to bring up the play using contextual menu,
you can then choose from one the players in the playercorefactory.xml,
to play the video in an external player or record the video stream

You can also select a recording duration from the play using menu

### players

each ffmpeg player also has a recording duration for 30min, 1hr, 2hrs 

* ffmpeg  
* ffmpeg aac audio fix  
* ffmpeg x-forward http header  
* ffmpeg user agent referer http header
* ffplay  
* ffplay x-forward http header
* ffplay user agent referer http header
* vlc play 
* vlc record 
* vlc play and record
* mpv play 
* mpv record 
* mpv play and record
* curl download video 
* curl download video - useragent referer http header
* wget download video
* wget download video - useragent referer http header

### bash scripts 

each ffmpeg bash script also has a player with a recording duration for 30min, 1hr, 2hrs 
so you can specify how long to record the video for 

* ffmpeg   
* ffmpeg aac audio fix  
* ffmpeg x-forward http header  
* ffmpeg user agent referer http header  
* curl record m3u8 video stream  
* wget record m3u8 video stream  


### background recording from kodi

When you use one of the players to record a video from kodi by using the play using contextual menu the video is recorded in the background and does not open a terminal window

each ffmpeg player in the playercorefactory.xml file also has a player with a recording duration for 30min, 1hr, 2hrs

so you can specify how long to record the video for

eg:

* ffmpeg  
* ffmpeg 30mins  
* ffmpeg 1hrs  
* ffmpeg 2hrs  

if you dont specify a recording duration you have to manually find the process id of ffmpeg and kill it to stop recording

find the process id with ps aux | grep ffmpeg   

	ps aux | grep ffmpeg  

or by using pgrep ffmpeg  

	pgrep ffmpeg  

then kill the process, replace PID with the process id you got from ps aux or pgrep  

	kill PID  

### foreground recording in the terminal

Save the url of the video from kodi by press y on the keyboard while a video is playing in kodi to bring up the play using contextual menu, then selecting the save url option which will echo the url into a text file on your desktop

You can then use one of the bash scripts and pass in the location of the text file with the url of video,
as an argument to script and it will download the video in a terminal window in the foreground


#### download the kodi-playercorefactory repo with git

create a git directory in your home

	mkdir -p ~/git

	cd ~/git

	git clone https://github.com/NapoleonWils0n/kodi-playercorefactory.git

symlink from one of the playercorefactory.xml in the git repo to where the playercorefactory.xml is

	ln -s ~/git/kodi-playercorefactory/linux/combined/playercorefactory.xml ~/.kodi/userdata/playercorefactory.xml 

you should also be able to use an alias on mac osx and the windows equivilant

see below for location of the userdata folder for your operating system


### Location of the userdata folder

Operative system	File path  
Android	Android/data/org.xbmc.kodi/files/.kodi/userdata/ (see note)  
iOS	/private/var/mobile/Library/Preferences/Kodi/userdata/  
Linux	~/.kodi/userdata/  
Mac	/Users/<your_user_name>/Library/Application Support/Kodi/userdata/ (see note)  
OpenELEC	/storage/.kodi/userdata/  
Windows	Start - type %APPDATA%\kodi\userdata - press <Enter>  

### Kodi wiki Userdata directory

http://kodi.wiki/view/Userdata


#### Kodi wiki External players - playercorefactory.xml

http://kodi.wiki/view/External_players

