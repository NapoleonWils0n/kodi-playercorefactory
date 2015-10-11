# tcpdump capture network traffic

find your local ip address and network interface

using the ip command

	ip a

using the ifconfig command 

ifconfig

	sudo tcpdump -s 0 host 192.168.1.3 -i wlan0 -w wlan0-$(date +"%H-%M-%m-%d-%y").pcap


## install wireshark

dont run wireshark as root

add your user to wireshark group, 
replace username with your username

	sudo gpasswd -a username wireshark


run the pcap-link-extractor script to extract the http links from the pcap file