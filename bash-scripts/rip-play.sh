#!/bin/bash

# ffplay play url from text file

if [[ $# < 1 ]]
	then
		printf "%b" "error not enough aruments passed to the script" '\n'
		exit 1 # exit with non zero		
elif [[ $# > 1 ]]
	 then
		printf "%b" "too many aruments passed to the script" '\n'
		exit 2 # exit with non zero
else

VIDEOURL=`cat "$1"`

echo $VIDEOURL |
while read url
do
source rip-video-regex.sh

case "$url" in
	"$VIDEOFILE")
	ffplay -hide_banner -loglevel error -fs "$VIDEOFILE"
	;;
	"$M3U8")
	ffplay -hide_banner -loglevel error -fs "$M3U8"
	;;
	"$XFORWARD")
	ffplay -hide_banner -loglevel error -fs -headers 'X-Forwarded-For: '"$XFORWARDIP"''$'\r\n' "$M3U8"
	;;
	"$USEREF")
	ffplay -fs -user-agent "$USERAGENT" -headers 'Referer: '"$REFERER"''$'\r\n' "$VIDEOFILE"
	;;
	"$M3U8USERAGENT")
	ffplay -hide_banner -loglevel error -fs -user-agent "$M3U8UAG" "$M3U8UAGM3U8"
	;;
	*)
	ffplay -hide_banner -loglevel error -fs "$VIDEOURL"
	;;
esac
done
fi