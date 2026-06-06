#!/bin/bash
export HOME=/home/abinda

nitrogen ~/Pictures/wallpaper/

# Pilih wallpaper dengan nsxiv thumbnail mode
WALLPAPER=$(cat ~/.config/nitrogen/bg-saved.cfg | grep "file=" | head -1 | cut -d'=' -f2)

# Kalau tidak ada yang dipilih, keluar
if [ -z "$WALLPAPER" ]; then
    exit 0
fi

# Apply wallpaper dan update tema
$HOME/anaconda3/bin/wal -i "$WALLPAPER"

# Load warna pywal
source $HOME/.cache/wal/colors.sh

# Update starship
cat > $HOME/.config/starship.toml << EOF
"\$schema" = 'https://starship.rs/config-schema.json'
format = """[\ue0b6](fg:$color1)[ \$username ](bg:$color1 fg:$color0)[\ue0b0](fg:$color1 bg:$color2)[ \$directory ](bg:$color2 fg:$color0)[\ue0b0](fg:$color2 bg:$color0)[ ♥ \$time ](bg:$color0 fg:$color1)[\ue0b4](fg:$color0)\$character"""
[username]
show_always = true
format = "\$user"
[directory]
truncation_length = 1
format = "\$path"
[character]
success_symbol = ""
error_symbol = ""
[time]
disabled = false
format = "\$time"
time_format = "%H:%M"
EOF

# Update dunst colors
cat > $HOME/.config/dunst/dunstrc << EOF
[global]
    monitor = 0
    follow = none
    width = 320
    height = 120
    origin = top-right
    offset = 15x50
    notification_limit = 5
    padding = 15
    horizontal_padding = 15
    frame_width = 2
    gap_size = 8
    corner_radius = 12
    font = JetBrainsMono Nerd Font 10
    format = "<b>%s</b>\n%b"
    word_wrap = yes
    icon_position = left
    min_icon_size = 32
    max_icon_size = 32
[urgency_low]
    background = "$color0"
    foreground = "$color7"
    frame_color = "$color1"
    timeout = 5
[urgency_normal]
    background = "$color0"
    foreground = "$color7"
    frame_color = "$color2"
    timeout = 10
[urgency_critical]
    background = "$color0"
    foreground = "$color7"
    frame_color = "$color3"
    timeout = 0
EOF

# Restart dunst dan polybar
pkill dunst
dunst &
killall polybar
$HOME/.config/polybar/launch.sh &
