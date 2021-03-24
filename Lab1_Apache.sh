#!/bin/bash
sudo apt update
sudo apt install apache2
sudo systemctl stop apache2
echo "Введите команду: запустить сервер(start) или остановить(stop):"
read comm
if [[ "$comm" == "start" ]]; then
	sudo systemctl start apache2
else
	sudo systemctl stop apache2
fi