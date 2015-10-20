# schedule recordings with the at command

Youtube video explaining the set up

https://www.youtube.com/watch?v=VWIOuE1NoOY&list=PL7hhhG5qUoXlpmIjqv2eEBukAeJSVNsdX&index=30

Save the url of the video from kodi by press y on the keyboard while a video is playing in kodi to bring up the play using contextual menu. 
Then select the save url option which will echo the url into a text file on your Desktop  

## install at to schedule recordings

### arch linux install at

	sudo pacman -S at


start the atd daemon before using at

	sudo systemctl start atd


start the atd daemon automatically

	sudo systemctl enable atd


### ubuntu install at

	sudo apt-get install at


start the atd daemon before using at


	sudo service atd start


### schedule a record using at

type at followed by the time to run the command  
after you press enter you will be placed into the at prompt  

type rip-record and the path to the text file with the url from kodi, Use ^d to exit from at prompt.


	at now + 1 min
	rip-record video.txt

Use ^d to exit from at prompt.


use the -t 00:00:00 option to specify a duration in hours minutes seconds  

rip-record textfile.txt -t 00:00:00

To record a stream at 15:00 PM Saturday for 3 hours

	at 15:00 PM Sat
	rip-record video.txt -t 03:00:00

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


#### Example 1: Schedule task at comming 10:00 AM and record for 1 hour

	at 10:00 AM
	rip-record video.txt -t 01:00:00

Use ^d to exit from at prompt.


#### Example 2: Schedule task at 10:00 AM on comming Sunday and record for 2 hours

	at 10:00 AM Sun
	rip-record video.txt -t 02:00:00

Use ^d to exit from at prompt.


#### Example 3: Schedule task at 10:00 AM on comming 25’th July and record for 2 hours

	at 10:00 AM July 25
	rip-record video.txt -t 02:00:00

Use ^d to exit from at prompt.


#### Example 4: Schedule task at 10:00 AM on comming 22’nd June 2015 and record for 30 minutes  

	at 10:00 AM 6/22/2015
	rip-record video.txt -t 00:30:00

Use ^d to exit from at prompt.

	at 10:00 AM 6.22.2015
	rip-record video.txt -t 00:30:00

Use ^d to exit from at prompt.


#### Example 5: Schedule task at 10:00 AM on same date at next month and record for 30 minutes

	at 10:00 AM next month
	rip-record video.txt -t 00:30:00

Use ^d to exit from at prompt.


#### Example 6: Schedule task at 10:00 AM tomorrow and record for 30 minutes

	at 10:00 AM tomorrow
	rip-record video.txt -t 00:30:00

Use ^d to exit from at prompt.


#### Example 7: Schedule task at 10:00 AM tomorrow and record for 30 minutes

	at 10:00 AM tomorrow
	rip-record video.txt -t 00:30:00

Use ^d to exit from at prompt.


#### Example 8: Schedule task to execute just after 1 hour and record for 2 hours

	at now + 1 hour
	rip-record video.txt -t 02:00:00

Use ^d to exit from at prompt.


#### Example 9: Schedule task to execute just after 30 minutes and record for 2 hours

	at now + 30 minutes
	rip-record video.txt -t 02:00:00

Use ^d to exit from at prompt.


#### Example 10: Schedule task to execute just after 1 and 2 weeks and record for 6 hours

	at now + 1 week
	rip-record video.txt -t 06:00:00

Use ^d to exit from at prompt.

	at now + 2 weeks
	rip-record video.txt -t 06:00:00

Use ^d to exit from at prompt.


#### Example 11: Schedule task to execute just after 1 and 2 years and record for 4 hours

	at now + 1 year
	rip-record video.txt -t 04:00:00

Use ^d to exit from at prompt.

	at now + 2 years
	rip-record video.txt -t 04:00:00

Use ^d to exit from at prompt.

#### Example 12: Schedule task to execute at midnight and record for 45 minutes  

	at midnight
	rip-record video.txt -t 00:45:00

Use ^d to exit from at prompt