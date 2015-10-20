setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.mkv
set USERAGENT=Mozilla/5.0
c:\ffmpeg\bin\ffprobe.exe -v error -hide_banner -pretty -show_entries format=size,duration:stream=filename,index,codec_type,codec_name,profile,bit_rate,width,height -of compact -user-agent "%USERAGENT%" -i "%VIDEOURL%" > %HOMEDRIVE%%HOMEPATH%\Desktop\video-stats.txt