# Android command location

	adb shell  


	echo $PATH

/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin

	which echo

/system/xbin/echo

	which grep

/system/bin/grep

	which cat

/system/bin/cat

	which sed

/system/xbin/sed

	which busybox

/system/xbin/busybox

	which sh

/system/bin/sh


create a symbolic link

su 
ln -s /system/xbin/echo /data/local/echo

chmod the copy of the binary

	chmod 777 /data/local/echo

run the copy of the binary

	/data/local/echo foo

