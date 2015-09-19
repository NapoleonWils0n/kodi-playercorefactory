#!/bin/bash

# wget record m3u8 videos with x-forward http header
#===================================================


# check how many arguments are passed to the script

# if less than 1 arguments are passed to the script, print an error and exit
if [[ $# < 1 ]]
	then
		printf "%b" "error not enough aruments" '\n'
		exit 1 # exit with non zero
# if more than 1 arguments are passed to the script, print an error and exit		
elif [[ $# > 1 ]]
	 then
		printf "%b" "too many aruments" '\n'
		exit 2 # exit with non zero
else

while true 
do
URL=`/usr/bin/cat "$1" | sed "s/^/'/;s/$/'/"`
CookieFileName='/tmp/cookies.txt'
VIDEOURL=`/usr/bin/echo "$URL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@-]*\.(m3u8)'`
XFORWARD=`/usr/bin/echo "$URL" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
TSDIR=`/usr/bin/echo "$VIDEOURL" | sed 's/[a-zA-Z]*\.m3u8$//'`
wget -c -U 'Mozilla/5.0' --header="X-Forwarded-For: $XFORWARD" "$VIDEOURL" -O- | grep -Eo '[a-zA-Z0-9/]*/segment_[0-9]*\.ts$' | sed "s#^#$TSDIR/#" | wget -i - --show-progress -U 'Mozilla/5.0' --header="X-Forwarded-For: $XFORWARD" -O- >> "$HOME/Desktop/video.mkv"
done

fi