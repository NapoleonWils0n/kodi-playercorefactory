setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/.m3u8
set USERAGENT=Mozilla/5.0
set REFERER=example.com
Set VNAME=video.mkv
Set DURATION=00:30:00
c:\ffmpeg\bin\ffplay.exe -user_agent "%USERAGENT%" -headers "Referer: %REFERER%!CR!!LF!" -i "%VIDEOURL%" -c:v copy -c:a copy -t %DURATION% "%VNAME%"