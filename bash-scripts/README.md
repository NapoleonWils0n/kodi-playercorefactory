# kodi bash scripts 

bash scripts set up

https://github.com/NapoleonWils0n/kodi-playercorefactory/tree/master/docs/bash-scripts-setup

each ffmpeg bash script also has a player with a recording duration for 30min, 1hr, 2hrs 
so you can specify how long to record the video for 

list of scripts

* ffmpeg   
* ffmpeg aac audio fix  
* ffmpeg x-forward http header  
* ffmpeg user agent referer http header  
* curl record m3u8 video stream  
* wget record m3u8 video stream  

### foreground recording in the terminal

Save the url of the video from kodi by press y on the keyboard while a video is playing in kodi to bring up the play using contextual menu, then selecting the save url option which will echo the url into a text file on your desktop

You can then use one of the bash scripts and pass in the location of the text file with the url of video,
as an argument to script and it will download the video in a terminal window in the foreground

### Important note for curl and wget scripts

the curl and wget scripts must not be run in the background