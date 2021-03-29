#!/bin/bash
sudo netstat -lpn |grep :8080

if [[ $? -eq 1 ]]; then
	echo "Server doesn't work"
	echo "Run server?[y/n]"
	read COMM
	if [[ "$COMM" == "y" ]]; then
		cd "/home/user/Документы/apache-tomcat-10.0.4/bin"
		./startup.sh
		xdg-open http://localhost:8080/Lab1_war/
	fi
else
	echo "Server is working"
		echo "Stop server?[y/n]"
	read COMM
	if [[ "$COMM" == "y" ]]; then
		cd "/home/user/Документы/apache-tomcat-10.0.4/bin"
		./shutdown.sh
	fi
fi
