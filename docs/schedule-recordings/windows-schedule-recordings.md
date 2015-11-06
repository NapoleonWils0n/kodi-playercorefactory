# windows schedule recording with schtasks

msdn.microsoft.com

https://msdn.microsoft.com/en-us/library/windows/desktop/bb736357(v=vs.85).aspx

https://support.microsoft.com/en-us/kb/823093

ss64.com

http://ss64.com/nt/schtasks.html

howtogeek.com

http://www.howtogeek.com/123393/how-to-automatically-run-programs-and-set-reminders-with-the-windows-task-scheduler/


test command

schtasks /create /sc ONCE /tn "recording video" /tr "C:\Windows\System32\cmd.exe /c start /B bash rip-record $USERPROFILE/Desktop/video.txt -t 00:01:00" /st 01:05 
