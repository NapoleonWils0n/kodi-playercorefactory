# grep escape backslash

grep rtmp vide stream need to escape blackslash

```
grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;,~*?[:blank:]#%@!()_=-]*'
```

url to match 


```
rtmpe://185.23.213.235:1935/hfufdxdhrh/mamahdsky11 swfUrl=http://player.hdcast.org/jwplayer.flash.swf flashver=WIN\2020,0,0,267 token=SECURET0KEN#yw%.?()@W! timeout=15 live=true swfVfy=1 pageUrl=http://www.hdcast.org/embedlive1.php?u=mamahdsky11&vw=854&vh=480
```
grep command and case statement

```
#!/bin/bash

[[ $# -eq 1 ]] || exit
[[ -f "$1" ]] && VIDEOURL=`cat "$1"` || VIDEOURL="$1"
echo $VIDEOURL | while read url; do 

RTMP=`echo "$VIDEOURL" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;,~*?[:blank:]#%@!()_=-]*'`

case "$url" in
	"$VIDEOFILE") mpv "$VIDEOFILE";;
	"$RTMP") echo 'rtmp it works';;
	*) mpv "$VIDEOURL";;
esac 
done
```
