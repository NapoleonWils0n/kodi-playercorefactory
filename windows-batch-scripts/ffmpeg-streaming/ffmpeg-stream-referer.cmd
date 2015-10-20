setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.mkv
set REFERER=example.com
c:\ffmpeg\bin\ffmpeg.exe -hide_banner -loglevel error -headers "Referer: %REFERER%!CR!!LF!" -i "%VIDEOURL%" -c:v copy -c:a copy -f mpegts udp://239.253.253.4:1234?pkt_size=1316