#!/bin/bash

VIDEOFILE=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(mkv|mp4|avi|flv)'`
M3U8=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(m3u8)'`
XFORWARD=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|X-Forwarded-For=[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
XFORWARDIP=`echo "$XFORWARD" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
USEREF=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_-]*\|User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+-]*\&Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*'`
USERAGENT=`echo "$VIDEOURL" | grep -Eo 'User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+_-]*[^&]'`
REFERER=`echo "$VIDEOURL" | grep -Eo 'Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*' | sed 's/Referer=//'`
M3U8USERAGENT=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|user-agent=[a-zA-Z]*'`
M3U8UAGENTREFERER=`echo "$VIDEOURL" | grep -Eo '(^http|https)://[a-zA-Z0-9:0-9./?=_&@%|()[:blank:],;-]*'`
M3U8UAGNTREF=`echo "$M3U8UAGENTREFERER" | grep -Eo '(^http|https)://[a-zA-Z0-9:0-9./?=_&@%-]*'`
REFUSERAGENT=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_-]*\|Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*\&User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+-]*'`