#!/bin/bash
# Función para imprimir mensajes
print_message() {
    echo ""
    echo "$1"
    echo ""
}
# Actualizar e instalar paquetes
print_message "Descargando paquetes necesarios"
apt update -y
apt install -y screen python2 wget
# Descargar archivo Python
print_message "Descargando archivo python"
wget https://raw.githubusercontent.com/ETH973/Sshws80/main/websocket973.py
# Dar permisos de ejecución al archivo
chmod +x websocket973.py
# Limpiar la pantalla
clear
# Iniciar el servicio en una sesión de screen
print_message "Iniciando servicio en screen"
screen -dmS ws_tunnel python2 websocket973.py 8080
#User Creado
print_message "Usuario: Hola"
print_message "Contraseña: Mundo"
useradd -e 2025-12-31 Hola && echo "Hola:Mundo" | chpasswd
# Mensaje final
print_message "Instalación completada :)"
