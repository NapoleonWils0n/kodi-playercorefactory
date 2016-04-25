#!/bin/bash

VIDEOFILE=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(mkv|mp4|avi|flv)'`
M3U8=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_,@&%-]*\.(m3u8)'`
M3U8TOKEN=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(m3u8)\?token=[a-zA-Z0-9&=]*'`
M3U8UAG=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(m3u8)[a-zA-Z0-9?&=%*]*[^|]'`
XFORWARD=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|X-Forwarded-For=[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
XFORWARDIP=`echo "$XFORWARD" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
USEREF=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_-]*\|User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+-]*\&Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*'`
USERAGENT=`echo "$VIDEOURL" | grep -Eo 'u?User-a?Agent=[a-zA-Z0-9/.()[:blank:],:;%+_-]*[^&]'`
REFERER=`echo "$VIDEOURL" | grep -Eo 'Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*' | sed 's/Referer=//'`
M3U8USERAGENT=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)[a-zA-Z0-9?&=%*]*\|u?User-a?Agent=[a-zA-Z0-9/.()[:blank:],:;%+_-]*[^&]'`
M3U8USERAGENT2=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)[a-zA-Z0-9?&=%*]*\|u?User-a?Agent=[a-zA-Z0-9/.()[:blank:],:;%+_-]*[^&]'`
M3U8UAGENTREFERER=`echo "$VIDEOURL" | grep -Eo '(^http|https)://[a-zA-Z0-9:0-9./?=_&@%|()[:blank:],;-]*'`
M3U8UAGNTREF=`echo "$M3U8UAGENTREFERER" | grep -Eo '(^http|https)://[a-zA-Z0-9:0-9./?=_&@%-]*'`
REFUSERAGENT=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_-]*\|Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*\&User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+-]*'`
BEEB=`echo "$VIDEOURL" | grep -Eo '^(http|https)://[a-zA-Z0-9:0-9/.&;,~*?[:blank:]_=-]*'`
GVID=`echo "$VIDEOURL" | grep -Eo '^(http|https)://[a-zA-Z0-9:0-9/.&;,~*?_=-]*'`
RTMP=`echo "$VIDEOURL" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;,~*?()@!#%[:blank:]_=\-]*'`
RTMPR=`echo "$VIDEOURL" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;?_=-]*'`
RTMPS=`echo "$VIDEOURL" | grep -Eo 'swf[uU]rl=(http|https)://[a-zA-Z0-9./_]*\.swf' | sed 's/swf[uU]rl=//'`
RTMPF=`echo "$VIDEOURL" | grep -Eo 'flash[vV]er=[a-zA-Z0-9\,]*' | sed 's/flash[vV]er=//'`
RTMPT=`echo "$VIDEOURL" | grep -Eo 'token=[a-zA-Z0-9.#%?()@!]*' | sed 's/token=//'`
RTMPV=`echo "$VIDEOURL" | grep -Eo 'live=[a-zA-Z]*' | sed 's/live=//'`
RTMPVFY=`echo "$VIDEOURL" | grep -Eo 'swf[vV]fy=(1|0|[tT]rue|[fF]alse)'`
RTMPM=`echo "$VIDEOURL" | grep -Eo 'timeout=[0-9]*' | sed 's/timeout=//'`
RTMPW=`echo "$VIDEOURL" | grep -Eo 'swf[uU]rl=(http|https)://[a-zA-Z0-9./_]*\.swf' | sed 's/swf[uU]rl=//'`
RTMPP=`echo "$VIDEOURL" | grep -Eo 'page[uU]rl=(http|https)://[a-zA-Z0-9/.?&=]*' | sed 's/page[uU]rl=//'`
RTMPY=`echo "$VIDEOURL" | grep -Eo 'play[pP]ath=[a-zA-Z0-9/?.:&=_-]*' | sed 's/play[pP]ath=//'`
RTMPXRSFTMVWP=`echo "$VIDEOURL" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;?_=-]*[[:blank:]]swf[uU]rl=(http|https)://[a-zA-Z0-9./_]*\.swf[[:blank:]]flash[vV]er=[a-zA-Z0-9\,]*[[:blank:]]token=[a-zA-Z0-9.#%?()@!]*[[:blank:]]timeout=[0-9]*[[:blank:]]live=[a-zA-Z]*[[:blank:]]swf[vV]fy=(1|0|[tT]rue|[fF]alse)*[[:blank:]]page[uU]rl=(http|https)://[a-zA-Z0-9/.?&=]*'`
RTMPXRY=`echo "$VIDEOURL" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;?_=-]*[[:blank:]]play[pP]ath=[a-zA-Z0-9/?.:&=_-]*'`
RTMPXRSY=`echo "$VIDEOURL" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;?_=-]*[[:blank:]]swf[uU]rl=(http|https)://[a-zA-Z0-9./_]*\.swf[[:blank:]]play[pP]ath=[a-zA-Z0-9/?.:&=_-]*'`
RTMPXRSYVFY=`echo "$VIDEOURL" | grep -Eo '^(rtmp|rtmpe)://[a-zA-Z0-9:0-9/.&;?_=-]*[[:blank:]]swf[uU]rl=(http|https)://[a-zA-Z0-9./_]*\.swf[[:blank:]]play[pP]ath=[a-zA-Z0-9/?.:&=_-]*[[:blank:]]swf[vV]fy=(1|0|[tT]rue|[fF]alse)'`
