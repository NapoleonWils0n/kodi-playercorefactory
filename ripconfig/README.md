# ripconfig


## Set up

Copy the ripconfig.txt file to your home folder

### Edit the ripconfig.txt file

Override the default recording destination for the rip-record,  
rip-record-reconnect and rip-ssh scripts by adding a directory path between the double quotes in the variable

Use Notepad++ on Windows to edit the ripconfig.txt file

#### rip-record and rip-record-reconnect

```
ripdir=""
```

For example to change directory to $HOME/Videos/

* Linux

```
ripdir="$HOME/Videos/"
```

or you can type the full path, where username is your username

```
ripdir="/home/username/Videos/"
```

* Windows

```
ripdir="$USERPROFILE/Videos/"
```

Default recording location Linux / Mac: $HOME/Desktop/  
Default recording location Windows: $USERPROFILE/Desktop/

#### rip-ssh

```
ripssh=""
```

For example to change directory to $HOME/Videos/

```
ripdir="$HOME/Videos/"
```

or you can type the full path, where username is your username

```
ripdir="/home/username/Videos/"
```

Default recording location is $HOME/

### Rename the ripconfig.txt file 

rename the ripconfig.txt file and add a dot prefix,  
and then save it in your home directory

* rename the ripconfig.txt file with the terminal

```
mv ripconfig.txt .ripconfig.txt
```
