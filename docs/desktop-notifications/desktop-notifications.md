# Desktop notifications

Desktop notifications when recording finishes

Install the desktop notification script for your operating system below

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

### mac osx terminal notifier

https://github.com/julienXX/terminal-notifier/releases

download the zip file and unzip it
then move the terminal-notifier.app into your /Applications folder

double click the terminal-notifier.app in your /Applications folder
you will get a pop up message do you want to open the application click ok


### ubuntu install libnotify-bin notify-osd

	sudo apt-get install libnotify-bin notify-osd


### arch linux install libnotify

	sudo pacman -S libnotify

### xfce desktop notifications

	sudo pacman -S xfce4-notifyd