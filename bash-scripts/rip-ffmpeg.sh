#!/bin/bash

# ffmpeg record url from text file

if [[ $# < 1 ]]
	then
		printf "%b" "error not enough aruments passed to the script" '\n'
		exit 1 # exit with non zero		
elif [[ $# > 3 ]]
	 then
		printf "%b" "too many aruments passed to the script" '\n'
		exit 2 # exit with non zero
else

VIDEOURL=`cat "$1"`
TFLAG="$2"
DURATION="$3"

echo $VIDEOURL |
while read url
do
VIDEOFILE=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(mkv|mp4|avi|flv)'`
M3U8=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)'`
XFORWARD=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|X-Forwarded-For=[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
XFORWARDIP=`echo "$XFORWARD" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
USEREF=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_-]*\.(mkv|mp4|m3u8|avi|flv)\|User-Agent=[a-zA-Z]*/[0-9]{1,1}\.[0-9]{1,1}(.*)\&Referer=(http|https)://[a-zA-Z0-9./?=_-]*(/|\.html)'`
USERAGENT=`echo "$USEREF" | grep -Eo 'User-Agent=[a-zA-Z]*/[0-9]{1,1}\.[0-9]{1,1}(.[^&]*)'`
REFERER=`echo "$USEREF" | grep -Eo 'Referer=(http|https)://[a-zA-Z0-9./?=_-]*(/|\.html)' | sed 's/Referer=//'`

case "$url" in
	"$VIDEOFILE")
	ffmpeg -hide_banner -i "$VIDEOFILE" -c:v copy -c:a copy ${TFLAG} ${DURATION} -loglevel error "$HOME/Desktop/video-$(date +"%m-%d-%y-%H-%M").mkv"
	;;
	"$M3U8")
	ffmpeg -hide_banner -i "$M3U8" -c:v copy -bsf:a aac_adtstoasc ${TFLAG} ${DURATION} -loglevel error "$HOME/Desktop/video-$(date +"%m-%d-%y-%H-%M").mkv"
	;;
	"$XFORWARD")
	ffmpeg -hide_banner -headers 'X-Forwarded-For: '"$XFORWARDIP"''$'\r\n' -i "$M3U8" -c:v copy -bsf:a aac_adtstoasc ${TFLAG} ${DURATION} -loglevel error "$HOME/Desktop/video-$(date +"%m-%d-%y-%H-%M").mkv"
	;;
	"$USEREF")
	ffmpeg -hide_banner -i  "$USERAGENT" -headers 'Referer: '"$REFERER"''$'\r\n' -i "$URL" -c:v copy -c:a copy ${TFLAG} ${DURATION} -loglevel error "$HOME/Desktop/video-$(date +"%H-%M-%m-%d-%y").mkv"
	;;
	*)
	ffmpeg -hide_banner -i "$VIDEOURL" -c:v copy -c:a copy ${TFLAG} ${DURATION} -loglevel error "$HOME/Desktop/video-$(date +"%m-%d-%y-%H-%M").mkv"
	;;
esac
done
fi