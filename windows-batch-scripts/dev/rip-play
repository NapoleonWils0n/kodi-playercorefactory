setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
[[ $# -eq 1 ]] || exit
[[ -f "$1" ]] && Set VIDEOURL=`cat "$1"` || Set VIDEOURL="$1"
echo $VIDEOURL | while read url; do 

VIDEOFILE=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(mkv|mp4|avi|flv)'`
M3U8=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(m3u8)'`
XFORWARD=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|X-Forwarded-For=[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
XFORWARDIP=`echo "$XFORWARD" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
USEREF=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_-]*\|User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+-]*\&Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*'`
USERAGENT=`echo "$VIDEOURL" | grep -Eo 'User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+-]*[^&]'`
REFERER=`echo "$VIDEOURL" | grep -Eo 'Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*' | sed 's/Referer=//'`
M3U8USERAGENT=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|user-agent=[a-zA-Z]*'`
M3U8UAGENTREFERER=`echo "$VIDEOURL" | grep -Eo '(^http|https)://[a-zA-Z0-9:0-9./?=_&@%|()[:blank:],;-]*'`
M3U8UAGNTREF=`echo "$M3U8UAGENTREFERER" | grep -Eo '(^http|https)://[a-zA-Z0-9:0-9./?=_&@%-]*'`
REFUSERAGENT=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_-]*\|Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*\&User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+-]*'`

case "$url" in
	"$VIDEOFILE") ffplay -hide_banner -fs "$VIDEOFILE";;
	"$M3U8") ffplay -hide_banner -fs "$M3U8" 2>&1 | sed '/\[/d';;
	"$XFORWARD") ffplay -hide_banner -fs -headers "X-Forwarded-For: $XFORWARDIP!CR!!LF!" "$M3U8";;
	"$USEREF") ffplay -fs -user-agent "$USERAGENT" -headers "Referer: '"$REFERER!CR!!LF!" "$VIDEOFILE";;
	"$M3U8USERAGENT") ffplay -hide_banner -fs -user-agent "$USERAGENT" "$M3U8";;
	"$M3U8UAGENTREFERER") ffplay -hide_banner -fs -user-agent "$USERAGENT" -headers "Referer: $REFERER!CR!!LF!" "$M3U8UAGNTREF";;
	"$REFUSERAGENT") ffplay -hide_banner -fs -headers "Referer: $REFERER!CR!!LF!" -user-agent "$USERAGENT" "$VIDEOFILE";;
	*) ffplay -hide_banner -fs "$VIDEOURL";;
esac 
done
