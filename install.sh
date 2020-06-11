#!bin/bash
clear

if [ "$EUID" -ne 0 ]
	then
		echo "To run this script, you have to be ROOT!!"
		echo "Exit"
		echo ""
		echo ""
	exit

	else	
		apt install python python3-terminaltables python3-tabulate xz-utils -y
		cp omakiller.tar.xz /root/omakiller-tmp.tar.xz
		cd
		tar -xf omakiller-tmp.tar.xz
		rm omakiller-tmp.tar.xz 

		git clone https://github.com/LionSec/xerosploit
		cd xerosploit && sudo python install.py
fi

exit
