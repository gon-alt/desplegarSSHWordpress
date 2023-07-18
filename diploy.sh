#!/bin/bash

# Variables de configuración
usuario="server1"
direccion_ip="192.168.100.206"
ruta_destino=""  # Ruta en el servidor donde se colocará el Docker Compose descargado
repo_github="https://github.com/gon-alt/DespliegueWordpress"  # URL del repositorio de GitHub que contiene el Docker Compose

# Conexión SSH y despliegue del Docker Compose
ssh $usuario@$direccion_ip << EOF
echo "Conectado al equipo remoto"
echo "Descargando el Docker Compose desde GitHub..."
git clone $repo_github $ruta_destino
cd $ruta_destino
echo "Iniciando los servicios con Docker Compose..."
echo kali | sudo -S docker-compose up -d
EOF


