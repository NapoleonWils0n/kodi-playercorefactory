#!/bin/bash

# ffmpeg record url from text file
#=================================

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

URL=`/usr/bin/cat "$1" | sed "s/^/'/;s/$/'/"`
/usr/bin/ffmpeg -i "{0}" -c:v copy -bsf:a aac_adtstoasc -t 01:00:00 "$HOME/Desktop/video-$(date +"%m-%d-%y-%H-%M").mkv"
done

fi