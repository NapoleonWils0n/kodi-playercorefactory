setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.m3u8
Set XFORWARDIP=123.45.67.89
Set VNAME=video.mkv
Set DURATION=00:30:00
c:\ffmpeg\bin\ffplay.exe -headers "X-Forwarded-For: %XFORWARDIP%!CR!!LF!" -i "%VIDEOURL%" -c:v copy -bsf:a aac_adtstoasc -t %DURATION% "%VNAME%"