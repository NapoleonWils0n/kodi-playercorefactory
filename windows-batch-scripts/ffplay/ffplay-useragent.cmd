setlocal EnableDelayedExpansion
Set LF=^


for /f %%a in ('copy /z "%~f0" nul') do set "CR=%%a"
set VIDEOURL=http://example.com/video.mkv
set USERAGENT=Mozilla/5.0
c:\ffmpeg\bin\ffplay.exe -hide_banner -user_agent "%USERAGENT%" -i "%VIDEOURL%"