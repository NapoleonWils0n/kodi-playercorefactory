#!/bin/bash

VIDEOFILE=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(mkv|mp4|avi|flv)'`
M3U8=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(m3u8)'`
XFORWARD=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|X-Forwarded-For=[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
XFORWARDIP=`echo "$XFORWARD" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'`
USEREF=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_-]*\.(mkv|mp4|m3u8|avi|flv)\|User-Agent=[a-zA-Z]*/[0-9]{1,1}\.[0-9]{1,1}(.*)\&Referer=(http|https)://[a-zA-Z0-9./?=_-]*(/|\.html)'`
USERAGENT=`echo "$USEREF" | grep -Eo 'User-Agent=[a-zA-Z]*/[0-9]{1,1}\.[0-9]{1,1}(.[^&]*)'`
REFERER=`echo "$USEREF" | grep -Eo 'Referer=(http|https)://[a-zA-Z0-9./?=_-]*(/|\.html)' | sed 's/Referer=//'`
M3U8USERAGENT=`echo "$VIDEOURL" | grep -Eo '(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|user-agent=[a-zA-Z]*'`
M3U8UAG=`echo "$M3U8USERAGENT" | grep -Eo 'user-agent=[a-zA-Z]*' | sed 's/user-agent=//'`
M3U8UAGM3U8=`echo "$M3U8USERAGENT" | grep -Eo '(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(m3u8)'`

M3U8UAGENTREFERER=`echo "$VIDEOURL" | grep -Eo '(^http|https)://[a-zA-Z0-9:0-9./?=_&@%|()[:blank:],;-]*'`
M3U8UAGNTREF=`echo "$M3U8UAGENTREFERER" | grep -Eo '(^http|https)://[a-zA-Z0-9:0-9./?=_&@%]*'`
M3U8USERAGENTREF=`echo "$M3U8UAGENTREFERER" | grep -Eo 'User-Agent=[a-zA-Z0-9/.()[:blank:],;-]*'`