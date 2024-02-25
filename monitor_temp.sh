#!/bin/bash

# Diretório onde os arquivos de log serão armazenados
LOG_DIR="/home/william-coelho/Documents/MTEMP"
# Prefixo do nome do arquivo de log
LOG_PREFIX="Temp"
# Extensão do arquivo de log
LOG_EXTENSION="log"
# Defina o intervalo em segundos (exemplo: 10 segundos)
INTERVAL=10

# Crie um nome de arquivo com timestamp
TIMESTAMP=$(date "+%Y-%m-%d-%H:%M:%S")
LOG_FILE="$LOG_DIR/$LOG_PREFIX-$TIMESTAMP.$LOG_EXTENSION"

# Loop infinito para monitorar a temperatura
while true; do
    # Execute o comando 'sensors' e anexe a saída ao arquivo de log
    sensors >> "$LOG_FILE"
    echo "-----------------------END/START----------------------" >> "$LOG_FILE"
    echo $(date "+%Y-%m-%d %H:%M:%S") >> "$LOG_FILE"
    # Espere pelo intervalo especificado
    sleep $INTERVAL
clear
echo "O programa esta em execução, não feche esse terminal! "
done
