setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://some.iptvserver.any/subfolder/master.m3u8
Set XFORWARDIP=123.45.67.89
set USERAGENT=Mozilla/5.0
Set VNAME=myrecording.mkv
Set LOGNAME=myrecording.log
Set DURATION=00:03:00
c:\ffmpeg\bin\ffplay.exe -y -headers "X-Forwarded-For: %XFORWARDIP%!CR!!LF!" -user_agent "%USERAGENT%" -i "%VIDEOURL%" -c:v copy -c:a copy -t %DURATION% "%VNAME%" >"%LOGNAME%" 2>&1