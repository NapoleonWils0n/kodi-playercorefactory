# Enabling the at command on Mac OSX

by sirprancelot

1) Edit the /System/Library/LaunchDaemons/com.apple.atrun.plist file (open in text editor and change "true" word to "false", then save).

2) Unload the current /System/Library/LaunchDaemons/com.apple.atrun.plist by copying/pasting/typing into terminal:

```
sudo launchctl unload -F /System/Library/LaunchDaemons/com.apple.atrun.plist
```

3) Then load the edited version by copying/pasting/typing into terminal

```
sudo launchctl load -F /System/Library/LaunchDaemons/com.apple.atrun.plist
```

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
