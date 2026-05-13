# Hyprland Desktop

Este repositorio contiene los archivos de configuración (dotfiles) para armar un entorno de escritorio en **Hyprland** desde cero. Está diseñado específicamente para **Arch Linux** y utiliza **chezmoi** para gestionar las configuraciones de manera limpia y replicable.

## 📦 Requisitos Previos

Antes de aplicar estas configuraciones, debes instalar los programas principales en tu sistema Arch Linux.

### Programas y Herramientas a Instalar

Puedes instalar la mayoría de estos paquetes desde los repositorios oficiales y AUR (usando un helper como `yay` o `paru`).

**Núcleo:**
- `hyprland`: El compositor Wayland.
- `waybar`: La barra de estado superior.

**Sesión y Utilidades del Sistema:**
- `pipewire`, `wireplumber`, `pipewire-audio`, `pipewire-alsa`, `pipewire-pulse`: Servidor de audio moderno.
- `polkit-kde-agent`: Agente de autenticación gráfica para pedir contraseñas.
- `network-manager-applet`: Icono de red en la barra (`nm-applet`).
- `brightnessctl`: Utilidad para controlar el brillo en laptops.

**Interfaz y Apariencia:**
- `rofi-wayland`: Lanzador de aplicaciones dinámico.
- `swww`: Demonio ultrarrápido para manejar fondos de pantalla (soporta GIFs/transiciones).
- `dunst`: Gestor de notificaciones ligero y personalizable.
- `dolphin`: Gestor de archivos gráfico avanzado (KDE).

**Herramientas Wayland (Capturas, Portapapeles, etc.):**
- `wl-clipboard`: Para usar el portapapeles desde línea de comandos (necesario para copiar texto).
- `grim` y `slurp`: Para realizar capturas de pantalla parciales o completas.
- `hyprshot`: Utilidad que simplifica tomar capturas en Hyprland usando grim/slurp.
- `hyprlock` e `hypridle`: Pantalla de bloqueo y gestión de inactividad (apagado de pantalla).
- `chezmoi`: El gestor de dotfiles.

### 🚀 Instalación Rápida de Dependencias

Antes de aplicar los dotfiles, ejecutá este comando para instalar todo lo necesario:

```bash
sudo pacman -S --needed hyprland waybar hyprlock pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse polkit-kde-agent network-manager-applet brightnessctl dunst dolphin wl-clipboard grim slurp hyprshot swww wofi chezmoi kitty rtop
```

---

## 🚀 Cómo usar este repositorio con Chezmoi

`chezmoi` es una herramienta que te permite gestionar tus dotfiles manteniendo tu carpeta `.config` limpia.

### 1. Inicializar Chezmoi
Si es la primera vez que usas chezmoi en la máquina, inicialízalo especificando la ruta de este repositorio (si lo has subido a GitHub):

```bash
# Si tienes el repositorio subido a tu GitHub
chezmoi init https://github.com/tu-usuario/hyprland-desktop.git
```

### 2. Aplicar la configuración
Una vez inicializado, puedes ver qué cambios se aplicarían:

```bash
chezmoi diff
```

Y si estás de acuerdo, aplícalos:

```bash
chezmoi apply -v
```

---

## ⌨️ Atajos de Teclado Principales

- `SUPER + RETURN`: Abrir Terminal (Kitty)
- `SUPER + W`: Cerrar ventana activa
- `SUPER + L`: Bloquear pantalla (Hyprlock)
- `SUPER + R`: Lanzador de aplicaciones (Wofi/Rofi)
- `SUPER + E`: Explorador de archivos (Dolphin)
- `SUPER + V`: Alternar modo flotante
- `SUPER + F`: Pantalla completa
- `ALT + B`: Cambiar fondo de pantalla aleatoriamente
- `PRINT`: Captura de pantalla completa
- `SUPER + SHIFT + S`: Captura de pantalla de región (al portapapeles)

---

## 🎨 Personalización

Las configuraciones están organizadas de forma modular en `dot_config/hypr/conf/`.
Puedes ajustar los colores editando los archivos de temas en `dot_config/waybar/themes/`.
