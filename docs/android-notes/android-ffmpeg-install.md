# android ffmpeg install


https://github.com/guardianproject/android-ffmpeg

download ffmpeg android build from guardian project

wget https://guardianproject.info/builds/android-ffmpeg/latest/ffmpeg

enable developer option by clicking on build number 7 times
allow un trusted sources

enable adb under android debugging

enable root access for adb so we can copy ffmpeg to /data/local

root access is disabled by system setting - enable in settings -> development options

select adb only

should now say root access adb

plug in android device with usb

switch to root shell on adb, type in your terminal

adb root

push ffmpeg to /data/local/
push ffmpeg /data/local/

make ffmpeg executable

adb shell
cd /data/local
chmod 777 ffmpeg

