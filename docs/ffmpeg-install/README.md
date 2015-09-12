# ffmpeg set up

## arch linux ffmpeg full

we need to install ffmpeg-full from the aur using yaourt
so we get the non free codecs

https://aur.archlinux.org/packages/ffmpeg-full/

	yaourt -S ffmpeg-full

edit pkg with nano during install 
remove the line that says  "--enable-libutvideo" from PKGBUILD.
then continue with install

## reinstall to fix misisng libraries if needed

	yaourt -Sy fmpeg-full

	yaourt -S fmpeg-full

## ubuntu 

https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu

https://www.ffmpeg.org/download.html

## mac osx

https://www.ffmpeg.org/download.html

## windows

https://www.ffmpeg.org/download.html
