#!/bin/bash

SOURCE_DIR="/home/$USER/Documentos"

BACKUP_DIR="/backups"

BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"


if [ ! -d "$BACKUP_DIR" ]; then
    sudo mkdir -p "$BACKUP_DIR"
    sudo chmod 777 "$BACKUP_DIR"
fi


echo "📦 Creando backup de $SOURCE_DIR en $BACKUP_FILE..."
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "✅ Backup creado exitosamente: $BACKUP_FILE"
else
    echo "❌ Error al crear el backup."
fi

