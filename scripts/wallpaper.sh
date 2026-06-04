#!/bin/bash

#export HOME=/home/abinda

WALLPAPER=$(find /home/abinda/Pictures/wallpaper/ -type f \( -name "*.jpg" -o -name "*.png" \) | shuf -n1)
/home/abinda/anaconda3/bin/wal -i "$WALLPAPER"

#sleep 1

# Load warna pywal
source ~/.cache/wal/colors.sh

# Update starship dengan warna pywal
cat > ~/.config/starship.toml << EOF
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

# Restart polybar
killall polybar
~/.config/polybar/launch.sh &
