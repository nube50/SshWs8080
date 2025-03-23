#!/bin/bash
echo ""
echo "Descargando paquetes necesarios";
echo ""
#Instalar pyhton3
sudo apt update
sudo dpkg --configure -a
sudo apt install screen
sudo apt install python2 -y

echo "Descargando archivo python";
#Descargar archivo websocket python
sudo mkdir -p /etc/SSH-ws
wget -q -O /etc/SSH-ws/websocket973.py https://raw.githubusercontent.com/ETH973/SshWS80/websocket973.py
chmod +x /etc/SSH-ws

clear

screen -dmS ws tunnel /etc/SSH-ws/websocket973.py 80
echo "Instalacion completada :)";