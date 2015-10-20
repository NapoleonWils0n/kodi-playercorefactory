setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.mkv
set REFERER=example.com
Set VNAME=video.mkv
c:\ffmpeg\bin\ffplay.exe -headers "Referer: %REFERER%!CR!!LF!" -i "%VIDEOURL%" -c:v copy -c:a copy "%VNAME%"