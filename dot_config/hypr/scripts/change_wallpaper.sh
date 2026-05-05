#!/bin/bash

# Directorio de fondos de pantalla
DIR="$HOME/.config/hypr/wallpapers/"

# Verificar si el directorio existe y contiene imágenes
if [ ! -d "$DIR" ]; then
    echo "El directorio $DIR no existe."
    exit 1
fi

# Obtener una lista de imágenes válidas
PICS=($(find "$DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.webp" \)))

if [ ${#PICS[@]} -eq 0 ]; then
    echo "No se encontraron fondos de pantalla en $DIR"
    exit 1
fi

# Seleccionar una imagen al azar
RANDOM_PIC="${PICS[ $RANDOM % ${#PICS[@]} ]}"

# Cambiar el fondo con awww usando una transición aleatoria
awww img "$RANDOM_PIC" --transition-type random --transition-step 90 --transition-fps 60
