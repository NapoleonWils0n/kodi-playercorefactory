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

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/docs

### windows set up

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/windows

### mac osx set up

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/macosx

### linux set up

### Step 1 - installing software

#### arch linux install git, ffmpeg, libfdk-aac, rtmpdump, vlc, mpv, youtube-dl, aria2c

```
sudo pacman -S git ffmpeg libfdk-aac rtmpdump vlc mpv youtube-dl aria2c
```

#### ubuntu install git, ffmpeg, fdk-aac-dev, rtmpdump, vlc, mpv, youtube-dl, aria2

```
sudo apt install -y git ffmpeg fdk-aac-dev rtmpdump vlc mpv youtube-dl aria2
```

#### ubuntu mate install git, ffmpeg, fdkaac, rtmpdump, vlc, mpv, youtube-dl, aria2

```
sudo apt install -y git ffmpeg fdkaac rtmpdump vlc mpv youtube-dl aria2
```


#### debian install git, ffmpeg, libfdk-aac-dev, rtmpdump, vlc, mpv, youtube-dl, aria2

```
sudo apt install -y git-core ffmpeg libfdk-aac-dev rtmpdump vlc mpv youtube-dl aria2
```

note you need to enable backports, or be using the testing or unstable debian branches to install ffmpeg

#### linux mint 17 install git, ffmpeg, libfdk-aac-dev, rtmpdump, vlc, mpv, youtube-dl, aria2

linux mint 17 doesnt have ffmpeg in the main software repository so you have to add it via a ppa

* linux mint 17 add ffmpeg ppa

```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:mc3man/trusty-media
sudo apt-get update
```
* install ffmpeg and all the other packages

```
sudo apt install -y git ffmpeg libfdk-aac-dev rtmpdump vlc mpv youtube-dl aria2
```

#### Step 2 - download the kodi-playercorefactory repo with git

create a git directory in your home

```
mkdir -p ~/git
```

```
cd ~/git
```

```
git clone https://github.com/NapoleonWils0n/kodi-playercorefactory.git
```

#### Step 3 -  copy the playercorefactory.xml file to your kodi userdata folder


```
cp  ~/git/kodi-playercorefactory/linux/combined/playercorefactory.xml ~/.kodi/userdata/playercorefactory.xml 
```

or you can manually copy the playercorefactory.xml file to your kodi userdata directory
see list below for the location of the kodi userdata directory on your operating system

to update the repository change directory to the kodi-playercorefactory  

```
cd ~/git/kodi-playercorefactory
```

then run the git pull command to pull down the latest changes from github

```
git pull
```

#### Step 4 - bash scripts set up

add the $HOME/git/kodi-playercorefactory/bash-scripts directory to your bash path

* linux mint doesnt come with a ~/.bashrc file so you need to create it
* you can use gedit and create a file called .bashrc and save it your home folder
* or you can create the bashrc on the command line

edit your .bashrc in your home directory
im using vim to edit the file but you can use any text editor

```
vim ~/.bashrc
```

if you dont have a ~/.bashrc file you can create it by running the following command

```
touch ~/.bashrc
```

add the code below to your ~/.bashrc
to add the $HOME/git/kodi-playercorefactory/bash-scripts directory to your bash path

the default file path is your home-directory/git/kodi-playercorefactory/bash-scripts
if you have downloaded the git repo to a different path then change the code below accordingly


set PATH so it includes the kodi playercorefactory scripts

```
if [ -d "$HOME/git/kodi-playercorefactory/bash-scripts" ] ; then
 		PATH="$HOME/git/kodi-playercorefactory/bash-scripts:$PATH"
fi
```

The scripts are already executable so you dont need to chomd +x the scripts

source your ~/.bashrc to pick up the scripts

```
. ~/.bashrc
```

see below for location of the userdata folder for your operating system

### Important note for curl and wget scripts

the curl and wget scripts must not be run in the background

### Location of the userdata folder

Operative system	File path  
Android	Android/data/org.xbmc.kodi/files/.kodi/userdata/ (see note)  
iOS	/private/var/mobile/Library/Preferences/Kodi/userdata/  
Linux	~/.kodi/userdata/  
Mac	/Users/<your_user_name>/Library/Application Support/Kodi/userdata/ (see note)  
OpenELEC	/storage/.kodi/userdata/  
Windows	Start - type %APPDATA%\kodi\userdata - press <Enter>  

## usage

You can press c on the keyboard on a video link to bring up the play using menu and then select a player 
and begin recording

On some video links you need to open the video first and then press y on the keyboard 
to bring up the play using menu and then select a player and begin recording

press y on the keyboard while a video is playing in kodi to bring up the play using contextual menu,
you can then choose from one the players in the playercorefactory.xml,
to play the video in an external player or record the video stream

You can also select a recording duration from the play using menu

### bash scripts 

The rip-record bash script can also set a duration for the recording using the ffmpeg time option -t 00:00:00  
Using the hours minutes seconds syntax  

rip-record textfile.txt -t 00:00:00

### background recording from kodi

When you use one of the players to record a video from kodi by using the play using contextual menu the video is recorded in the background and does not open a terminal window

each ffmpeg player in the playercorefactory.xml file also has a player with a recording duration for 30min, 1hr, 2hrs

so you can specify how long to record the video for

eg:

* 30mins  
* 1hrs  
* 2hrs  

if you dont specify a recording duration you have to manually find the process id of ffmpeg and kill it to stop recording

find the process id with ps aux | grep ffmpeg   

```
ps aux | grep ffmpeg  
```

or by using pgrep ffmpeg  

```
pgrep ffmpeg  
```

then kill the process, replace PID with the process id you got from ps aux or pgrep  

```
kill PID  
```

or use pkill or kill the ffmpeg process

```
pkill ffmpeg
```

### foreground recording in the terminal

Save the url of the video from kodi by press y on the keyboard while a video is playing in kodi to bring up the play using contextual menu, then selecting the save url option which will echo the url into a text file on your desktop

You can then use one of the bash scripts and pass in the location of the text file with the url of video,
as an argument to script and it will download the video in a terminal window in the foreground

### Kodi wiki Userdata directory

http://kodi.wiki/view/Userdata


#### Kodi wiki External players - playercorefactory.xml

http://kodi.wiki/view/External_players

