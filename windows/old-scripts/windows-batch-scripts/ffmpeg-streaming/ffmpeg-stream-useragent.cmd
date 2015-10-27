setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.mkv
set USERAGENT=Mozilla/5.0
c:\ffmpeg\bin\ffmpeg.exe -hide_banner -user_agent "%USERAGENT%" -i "%VIDEOURL%" -c:v libx265 -preset ultrafast -tune zero-latency -x265-params crf=28 -c:a aac -strict experimental -b:a 192k -maxrate 4000k -bufsize 4000k -f mpegts udp://239.253.253.4:1234?pkt_size=1316