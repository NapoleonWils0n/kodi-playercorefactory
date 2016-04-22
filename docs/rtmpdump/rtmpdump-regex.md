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

### rtmpdump options

-r URL of the server and media content  
-s URL of the SWF player for the media  
-f Version of the Flash plugin used to run the SWF player  
-T Key for SecureToken response  
-v Specify that the media is a live stream  
-m Timeout the session after num seconds without receiving data from the server  
-W URL of the SWF player for this media  
-p URL of the web page in which the media was embedded  
-y Overrides the playpath parsed from the RTMP URL  
-o save file to disk

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
-o outfile.mkv
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
grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;?_=-]*'
```

###### video regex code

```
RTMPR=`echo "$RTMP" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&?_=-]*'`
```

#### -s URL of the SWF player for the media

```
grep -Eo 'swf[uU]rl=(http|https)://[a-zA-Z0-9._/]*\.swf'
```

##### video regex code

```
RTMPS=`echo "$RTMP" | grep -Eo 'swf[uU]rl=(http|https)://[a-zA-Z0-9./]*\.swf' | sed 's/swf[uU]rl=//'`
```

use sed to remove swfUrl=


#### -f Version of the Flash plugin used to run the SWF player

```
grep -Eo 'flash[vV]er=[a-zA-Z0-9\,]*'
```

##### video regex code

```
RTMPF=`echo "$RTMP" | grep -Eo 'flash[vV]er=[a-zA-Z0-9\,]*' | sed 's/flash[vV]er=//'`
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

##### video regex code

```
RTMPV=`echo "$RTMP" | grep -Eo 'live=[a-zA-Z]*' | sed 's/live=//'`
```

use sed to remove live=

##### -m Timeout the session after num seconds without receiving data from the server

```
grep -Eo 'timeout=[0-9]*'
```

##### video regex code

```
RTMPM=`echo "$RTMP" | grep -Eo 'timeout=[0-9]*' | sed 's/timeout=//'`
```

use sed to remove timeout=


##### -W URL of the SWF player for this media

```
grep -Eo 'swf[uU]rl=(http|https)://[a-zA-Z0-9./]*\.swf'
```

##### video regex code

```
RTMPW=`echo "$RTMP" | grep -Eo 'swf[uU]rl=(http|https)://[a-zA-Z0-9./]*\.swf' | sed 's/swf[uU]rl=//'`
```

use sed to remove swfUrl=

##### -p URL  of  the  web  page in which the media was embedded

```
grep -Eo 'page[uU]rl=(http|https)://[a-zA-Z0-9/.?&=]*'
```

##### video regex code


```
RTMPP=`echo "$RTMP" | grep -Eo 'page[uU]rl=(http|https)://[a-zA-Z0-9/.?&=]*' | sed 's/page[uU]rl=//'`
```

use sed to remove pageUrl=


##### -y Overrides the playpath parsed from the RTMP URL

```
grep -Eo 'play[pP]ath=[a-zA-Z0-9/.:_-]*'
```

##### video regex code

```
RTMPY=`echo "$RTMP" | grep -Eo 'play[pP]ath=[a-zA-Z0-9/?.:&=_-]*' | sed 's/play[pP]ath=//'`
```

remove playpath with sed


#### rtmpdump video-regex.sh code

video url is match by the VIDEOURL variable
we then grep inside the VIDEOURL for various rtmpdump parameters
which are then stored into different variables

```
RTMP=`echo "$VIDEOURL" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;,~*?()@!#%[:blank:]_=\-]*'`
RTMPR=`echo "$RTMP" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;?_=-]*'`
RTMPS=`echo "$RTMP" | grep -Eo 'swf[uU]rl=(http|https)://[a-zA-Z0-9./]*\.swf' | sed 's/swf[uU]rl=//'`
RTMPF=`echo "$RTMP" | grep -Eo 'flash[vV]er=[a-zA-Z0-9\,]*' | sed 's/flash[vV]er=//'`
RTMPT=`echo "$RTMP" | grep -Eo 'token=[a-zA-Z0-9.#%?()@!]*' | sed 's/token=//'`
RTMPV=`echo "$RTMP" | grep -Eo 'live=[a-zA-Z]*' | sed 's/live=//'`
RTMPM=`echo "$RTMP" | grep -Eo 'timeout=[0-9]*' | sed 's/timeout=//'`
RTMPW=`echo "$RTMP" | grep -Eo 'swf[uU]rl=(http|https)://[a-zA-Z0-9./]*\.swf' | sed 's/swf[uU]rl=//'`
RTMPP=`echo "$RTMP" | grep -Eo 'page[uU]rl=(http|https)://[a-zA-Z0-9/.?&=]*' | sed 's/page[uU]rl=//'`
RTMPY=`echo "$RTMP" | grep -Eo 'play[pP]ath=[a-zA-Z0-9/?.:&=_-]*' | sed 's/play[pP]ath=//'`
```

