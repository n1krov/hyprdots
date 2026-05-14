#!/bin/bash

# Directorio de fondos
DIR="$HOME/.config/hypr/wallpapers/"

# Seleccionar una imagen al azar
PICS=($(find "$DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.webp" \)))
RANDOM_PIC="${PICS[ $RANDOM % ${#PICS[@]} ]}"

# 1. Cambiar fondo con swww
awww img "$RANDOM_PIC" --transition-type random --transition-step 90 --transition-fps 60

# 2. Generar paleta con wallust
wallust run "$RANDOM_PIC"

# 3. Refrescar Waybar (SIGUSR2 recarga CSS sin reiniciar el proceso)
pkill -SIGUSR2 waybar

# 4. Actualizar Hyprlock (opcional, copiando el fondo a una ruta fija)
cp "$RANDOM_PIC" ~/.cache/current_wallpaper.jpg
