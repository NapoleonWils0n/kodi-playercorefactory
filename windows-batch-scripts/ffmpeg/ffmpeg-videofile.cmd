setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.mkv
Set VNAME=video.mkv
c:\ffmpeg\bin\ffmpeg.exe -i "%VIDEOURL%" -c:v copy -c:a copy "%VNAME%"