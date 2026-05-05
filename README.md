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

### Comando Rápido de Instalación (Ejemplo)

```bash
# Paquetes oficiales
sudo pacman -S hyprland waybar pipewire wireplumber pipewire-audio pipewire-alsa pipewire-pulse polkit-kde-agent network-manager-applet brightnessctl dunst dolphin wl-clipboard grim slurp hyprlock hypridle chezmoi

# Paquetes AUR (usando yay)
yay -S rofi-wayland swww hyprshot
```

---

## 🚀 Cómo usar este repositorio con Chezmoi

`chezmoi` es una herramienta que te permite gestionar tus dotfiles manteniendo tu carpeta `.config` limpia.

### 1. Inicializar Chezmoi
Si es la primera vez que usas chezmoi en la máquina, inicialízalo especificando la ruta de este repositorio (si lo has subido a GitHub):

```bash
# Si tienes el repositorio subido a tu GitHub
chezmoi init https://github.com/tu-usuario/hyprland-desktop.git

# Si tienes la carpeta en local (ej. en ~/programs/hyprland-desktop)
# Puedes agregarlo a chezmoi con:
chezmoi init
chezmoi add ~/.config/hypr/hyprland.conf
# (etc.)
```

*(Nota: La estructura de este repo está armada para que los archivos estén dentro de la carpeta `dot_config`, lo que chezmoi traduce como `~/.config` en tu sistema).*

### 2. Aplicar las configuraciones
Una vez que el repositorio está inicializado en tu máquina, aplica los cambios para que se copien a sus destinos reales:

```bash
chezmoi apply -v
```

Esto copiará de forma segura los archivos de configuración de Hyprland, Waybar y demás herramientas a tu directorio `~/.config/`.

### 3. Actualizar configuraciones
Si en el futuro haces un cambio local en tu `~/.config/hypr/hyprland.conf`, debes añadirlo a chezmoi y actualizar el repositorio:

```bash
chezmoi add ~/.config/hypr/hyprland.conf
chezmoi cd
git add .
git commit -m "Actualizando configuración de Hyprland"
git push
```

---

## 🎨 Componentes Configurados

- **Hyprland**: Atajos de teclado, reglas de ventanas, animaciones personalizadas y carga de inicio (`autostart`).
- **Waybar**: Un diseño limpio con módulos de red, batería, reloj y espacios de trabajo.
