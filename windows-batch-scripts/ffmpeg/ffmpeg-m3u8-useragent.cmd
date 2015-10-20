setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.m3u8
set USERAGENT=Mozilla/5.0
Set VNAME=video.mkv
c:\ffmpeg\bin\ffmpeg.exe -hide_banner -user_agent "%USERAGENT%" -i "%VIDEOURL%" -c:v copy -bsf:a aac_adtstoasc "%VNAME%"