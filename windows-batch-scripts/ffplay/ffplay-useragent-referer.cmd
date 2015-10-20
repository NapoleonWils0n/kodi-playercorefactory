setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.mkv
set USERAGENT=Mozilla/5.0
set REFERER=example.com
c:\ffmpeg\bin\ffplay.exe -user_agent "%USERAGENT%" -headers "Referer: %REFERER%!CR!!LF!" -i "%VIDEOURL%"