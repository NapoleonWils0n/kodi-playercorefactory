# Enabling the at command on Mac OSX

## El Capitan

### Create a LaunchDaemon directory 

Create a LaunchDaemon directory in your home Library

* run the following command in the terminal to create the LaunchDaemons directory

```
mkdir -p ~/Library/LaunchDaemons
```

Show the Library directory in the Finder by clicking on the Go menu in the Finder,  
and then pressing alt will show the Library in the drop down menu

Select the Library to open a Finder window with the Library directory now visible

You can also create the ~/Library/LaunchDaemons folder in the Finder

### Copying LaunchDaemons directory from this git repo

* Option 1 - copy LaunchDaemons from this git repo

Copy the LaunchDaemons directory from the github repo into your home Library  
the path is kodi-playercorefactory/docs/schedule-recordings/LaunchDaemons

run the following command to copy the LaunchDaemons directory from the git repo to your home Library

```
cp -r ~/git/kodi-playercorefactory/docs/schedule-recordings/LaunchDaemons ~/Library
```

Or you can manually copy the directory to your ~/Library

#### Fixing the file permissions on the plist file

The plist file needs to have the file permissions changed to user root and group wheel,
and also needs to have owner write permissions removed

* Check the file permissions on the ~/Library/LaunchDaemons/com.apple.atrun.plist file

```
ls -l ~/Library/LaunchDaemons/com.apple.atrun.plist
```

Replace username with your username in the following commands

* Change owner to root for the com.apple.atrun.plist file

```
sudo chown root /Users/username/Library/LaunchDaemons/com.apple.atrun.plist 
```

* Change group to wheel for the com.apple.atrun.plist file

```
sudo chgrp wheel /Users/username/Library/LaunchDaemons/com.apple.atrun.plist 
```

* Remove owner write permissions on the com.apple.atrun.plist file

```
sudo chmod o-w /Users/username/Library/LaunchDaemons/com.apple.atrun.plist 
```

##### Load the new at command plist

Run the following command to load the new at command plist

* Replace username with your username

```
sudo launchctl load -F /Users/username/Library/LaunchDaemons/com.apple.atrun.plist
```

### Copying existing LaunchDaemons directory 

* Option 2 - copy existing LaunchDaemons and edit the file

Copy the existing com.apple.atrun.plist to ~/Library/LaunchDaemons 

```
cp /System/Library/LaunchDaemons/com.apple.atrun.plist ~/Library/LaunchDaemons
```

Edit the ~/Library/LaunchDaemons/com.apple.atrun.plist file using your text editor

* We need to change the the word Disabled 

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.apple.atrun</string>
    <key>ProgramArguments</key>
    <array>
	    <string>/usr/libexec/atrun</string>
    </array>
    <key>StartInterval</key>
    <integer>30</integer>
    <key>Disabled</key>
    <true/>
</dict>
</plist>
```

* to Enabled

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.apple.atrun</string>
    <key>ProgramArguments</key>
    <array>
	    <string>/usr/libexec/atrun</string>
    </array>
    <key>StartInterval</key>
    <integer>30</integer>
    <key>Enabled</key>
    <true/>
</dict>
</plist>
```

#### Fixing the file permissions on the plist file

The plist file needs to have the file permissions changed to user root and group wheel,
and also needs to have owner write permissions removed

* Check the file permissions on the ~/Library/LaunchDaemons/com.apple.atrun.plist file

```
ls -l ~/Library/LaunchDaemons/com.apple.atrun.plist
```

Replace username with your username in the following commands

* Change owner to root for the com.apple.atrun.plist file

```
sudo chown root /Users/username/Library/LaunchDaemons/com.apple.atrun.plist 
```

* Change group to wheel for the com.apple.atrun.plist file

```
sudo chgrp wheel /Users/username/Library/LaunchDaemons/com.apple.atrun.plist 
```

* Remove owner write permissions on the com.apple.atrun.plist file

```
sudo chmod o-w /Users/username/Library/LaunchDaemons/com.apple.atrun.plist 
```

##### Load the new at command plist

Run the following command to load the new at command plist

* Replace username with your username

```
sudo launchctl load -F /Users/username/Library/LaunchDaemons/com.apple.atrun.plist
```

## Pre El Capitan Macs

* Unload the current /System/Library/LaunchDaemons/com.apple.atrun.plist by copying/pasting/typing into terminal:

```
sudo launchctl unload -F /System/Library/LaunchDaemons/com.apple.atrun.plist
```

Create a LaunchDaemon directory in your home Library

* run the following command in the terminal to create the LaunchDaemons directory

```
mkdir -p ~/Library/LaunchDaemons
```

Show the Library directory in the Finder by clicking on the Go menu in the Finder,  
and then pressing alt will show the Library in the drop down menu

Select the Library to open a Finder window with the Library directory now visible

You can also create the ~/Library/LaunchDaemons folder in the Finder

* Copy the existing com.apple.atrun.plist to ~/Library/LaunchDaemons 

```
cp /System/Library/LaunchDaemons/com.apple.atrun.plist ~/Library/LaunchDaemons
```

* Edit the ~/Library/LaunchDaemons/com.apple.atrun.plist file 

(open in text editor and change "true" word to "false", then save).


#### Fixing the file permissions on the plist file

The plist file needs to have the file permissions changed to user root and group wheel,
and also needs to have owner write permissions removed

* Check the file permissions on the ~/Library/LaunchDaemons/com.apple.atrun.plist file

```
ls -l ~/Library/LaunchDaemons/com.apple.atrun.plist
```

Replace username with your username in the following commands

* Change owner to root for the com.apple.atrun.plist file

```
sudo chown root /Users/username/Library/LaunchDaemons/com.apple.atrun.plist 
```

* Change group to wheel for the com.apple.atrun.plist file

```
sudo chgrp wheel /Users/username/Library/LaunchDaemons/com.apple.atrun.plist 
```

* Remove owner write permissions on the com.apple.atrun.plist file

```
sudo chmod o-w /Users/username/Library/LaunchDaemons/com.apple.atrun.plist 
```

##### Load the new at command plist

Run the following command to load the new at command plist

* Replace username with your username

```
sudo launchctl load -F /Users/username/Library/LaunchDaemons/com.apple.atrun.plist
```

### at command syntax

With the above done, now it's really just a question of calling "at" commands in terminal 

In terminal type and pay attention to the keys being written in [] (you won't get any feedback after each line until you press CTRL+D after 2nd line):

```
at now+1 [return] 
rip-record /Users/macbookpro/Desktop/test.txt -t 00:05:00 [return]
[CTRL+D] 
```

This will then get added to queue succesfully. Note you can't have "at now + 1" as it'll get rejected by Mac. Also obviously replace /Users/macbookpro/Desktop/test.txt with you own. The 00:05:00 bit means it's a 5 minute file and +1 means it will start to record 1 minute after being placed in queue.

Another couple of examples just to make clear the commands further:

```
at 01:00PM [return]
rip-record /Users/macbookpro/Desktop/test.txt -t 00:00:30 [return]
[CTRL+D] 
```

```
at 01:16PM 4/1/2016 [return]
rip-record /Users/macbookpro/Desktop/test.txt -t 01:00:00 [return]
[CTRL+D] 
```

Again - the spacing with 01:00PM is vital.. you can't have 01:00 PM and you can't have 13:00PM either. It's not liked. 00:00:30 is just a 30 sec clip. 01:00:00 is just a 1 hour vid. For setting up by date... note that it is US style with the month coming first and the day coming second. I couldn't get UK style (day/month/year) to work.

The rest of the commands are the same (i.e. atq and atrm). 
