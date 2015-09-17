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
VIDEOFILE=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(mkv|mp4|avi|flv)'`
M3U8=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)'`
XFORWARD=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|X-Forwarded-For=[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
XFORWARDIP=`echo "$XFORWARD" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
USEREF=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_-]*\.(mkv|mp4|m3u8|avi|flv)\|User-Agent=[a-zA-Z]*/[0-9]{1,1}\.[0-9]{1,1}(.*)\&Referer=(http|https)://[a-zA-Z0-9./?=_-]*(/|\.html)'`
USERAGENT=`echo "$USEREF" | grep -Eo 'User-Agent=[a-zA-Z]*/[0-9]{1,1}\.[0-9]{1,1}(.[^&]*)'`
REFERER=`echo "$USEREF" | grep -Eo 'Referer=(http|https)://[a-zA-Z0-9./?=_-]*(/|\.html)' | sed 's/Referer=//'`
M3U8USERAGENT=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|user-agent=[a-zA-Z]*'`
M3U8UAG=`echo "$M3U8USERAGENT" | grep -Eo 'user-agent=[a-zA-Z]*' | sed 's/user-agent=//'`
M3U8UAGM3U8=`echo "$M3U8USERAGENT" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)'`

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