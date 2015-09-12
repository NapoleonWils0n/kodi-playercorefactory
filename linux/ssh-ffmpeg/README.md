# ssh ffmpeg


set up your ssh keys and copy your ssh keys to your ssh server
install ffmpeg on your ssh server

edit your ~/.ssh/config 
im using vim to edit the file but you can use any text editor

	vim ~/.ssh/config

and add the code below change username and ip to match your server

	# ffmpeg ssh server
	Host ffmpegserver
	User username
	Port 22
	HostName 192.168.1.2

in the playercorefactory.xml you will see ffmpegserver which is the Host in ~/.ssh/config

	<filename>/usr/bin/ssh</filename>
	<args>ffmpegserver

you can also use the user@server format as well

	<filename>/usr/bin/ssh</filename>
	<args>user@example.com
