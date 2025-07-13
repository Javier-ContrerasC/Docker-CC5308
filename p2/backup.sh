#!/bin/bash
espacio_disponible_tmp=$(df /tmp | awk 'END {print $4}')

# Checkea si hay suficiente espacio 
if [ "espacio_disponible_tmp" -lt 1048576 ]; then
    echo "Error: debe haber al menos 1GB de espacio libre en /tmp."
    exit 1
fi

# Formato de fecha 
fecha_actual=$(date +%Y-%m-%d-%H%M%S)

docker exec mariadb mariadb-dump -uroot -pcc5308 -A > /tmp/dump.sql

# Crear archivo tar.gz, que contenrá el dump en el formato indicado y con el nombre indicado
tar -czf /tmp/backup-$fecha_actual.tar.gz -C /tmp dump.sql