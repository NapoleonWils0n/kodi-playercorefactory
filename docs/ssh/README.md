# Sending ffmpeg commands over ssh

## playercorefactory.xml

copy the ssh section of the playercorefactory.xml to your playercorefactory.xml

edit the playercorefactory.xml and change user@sshserver to the username and server domain name or ip address  
you can also use a hostname defined in your ~/.ssh/config instead of the username@sshserver syntax

### Command line

How to use the rip-ssh script
Make sure you have set up ssh keys with your ssh server for password less login

You need to specify username@sshserver or a hostname define in your ~/.ssh/config as the first argument to the rip-ssh script.  
The second argument passed to the script should be a text file contain a url, or a url in single quotes


* username at server

```
rip-ssh username@sshserver videourl.txt
```

* specify a duration for the recording
* use the hours minutes seconds syntax

record for 30 minutes

```
rip-ssh username@sshserver videourl.txt -t 00:30:00
```

* url in single quotes

```
rip-ssh username@sshserver 'http://example.com/video.m3u8' 
```

* ssh host name, where sshserver is a hostname in your ~/.ssh/config

```
rip-ssh sshserver videourl.txt
```

### Monitor the ffmpeg process on the ssh server

ssh into your server and then use the watch command with ps to show the start time of ffmpeg processes,  
and how long they have been recording

```
watch -n 1 "ps -C ffmpeg -o pid,comm,cmd,start,etime"
```
