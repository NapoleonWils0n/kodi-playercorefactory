# ffmpeg set up


## arch linux

we need to install ffmpeg-full from the aur using yaourt
so we get the non free codecs

yaourt -S ffmpeg-full

edit pkg with nano during install 
remove the line that says  "--enable-libutvideo" from PKGBUILD.
then continue with install


## reinstall to fix misisng libraries if needed

yaourt -Sy fmpeg-full

yaourt -S fmpeg-full



## ubuntu 

sudo apt-get install ffmpeg



## mac osx



## windows