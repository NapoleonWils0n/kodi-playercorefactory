# regular expressions


### http link to video file example url

http://example.com/video.mkv

	VIDEOFILE=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(mkv|mp4|avi)'`


	"$VIDEOFILE")
	ffplay -hide_banner -loglevel error -fs "$VIDEOFILE"
	;;

### http link to m3u8 file example url
 
http://example.com/video.m3u8

	M3U8=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)'`


	"$M3U8")
	ffplay -hide_banner -loglevel error -fs "$M3U8"
	;;

### x forward for example url

http://example.com/video.m3u8|X-Forwarded-For=11.111.111.111

	XFORWARD=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|X-Forwarded-For=[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
	XFORWARDIP=`echo "$XFORWARD" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`


	"$XFORWARD")
	ffplay -hide_banner -loglevel error -fs -headers 'X-Forwarded-For: '"$XFORWARDIP"''$'\r\n' "$M3U8"
	;;

### useragent referer example url

http://192.54.104.104:8080/d/mwhzccskpqosuqhy77kmar5tctikmrscw4fxctbfe2g5a4gzxkb7ebxr/video.mp4|User-Agent=Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko&Referer=http://180upload.com/embed-uaqmgcckhpcl.html


	USEREF=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_-]*\.(mkv|mp4|m3u8|avi)\|User-Agent=[a-zA-Z]*/[0-9]{1,1}\.[0-9]{1,1}(.*)\&Referer=(http|https)://[a-zA-Z0-9./?=_-]*(/|\.html)'`
	USERAGENT=`echo "$USEREF" | grep -Eo 'User-Agent=[a-zA-Z]*/[0-9]{1,1}\.[0-9]{1,1}(.[^&]*)'`
	REFERER=`echo "$USEREF" | grep -Eo 'Referer=(http|https)://[a-zA-Z0-9./?=_-]*(/|\.html)' | sed 's/Referer=//'`


	"$USEREF")
	ffplay -fs -user-agent "$USERAGENT" -headers 'Referer: '"$REFERER"''$'\r\n' "$VIDEOFILE"
	;;

### m3u8 user agent

http://rtmp1.arconaitv.me/live/J8s5ZQCFMZ5-FBth4b8fUA/1194425127/office.m3u8|user-agent=iPhone

	M3U8USERAGENT=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|user-agent=[a-zA-Z]*'`
	M3U8UAG=`echo "$M3U8USERAGENT" | grep -Eo 'user-agent=[a-zA-Z]*' | sed 's/user-agent=//'`
	M3U8UAGM3U8=`echo "$M3U8USERAGENT" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)'`


	"$M3U8USERAGENT")
	ffplay -hide_banner -loglevel error -fs -user-agent "$M3U8UAG" "$M3U8UAGM3U8"
	;;

