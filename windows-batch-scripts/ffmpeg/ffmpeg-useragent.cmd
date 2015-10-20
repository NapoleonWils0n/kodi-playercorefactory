setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.mkv
set USERAGENT=Mozilla/5.0
Set VNAME=video.mkv
c:\ffmpeg\bin\ffmpeg.exe -user_agent "%USERAGENT%" -i "%VIDEOURL%" -c:v copy -c:a copy "%VNAME%"