#!/bin/bash

# Archivo de log
LOG_FILE="/var/log/system_stats.log"

# Crea el archivo de log si no existe
if [ ! -f $LOG_FILE ]; then
    sudo touch $LOG_FILE
    sudo chmod 666 $LOG_FILE
fi

while true; do
    echo "========================" | tee -a $LOG_FILE
    echo "  Monitor de Recursos   " | tee -a $LOG_FILE
    echo "========================" | tee -a $LOG_FILE

    # Fecha y Hora
    echo -e "\n📅 Fecha y Hora: $(date)" | tee -a $LOG_FILE

    # Uso de CPU
    echo -e "\n🔄 Uso de CPU:" | tee -a $LOG_FILE
    top -bn1 | grep "Cpu(s)" | awk '{print "Uso: " $2 + $4 "%"}' | tee -a $LOG_FILE

    # Uso de Memoria RAM
    echo -e "\n📊 Uso de Memoria RAM:" | tee -a $LOG_FILE
    free -h | awk '/Mem/ {print "Usada: " $3 " / Total: " $2}' | tee -a $LOG_FILE

    # Espacio en Disco
    echo -e "\n💾 Espacio en Disco:" | tee -a $LOG_FILE
    df -h --total | grep "total" | awk '{print "Usado: " $3 " / Total: " $2}' | tee -a $LOG_FILE

    # Uso de Red (si ifstat está instalado)
    if command -v ifstat &> /dev/null; then
        echo -e "\n🌐 Uso de Red:" | tee -a $LOG_FILE
        ifstat 1 1 | tail -n 1 | awk '{print "Subida: " $1 " KB/s, Bajada: " $2 " KB/s"}' | tee -a $LOG_FILE
    else
        echo -e "\n🌐 Uso de Red: ifstat no está instalado." | tee -a $LOG_FILE
    fi

    # Tiempo de actividad del sistema (Uptime)
    echo -e "\n⏱️ Tiempo de actividad:" | tee -a $LOG_FILE
    uptime -p | tee -a $LOG_FILE

    echo -e "\n========================" | tee -a $LOG_FILE

    # Espera 5 segundos antes de actualizar
    sleep 5
done
