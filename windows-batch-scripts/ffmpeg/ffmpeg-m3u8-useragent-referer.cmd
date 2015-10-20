setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.m3u8
set USERAGENT=Mozilla/5.0
set REFERER=example.com
Set VNAME=video.mkv
c:\ffmpeg\bin\ffmpeg.exe -hide_banner -user_agent "%USERAGENT%" -headers "Referer: %REFERER%!CR!!LF!" -i "%VIDEOURL%" -c:v copy -bsf:a aac_adtstoasc "%HOMEDRIVE%%HOMEPATH%\Desktop\%VNAME%"