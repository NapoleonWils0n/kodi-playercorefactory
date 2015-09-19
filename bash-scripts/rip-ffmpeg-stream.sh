#!/bin/bash

# ffmpeg multicast stream

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
source rip-regex.sh

case "$url" in
"$VIDEOFILE")
	ffmpeg -hide_banner -re -i "$VIDEOFILE" \
	-c:v libx265 -preset ultrafast -tune zero-latency \
	-x265-params crf=28 \
	-c:a aac -strict experimental -b:a 192k \
	-loglevel error \
	-maxrate 4000k -bufsize 4000k \
	-f mpegts udp://239.253.253.4:1234?pkt_size=1316
	;;
"$M3U8")
	ffmpeg -hide_banner -i "$M3U8" \
	-c:v copy -c:a copy \
	-loglevel error \
	-f mpegts udp://239.253.253.4:1234?pkt_size=1316
	;;
"$XFORWARD")
	ffmpeg -hide_banner -headers 'X-Forwarded-For: '"$XFORWARDIP"''$'\r\n' -i "$M3U8" \
	-c:v copy -c:a copy \
	-loglevel error \
	-f mpegts udp://239.253.253.4:1234?pkt_size=1316
	;;
"$USEREF")
	ffmpeg -hide_banner -re -i  "$USERAGENT" -headers 'Referer: '"$REFERER"''$'\r\n' -i "$URL" \
	-c:v libx265 -preset ultrafast -tune zero-latency \
	-x265-params crf=28 \
	-c:a aac -strict experimental -b:a 192k \
	-loglevel error \
	-maxrate 4000k -bufsize 4000k \
	-f mpegts udp://239.253.253.4:1234?pkt_size=1316
	;;
"$M3U8USERAGENT")
	ffmpeg -hide_banner -loglevel error -user-agent "$M3U8UAG" -i "$M3U8UAGM3U8" \
	-c:v copy -c:a copy \
	-loglevel error \
	-f mpegts udp://239.253.253.4:1234?pkt_size=1316
	;;
*)
	ffmpeg -hide_banner -re -i "$VIDEOURL" \
	-c:v libx265 -preset ultrafast -tune zero-latency \
	-x265-params crf=28 \
	-c:a aac -strict experimental -b:a 192k \
	-loglevel error \
	-maxrate 4000k -bufsize 4000k \
	-f mpegts udp://239.253.253.4:1234?pkt_size=1316
	;;
esac
done
fi