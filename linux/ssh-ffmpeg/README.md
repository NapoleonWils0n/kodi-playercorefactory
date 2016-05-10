# Sending ffmpeg commands over ssh

## playercorefactory.xml


### Command line

How to use the rip-ssh script

You need to specify username@sshserver or a hostname define in your ~/.ssh/config as the first argument to the rip-ssh script.  
The second argument passed to the script should be a text file contain a url, or a url in single quotes


* username at server

```
rip-ssh username@sshserver videourl.txt
```

* url in single quotes

```
rip-ssh username@sshserver 'http://example.com/video.m3u8' 
```

* ssh host name, where sshserver is a hostname in your ~/.ssh/config

```
rip-ssh sshserver videourl.txt
```

