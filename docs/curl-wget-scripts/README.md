## curl and wget scripts to record m3u8 videos with an xforward http header


copy the scripts to your ~/bin directory

make the scripts executable with chmod +x scriptname.sh

	chmod +x ~/bin/rip-m3u8-curl-xforward.sh


	chmod +x ~/bin/rip-m3u8-wget-xforward.sh


source you ~/.bashrc

	. ~/.bashrc


### usage

download the video url from kodi using the save as command by pressing y on the keyboard
while a video is playing to bring up the play using contextual menu

then select save url to save the url of the video to a text file on the desktop

then run the script and pass in the location of the text file to record the video

press control c in the terminal to quit the script


### Important note for curl and wget scripts

the curl and wget scripts must not be run in the background