# Windows set up

echo command needs to be tested

file paths need to be changed


### windows enviormntal variables

http://windowsitpro.com/systems-management/what-environment-variables-are-available-windows

home variable linux
	$HOME

home variable windows
	%HOMEPATH%

home drive 
	%HOMEDRIVE%


### run windows command in the background

https://superuser.com/questions/198525/how-can-i-execute-a-windows-command-line-in-background


C:\> start /B myprog.exe


### Comparison of Common DOS and Linux Commands

http://windowsitpro.com/systems-management/what-environment-variables-are-available-windows



#### sly man comment

https://www.youtube.com/watch?v=XlcUUQIzg8w

ffmpeg work fine whit this code  on (win8.1 64 bits and kodi 16.0)
at this time i dont have find the way to increment the file name or to add time and date


	</player>
	   <player name="ffmpegdump" type="ExternalPlayer" audio="false" video="true">
	  <filename>C:\Users\sly\Desktop\testmpv\ffmpeg\bin\ffmpeg.exe</filename>
	     <args>-i "{0}" -c:v copy -c:a copy "C:/Users/sly/Desktop/testmpv/ffmpegdump.mkv" </args>
	     <hidexbmc>true</hidexbmc>
	</player>


### windows ffmpeg player with variables for c drive and home directory


	</player>
	   <player name="ffmpegdump" type="ExternalPlayer" audio="false" video="true">
	  <filename>C:\Users\sly\Desktop\testmpv\ffmpeg\bin\ffmpeg.exe</filename>
	     <args>-i "{0}" -c:v copy -c:a copy "%HOMEDRIVE%%HOMEPATH%/Desktop/ffmpegdump.mkv" </args>
	     <hidexbmc>true</hidexbmc>
	</player>
