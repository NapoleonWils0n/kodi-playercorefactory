# youtube-dl batch download files

### youtube-dl site

https://rg3.github.io/youtube-dl/download.html


### Mac osx install

Download youtube-dl

	curl https://yt-dl.org/downloads/2015.11.02/youtube-dl -o youtube-dl

create a bin folder in your home directory

edit your ~/.bash_profile and the following code

	if [ -d "$HOME/bin" ] ; then
	        PATH="$HOME/bin:$PATH"
	fi

move youtube-dl into the bin directory and make it executable

	chmod + ~/bin/youtube-dl

source your ~/.bash_profile to pick up the youtube-dl install

	source ~/.bash_profile


## batch download files

batch download files from a text file using youtube-dl and the -a option

	youtube-dl -a textfile.txt


list sites that youtube-dl can download from

	youtube-dl --list-extractors > youtube-dl-extractors.txt