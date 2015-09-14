# schedule recordings with the at command

Save the url of the video from kodi by press y on the keyboard while a video is playing in kodi to bring up the play using contextual menu. 
Then select the save url option which will echo the url into a text file on your Documents/schedule

Create a directory called schedule for example in your ~/Documents directory 
which we will use to store text files with urls to record from

	mkdir -p ~/Documents/schedule

## install at to schedule recordings

### arch linux install at

	sudo pacman -S at


start the atd daemon before using at

	sudo systemctl start atd


### ubuntu install at

	sudo apt-get install at


start the atd daemon before using at


	sudo service atd start


### schedule a record using at

type at followed by the time to run the command  
after you press enter you will be placed into the at prompt  

type the name of the recording script and the path to the text file with the url from kodi, Use ^d to exit from at prompt.


	at now + 1 min
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


To record a stream at 15:00 PM Saturday for 3 hours

	at 15:00 PM Sat
	rip-ffmpeg-xforward-3hrs.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.

### Dont use the wget and scripts with at

Dont run either rip-m3u8-curl-xforward.sh rip-m3u8-wget-xforward.sh in the background with at  
They must only be run in the foreground in a terminal windows to you can ctrl c to kill them


#### List the scheduled jobs using atq

	atq


#### Remove scheduled job using atrm

You can remove any at job using atrm using there job id.

	atrm 3

#### Check the content of scheduled at job

	at -c 4


In above example 4 is the job id.

#### Examples of at Command:


#### Example 1: Schedule task at comming 10:00 AM.

	at 10:00 AM
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


#### Example 2: Schedule task at 10:00 AM on comming Sunday.

	at 10:00 AM Sun
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


#### Example 3: Schedule task at 10:00 AM on comming 25’th July.

	at 10:00 AM July 25
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


#### Example 4: Schedule task at 10:00 AM on comming 22’nd June 2015.

	at 10:00 AM 6/22/2015
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.

	at 10:00 AM 6.22.2015
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


#### Example 5: Schedule task at 10:00 AM on same date at next month.

	at 10:00 AM next month
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


#### Example 6: Schedule task at 10:00 AM tomorrow.

	at 10:00 AM tomorrow
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


#### Example 7: Schedule task at 10:00 AM tomorrow.

	at 10:00 AM tomorrow
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


#### Example 8: Schedule task to execute just after 1 hour.

	at now + 1 hour
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


#### Example 9: Schedule task to execute just after 30 minutes.

	at now + 30 minutes
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


#### Example 10: Schedule task to execute just after 1 and 2 weeks.

	at now + 1 week
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.

	at now + 2 weeks
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.


#### Example 11: Schedule task to execute just after 1 and 2 years.

	at now + 1 year
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.

	at now + 2 years
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt.

#### Example 12: Schedule task to execute at midnight.

	at midnight
	rip-ffmpeg-xforward.sh ~/Documents/schedule/video.txt

Use ^d to exit from at prompt







