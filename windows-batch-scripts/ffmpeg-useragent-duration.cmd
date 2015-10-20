setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/.m3u8
set USERAGENT=Mozilla/5.0
Set VNAME=video.mkv
Set DURATION=00:30:00
c:\ffmpeg\bin\ffplay.exe -user_agent "%USERAGENT%" -i "%VIDEOURL%" -c:v copy -c:a copy -t %DURATION% -t %DURATION% "%VNAME%"