# Windows set up


Youtube video

https://www.youtube.com/watch?v=syiIx8y__PY


Note you need to use the bash-scripts-windows with cygwin


## 7zip

http://www.7-zip.org/


## ffmpeg

download

http://ffmpeg.zeranoe.com/builds/


unzip the ffmpeg.7zip file

rename the folder to ffmpeg

copy the ffmpeg to C:\

C:\ffmpeg\bin


you can run the ff-prompt script to set up ffmpeg with the windows cmd path

or you can manually add it

### Install curl

download curl

http://curl.haxx.se/download.html#Win64

unzip the download 

and rename the folder to curl

then copy the curl folder to your C drive

the path to curl should look like this

C:\curl\bin\curl

you need to add curl to your windows path, see below


### cygwin


https://cygwin.com/install.html

### rtmpdump

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


### vlc install

download and install vlc and accept the default install location.

edit your windows system path and add the code below to the end of your system path

;C:\Program Files (x86)\VideoLAN\VLC\


### mpv install

mpv site

https://mpv.io/installation/

mpv windows download

https://mpv.srsfckn.biz/

This script sets up file associations for mpv on Windows.

https://github.com/rossy/mpv-install/blob/master/README.md

Make sure you have the latest build of mpv. Official builds here: https://mpv.srsfckn.biz/
Download the zip: https://github.com/rossy/mpv-install/archive/master.zip
Copy the .bat files and the .ico to the same directory as mpv.exe
Run mpv-install.bat as administrator. Note: For an unattended install, use the /u switch.
Use the Default Programs and AutoPlay control panels to make mpv the default player

To play content from various media streaming sites, 
place youtube-dl.exe in the same directory as mpv.

### add mpv to your windows system path

;C:\Program Files (x86)\mpv\

#### youtube-dl

Download the youtube-dl exe here

https://rg3.github.io/youtube-dl/download.html

create a folder called youtube-dl and then inside it create a folder called bin

like this

youtube-dl/bin

copy the youtube-dl exe into youtube-dl\bin

then move the youtube-dl folder to your C drive

The file path should look like this

C:\youtube-dl\bin\youtube-dl

You also need to copy youtube-dl to C:\Program Files (x86)\mpv as well

#### Set up your windows path

system properties, advanced system settings, enviormnental variables

system variables, path, edit

add the code below to your windows path

### add rtmpdump to your windows system path

system properties, advanced system settings, enviormnental variables

system variables, path, edit

add the code below to the end of your windows path

;C:\rtmpdump\bin

cygwin can install into either C:\cygwin\bin or C:\cygwin\bin

your windows system path should look like this with C:\cygwin\bin

;C:\cygwin\bin;C:\ffmpeg\bin;C:\Program Files\Git\cmd;C:%HOMEPATH%\git\kodi-playercorefactory\bash-scripts-windows;C:\curl\bin;C:\youtube-dl\bin;C:\windump\bin;C:\notify-send\bin;C:\aria2c\bin;C:\rtmpdump\bin;C:\Program Files (x86)\VideoLAN\VLC\;C:\Program Files (x86)\mpv\

your windows system path should look like this with C:\cygwin64\bin

;C:\cygwin64\bin;C:\ffmpeg\bin;C:\Program Files\Git\cmd;C:%HOMEPATH%\git\kodi-playercorefactory\bash-scripts-windows;C:\curl\bin;C:\youtube-dl\bin;C:\windump\bin;C:\notify-send\bin;C:\aria2c\bin;C:\rtmpdump\bin;C:\Program Files (x86)\VideoLAN\VLC\;C:\Program Files (x86)\mpv\

cygwin should install sed and grep which are needed for the scripts

you can double click the cygwin setup exe and re run the installer,
which open a windows where you can search for sed and grep,
and install them if cygwin doesnt install them automatically for you

## wget install

install wget with cygwin

## git install

https://git-scm.com/download/win


### Adjusting your Path

select 2nd option for path not git bash shell

Use Git from the Windows Command Prompt


### Configuring the line endings

select the 2nd option

Checkout as--is, commit Unix-style line endings


Very important you must use Checkout as--is, commit Unix-style line endings
or the scripts wont work


### download the kodi-playercorefactory git repository

create a folder called git in your home 

open the cmd prompt and change into the git repo

	cd git


then clone the kodi-playercorefactory git repository

	git clone https://github.com/NapoleonWils0n/kodi-playercorefactory.git


copy the kodi-playercorefactory\windows\playercorefactory.xml to your kodi userdata folder
see below

open your Windows Start menu and type

	%APPDATA%\kodi\userdata

then press <Enter> to open the folder, 
pin the folder to your file manager sidebar so you find it easily

then copy the kodi-playercorefactory\windows\playercorefactory.xml to your kodi userdata folder


## vlc

https://www.videolan.org/vlc/index.html


### windows notify-send

Notify-send for Windows site

http://vaskovsky.net/notify-send/

Notify-send for Windows download link

http://vaskovsky.net/notify-send/notify-send.zip

#### unzip the notify-send.zip

create a folder called notify-send,
and then create a folder inside notify-send called bin

then copy the notify-send script into the bin folder

the folder structure should look like this notify-send\bin\notify-send

copy the notify-send folder to your C drive

the path should look like this

C:\notify-send\bin\notify-send

#### add notify-send to windows system path

system properties, advanced system settings, enviormnental variables

system variables, path, edit

add the code below to the end of your windows system path

;C:\notify-send\bin


### windows install aria2c

download the zip file

64 bit

https://github.com/tatsuhiro-t/aria2/releases/download/release-1.19.2/aria2-1.19.2-win-64bit-build1.zip

32 bit

https://github.com/tatsuhiro-t/aria2/releases/download/release-1.19.2/aria2-1.19.2-win-32bit-build1.zip

#### unzip the file

create a folder called aria2c,
and then create a folder inside aria2c called bin

then copy the aria2c script into the bin folder

the folder structure should look like this aria2c\bin\aria2c

copy the aria2c folder to your C drive

the path should look like this

C:\aria2c\bin\aria2c

#### add aria2c to windows system path

system properties, advanced system settings, enviormnental variables

system variables, path, edit

add the code below to the end of your windows system path

;C:\aria2c\bin

### Read the ssh client and server set up

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/docs/ssh
