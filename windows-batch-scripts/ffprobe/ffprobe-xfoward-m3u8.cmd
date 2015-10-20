setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.m3u8
Set XFORWARDIP=123.45.67.89
c:\ffmpeg\bin\ffprobe.exe -v error -hide_banner -pretty -show_entries format=size,duration:stream=filename,index,codec_type,codec_name,profile,bit_rate,width,height -of compact -headers "X-Forwarded-For: %XFORWARDIP%!CR!!LF!" -i "%VIDEOURL%" > %HOMEDRIVE%%HOMEPATH%\Desktop\video-stats.txt