# windows schedule recording with schtasks

msdn.microsoft.com

https://msdn.microsoft.com/en-us/library/windows/desktop/bb736357(v=vs.85).aspx


ss64.com

http://ss64.com/nt/schtasks.html


howtogeek.com

http://www.howtogeek.com/123393/how-to-automatically-run-programs-and-set-reminders-with-the-windows-task-scheduler/


Create a one-off task to run a script at exactly12 midday:

SCHTASKS /create /tn "once only" /tr "\"c:\my folder\one.cmd\" arguments" /sc ONCE /sd 12/29/2014 /st 12:00

/create = create

/tn = task name

/tr = command to run

/sc = schedule

Valid values are: MINUTE, HOURLY, DAILY, WEEKLY, MONTHLY, ONCE, ONLOGON, ONIDLE, and ONEVENT.

/st = start time

/sd = start date

schtasks /create /sc ONCE /tn "recording video" /tr "\"C:\Windows\System32\cmd.exe /c start /B bash rip-record %HOMEDRIVE%%HOMEPATH%\Desktop\videourl.txt -t 00:30:00"" /st 12:00 



schtasks /create /sc ONCE /tn "recording video" /tr "C:\Windows\System32\cmd.exe /c start /B bash rip-record %HOMEDRIVE%%HOMEPATH%\Desktop\videourl.txt -t 00:30:00" /st 12:00 

