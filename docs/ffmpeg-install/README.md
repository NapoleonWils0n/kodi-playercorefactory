# ffmpeg set up


## arch linux ffmpeg

sudo pacman -S ffmpeg


## arch linux ffmpeg full

https://aur.archlinux.org/packages/ffmpeg-full/

	yaourt -S ffmpeg-full

edit pkg with nano during install 
remove the line that says  "--enable-libutvideo" from PKGBUILD.
then continue with install

## manual install

create a builds directory in your home
then create a directoru inside it called ffmpeg

cd into the ~/builds/ffmpeg directory, then follow instructions below

https://aur.archlinux.org/packages/ffmpeg-full/

download pkg snapshot

https://aur.archlinux.org/cgit/aur.git/snapshot/ffmpeg-full.tar.gz

	wget https://aur.archlinux.org/cgit/aur.git/snapshot/ffmpeg-full.tar.gz

untar the file
	
	tar -zxvf ffmpeg-full.tar.gz

copy the PKGBUILD UNREDISTRIBUTABLE.txt to the build directory

edit the PKGBUILD and remove libutvideo

download ffmpeg

http://ffmpeg.org/releases/ffmpeg-2.8.1.tar.bz2

	wget http://ffmpeg.org/releases/ffmpeg-2.8.1.tar.bz2

install
	makepkg -si

## ubuntu 

https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu

https://www.ffmpeg.org/download.html

## mac osx

https://www.ffmpeg.org/download.html

## windows

https://www.ffmpeg.org/download.html
