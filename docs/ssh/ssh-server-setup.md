### Set up server and install ffmpeg

#### Arch linux 

* install openssh ffmpeg rtmpdump libfdk-aac

```
sudo pacman -S openssh ffmpeg rtmpdump libfdk-aac
```

#### Debian and Ubuntu

* install openssh-server ffmpeg rtmpdump fdk-aac

```
sudo apt install -y openssh-server ffmpeg rtmpdump fdk-aac
```

#### secure ssh to only allow ssh keys 

* edit the sshd_config

```
sudo vim /etc/ssh/sshd_config
```

```
PermitRootLogin no
ChallengeResponseAuthentication no
PasswordAuthentication no
UsePAM no
```
