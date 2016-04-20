# rtmpdump commands

### mamahd url

```
rtmpe://162.219.176.98:1935/hfufdxdhrh/mamahdsky11 swfUrl=http://player.hdcast.org/jwplayer.flash.swf flashver=WIN\2020,0,0,267 token=SECURET0KEN#yw%.?()@W! timeout=15 live=true swfVfy=1 pageUrl=http://www.hdcast.org/embedlive1.php?u=mamahdsky11&vw=854&vh=480
```


#### split url onto seperate lines

```
rtmpe://162.219.176.98:1935/hfufdxdhrh/mamahdsky11 
swfUrl=http://player.hdcast.org/jwplayer.flash.swf 
flashver=WIN\2020,0,0,267 
token=SECURET0KEN#yw%.?()@W! 
timeout=15 
live=true 
swfVfy=1 
pageUrl=http://www.hdcast.org/embedlive1.php?u=mamahdsky11&vw=854&vh=480
```


#### add rtmpdump options

```
rtmpdump \
-r rtmpe://162.219.176.98:1935/hfufdxdhrh/mamahdsky11 \
-s swfUrl=http://player.hdcast.org/jwplayer.flash.swf \
-f flashver=WIN\2020,0,0,267 \
-T token=SECURET0KEN#yw%.?()@W! \
-v true \
-m 15 \
-W http://player.hdcast.org/jwplayer.flash.swf \
-p pageUrl=http://www.hdcast.org/embedlive1.php?u=mamahdsky11&vw=854&vh=480
```


#### rtmpdump record

```
rtmpdump \
-r 'rtmpe://162.219.176.98:1935/hfufdxdhrh/mamahdsky11' \
-s 'http://player.hdcast.org/jwplayer.flash.swf' \
-f 'WIN\2020,0,0,267' \
-T 'SECURET0KEN#yw%.?()@W!' \
-v 'true' \
-m '15' \
-W 'http://player.hdcast.org/jwplayer.flash.swf' \
-p 'http://www.hdcast.org/embedlive1.php?u=mamahdsky11&vw=854&vh=480' \
-o mamahd.mkv
```

#### pipe rtmpdump into mpv

```
rtmpdump \
-r 'rtmpe://162.219.176.98:1935/hfufdxdhrh/mamahdsky11' \
-s 'http://player.hdcast.org/jwplayer.flash.swf' \
-f 'WIN\2020,0,0,267' \
-T 'SECURET0KEN#yw%.?()@W!' \
-v 'true' \
-m '15' \
-W 'http://player.hdcast.org/jwplayer.flash.swf' \
-p 'http://www.hdcast.org/embedlive1.php?u=mamahdsky11&vw=854&vh=480' \
| mpv -
```

#### rtmpdump regex

#### mamahd

```
rtmpe://162.219.176.98:1935/hfufdxdhrh/mamahdsky11 swfUrl=http://player.hdcast.org/jwplayer.flash.swf flashver=WIN\2020,0,0,267 token=SECURET0KEN#yw%.?()@W! timeout=15 live=true swfVfy=1 pageUrl=http://www.hdcast.org/embedlive1.php?u=mamahdsky11&vw=854&vh=480
```

#### rtmp regex whole url

```
grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;,~*?()@!#%[:blank:]_=\-]*'
```

#### video regex code

```
RTMP=`echo "$VIDEOURL" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;,~*?()@!#%[:blank:]_=\-]*'`
```

#### -r URL of the server and media content


```
grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&?_=-]*'
```

###### video regex code

```
RTMPR=`echo "$RTMP" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&?_=-]*'`
```

#### -s URL of the SWF player for the media

```
grep -Eo 'swfUrl=(http|https)://[a-zA-Z0-9./]*\.swf'
```

##### video regex code

```
RTMPS=`echo "$RTMP" | grep -Eo 'swfUrl=(http|https)://[a-zA-Z0-9./]*\.swf'`
```

#### -f Version of the Flash plugin used to run the SWF player

```
grep -Eo 'flashver=[a-zA-Z0-9\,]*'
```

##### video regex code

```
RTMPF=`echo "$RTMP" | grep -Eo 'flashver=[a-zA-Z0-9\,]*' | sed 's/flashver=//'`
```

use sed to remove flashver=


#### -T  Key  for  SecureToken response

```
grep -Eo 'token=[a-zA-Z0-9.#%?()@!]*'
```

##### video regex code

```
RTMPT=`echo "$RTMP" | grep -Eo 'token=[a-zA-Z0-9.#%?()@!]*' | sed 's/token=//'`
```

use sed to remove token=


#### -v Specify that the media is a live  stream

```
grep -Eo 'live=[a-zA-Z]*'
```

##### -m Timeout the session after num seconds without receiving data from the server

```
grep -Eo 'timeout=[0-9]*'
```

##### -W URL of the SWF player for this media

```
grep -Eo 'swfUrl=(http|https)://[a-zA-Z0-9./]*\.swf'
```

##### -p URL  of  the  web  page in which the media was embedded

```
grep -Eo 'pageUrl=(http|https)://[a-zA-Z0-9/.?&=]*'
```


