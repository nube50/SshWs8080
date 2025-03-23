#!/bin/bash
apt update -y
apt install -y python2
chmod +x websocket973.py
screen -dmS ws_tunnel python2 websocket973.py 8080
useradd -e 2025-12-31 Hola && echo "Hola:Mundo" | chpasswd
