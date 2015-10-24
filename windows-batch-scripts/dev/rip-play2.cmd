@echo off
setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
Set VIDEOURL=%1
for /f "tokens=*" %%a in %VIDEOURL% do {
Set VIDEOFILE=echo %VIDEOURL% | grep -Eo "(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(mkv|mp4|avi|flv)"
Set M3U8=echo %VIDEOURL% | grep -Eo "(http|https)://[a-zA-Z0-9:0-9./?=_@%-]*\.(m3u8)"
Set XFORWARD=echo %VIDEOURL% | grep -Eo "(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|X-Forwarded-For=[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"
Set XFORWARDIP=echo %XFORWARD% | grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"
Set USEREF=echo %VIDEOURL% | grep -Eo "(http|https)://[a-zA-Z0-9:0-9./?=_-]*\|User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+-]*\&Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*"
Set USERAGENT=echo %VIDEOURL% | grep -Eo "User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+-]*[^&]"
Set REFERER=echo %VIDEOURL% | grep -Eo "Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*" | sed "s/Referer=//"
Set M3U8USERAGENT=echo %VIDEOURL% | grep -Eo "(http|https)://[a-zA-Z0-9./?=_@%-]*\.(m3u8)\|user-agent=[a-zA-Z]*"
Set M3U8UAGENTREFERER=echo %VIDEOURL% | grep -Eo "(^http|https)://[a-zA-Z0-9:0-9./?=_&@%|()[:blank:],;-]*"
Set M3U8UAGNTREF=echo %M3U8UAGENTREFERER% | grep -Eo "(^http|https)://[a-zA-Z0-9:0-9./?=_&@%-]*"
Set REFUSERAGENT=echo %VIDEOURL% | grep -Eo "(http|https)://[a-zA-Z0-9:0-9./?=_-]*\|Referer=(http|https)(://|%3A%2F%2F)[a-zA-Z%0-9./?=_-]*\&User-Agent=[a-zA-Z0-9/.()[:blank:],:;%+-]*"

Select Case url
	case "VIDEOFILE" 
		ffplay -hide_banner -fs %VIDEOFILE%
	case "M3U8" 
		ffplay -hide_banner -fs %M3U8% 2>&1 | sed "/\[/d"
	case "XFORWARD" 
		ffplay -hide_banner -fs -headers "X-Forwarded-For: %XFORWARDIP%!CR!!LF!" %M3U8%
	case "USEREF" 
		ffplay -fs -user-agent %USERAGENT% -headers "Referer: %REFERER%!CR!!LF!" %VIDEOFILE%
	case "M3U8USERAGENT" 
		ffplay -hide_banner -fs -user-agent %USERAGENT% %M3U8%
	case "M3U8UAGENTREFERER" 
		ffplay -hide_banner -fs -user-agent %USERAGENT% -headers "Referer: %REFERER%!CR!!LF!" %M3U8UAGNTREF%
	case "REFUSERAGENT" 
		ffplay -hide_banner -fs -headers "Referer: %REFERER%!CR!!LF!" -user-agent %USERAGENT% %VIDEOFILE%
	case ELSE 
		ffplay -hide_banner -fs %VIDEOURL%
End Select
}
