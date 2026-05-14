# Hyprland Desktop (Dynamic Rice)

Este repositorio contiene los archivos de configuración (dotfiles) para un entorno de escritorio en **Hyprland** altamente dinámico y estético. Utiliza **Wallust** para generar paletas de colores que reaccionan automáticamente al fondo de pantalla.

## 📦 Instalación

Sigue estos pasos para replicar el entorno en una instalación limpia de **Arch Linux**.

### 1. Instalar Dependencias (Pacman)
Ejecuta el siguiente comando para instalar el núcleo del sistema y las utilidades esenciales:

```bash
sudo pacman -S --needed \
    hyprland waybar hyprlock hypridle \
    pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse \
    network-manager-applet polkit-kde-agent brightnessctl \
    dunst dolphin kitty btop wofi \
    wl-clipboard grim slurp hyprshot \
    chezmoi jq unzip ttf-hack-nerd
```

### 2. Instalar Herramientas de Estética (AUR)
Usa un helper como `yay` o `paru` para instalar las herramientas de personalización dinámica:

```bash
yay -S --needed wallust-git awww-git ttf-inter
```

---

## 🚀 Configuración con Chezmoi

1. **Inicializar y aplicar:**
   ```bash
   chezmoi init https://github.com/tu-usuario/hyprland-desktop.git
   chezmoi apply -v
   ```

2. **Inicializar el Rice:**
   Ejecuta el script de wallpaper por primera vez para generar la paleta de colores inicial:
   ```bash
   ~/.config/hypr/scripts/change_wallpaper.sh
   ```

---

## ⌨️ Atajos de Teclado Principales

### Aplicaciones y Sistema
- `SUPER + RETURN`: Terminal (Kitty)
- `SUPER + W`: Cerrar ventana activa
- `SUPER + R`: Lanzador de aplicaciones (Wofi)
- `SUPER + E`: Explorador de archivos (Dolphin)
- `SUPER + L`: Bloquear pantalla (Hyprlock)
- `ALT + B`: Cambiar wallpaper (Dinámico con Wallust)
- `SUPER + SHIFT + R`: Recargar Waybar (Aplica cambios de CSS)

### Gestión de Ventanas
- `SUPER + hjkl`: Cambiar el foco
- `SUPER + SHIFT + hjkl`: Redimensionar ventana
- `SUPER + CTRL + hjkl`: Mover ventana
- `SUPER + ALT + hjkl`: Intercambiar posición de ventanas (Swap)
- `SUPER + F`: Pantalla completa
- `SUPER + V`: Alternar modo flotante

### Capturas (Hyprshot)
- `PRINT`: Captura de pantalla completa
- `SUPER + PRINT`: Captura de ventana activa
- `SUPER + SHIFT + PRINT`: Captura de región

---

## 🎨 Características del Rice
- **Glassmorphism:** Waybar con efecto de cristal esmerilado y desenfoque real.
- **Dynamic Colors:** Los colores de la barra, bordes y acentos cambian según el wallpaper usando Wallust.
- **Modularidad:** Configuraciones divididas en `~/.config/hypr/conf/` para fácil mantenimiento.
