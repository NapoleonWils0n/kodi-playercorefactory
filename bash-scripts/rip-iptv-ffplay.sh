#!/bin/bash

# Change directory to where .text files are

echo ' ______________________________________ ';
echo '/ Enter the number next to the channel \';
echo '\ you want to play with ffplay         /';
echo ' -------------------------------------- ';
echo '        \   ^__^                        ';
echo '         \  (oo)\_______                ';
echo '            (__)\       )\/\            ';
echo '                ||----w |               ';
echo '                ||     ||               ';


ConfigDirectory="$HOME/Documents/iptv"
cd $ConfigDirectory

# Create the prompt

PS3="Enter a number, or press '1' to quit: " #set the prompt

OLD_IFS=${IFS}; #ifs space seperator
IFS=$'\t\n' #change ifs seperator from spaces to new line


# Find the openvpn config files in the $ConfigDirectory, and print just the basename

fileList=$(find $ConfigDirectory -maxdepth 1 -type f -name "*.txt" -exec basename -s .txt {} \;)

select fileName in Quit $fileList; do
	case $fileName in
	Quit )
	echo Quitting
	IFS=${OLD_IFS}
	break
	;;
	$fileName )
	rip-ffplay.sh ${fileName}.txt
	break
	;;
	* )
	echo “Invalid Selection, enter a number”
	;;
	esac
done