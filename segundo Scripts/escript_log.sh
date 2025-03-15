#!/bin/bash

# Colores para resaltar el texto
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # Sin color

echo -e "${GREEN}🔍 Analizador de Logs (/var/log/syslog)${NC}"
echo -n "👉 Ingrese la palabra clave a buscar (por defecto: error): "
read keyword

# Si el usuario no ingresa nada, usar "error" como palabra clave
keyword=${keyword:-error}

echo -e "\n${GREEN}📋 Resultados para la palabra clave: ${RED}$keyword${NC}\n"

# Buscar y formatear las líneas que contienen la palabra clave
grep -i "$keyword" /var/log/syslog | awk '{print $1, $2, $3, $6, $7, $8}' | sed 's/^/🔹 /'

# Contar la cantidad de ocurrencias
count=$(grep -ic "$keyword" /var/log/syslog)

echo -e "\n${GREEN}📊 Total de ocurrencias encontradas: ${RED}$count${NC}"
