# windump capture network traffic

find your local ip address and network interface

### find your network interface

	windump -D

you should see a number next to each network interface

### find your ip address

i	pconfig /all


#### capture network traffic

	windump -i 1 -w windump.pcap -s 0 host 192.168.1.2


replace -i 1 with the number of your network interface

replace 192.168.1.2 with your ip address



