# 🌸 dotfiles-i3

> My personal i3wm rice on Linux Mint 22 with dynamic colorscheme powered by Pywal

<!-- ![screenshot](screenshot.png)-->

---

## 🖥️ Setup

| Component | Tool |
|-----------|------|
| OS | Linux Mint 22 |
| WM | i3wm 4.23 |
| Bar | Polybar |
| Terminal | Kitty |
| Prompt | Starship |
| Colorscheme | Pywal |
| Launcher | Rofi |
| Compositor | Picom |
| File Manager | Nautilus |
| Screenshot | Scrot |

---

## ✨ Features

- 🎨 **Dynamic colorscheme** — wallpaper changes, terminal & polybar colors update automatically using Pywal
- 🖼️ **Random wallpaper** — press `Mod + Shift + X` to switch wallpaper randomly
- 📊 **Polybar** — transparent status bar showing RAM, CPU, Battery, WiFi, Volume
- 🚀 **Starship prompt** — modern terminal prompt with colors matching the wallpaper theme
- 🪟 **i3-gaps** — gaps between windows for a cleaner look
- 🔲 **Autotiling** — automatic window layout adjustment
- 🌙 **Picom** — transparency effects and rounded corners

---

## 📦 Dependencies

```bash
# Update system
sudo apt update

# Install i3 and main tools
sudo apt install i3 i3status i3lock rofi feh picom nitrogen polybar kitty scrot brightnessctl -y

# Install autotiling
pip3 install autotiling --break-system-packages

# Install pywal
pip3 install pywal --break-system-packages

# Install Starship
curl -sS https://starship.rs/install.sh | sh

# Install JetBrainsMono Nerd Font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
unzip JetBrainsMono.zip
fc-cache -fv
```

---

## 🚀 Installation

```bash
# Clone the repo
git clone https://github.com/abindacarmo/dotfiles-i3.git
cd dotfiles-i3

# Copy config files
cp i3/config ~/.config/i3/config
cp polybar/config.ini ~/.config/polybar/config.ini
cp polybar/launch.sh ~/.config/polybar/launch.sh
cp kitty/kitty.conf ~/.config/kitty/kitty.conf
cp starship/starship.toml ~/.config/starship.toml
cp zshrc ~/.zshrc

# Copy wallpaper script
mkdir -p ~/scripts
cp scripts/wallpaper.sh ~/scripts/wallpaper.sh
chmod +x ~/scripts/wallpaper.sh
chmod +x ~/.config/polybar/launch.sh
```

---

## ⌨️ Keybindings

| Shortcut | Action |
|----------|--------|
| `Mod + G` | Open terminal (Kitty) |
| `Mod + D` | Open Rofi launcher |
| `Mod + Q` | Close window |
| `Mod + Tab` | Switch window with Rofi |
| `Mod + Shift + X` | Random wallpaper + update theme |
| `Mod + F` | Toggle fullscreen |
| `Mod + Shift + Space` | Toggle floating |
| `Mod + H` | Split horizontal |
| `Mod + V` | Split vertical |!
| `Mod + 1-9` | Switch workspace |
| `Mod + Shift + 1-9` | Move window to workspace |
| `Print` | Screenshot fullscreen |
| `Mod + Print` | Screenshot selected area |
| `Mod + Shift + R` | Reload i3 config |
| `Mod + Shift + E` | Exit i3 |

---

## 🎨 Wallpaper & Colorscheme

All wallpapers are stored in `~/Pictures/wallpaper/`. Pywal automatically generates a colorscheme from the selected wallpaper and applies it to:

- Kitty terminal
- Polybar
- Starship prompt
- Rofi

To manually change wallpaper:
```bash
wal -i /path/to/wallpaper.jpg
```

To restore last colorscheme after reboot:
```bash
wal -R
```

---

## 📁 File Structure

```
dotfiles-i3/
├── i3/
│   └── config
├── polybar/
│   ├── config.ini
│   └── launch.sh
├── kitty/
│   └── kitty.conf
├── starship/
│   └── starship.toml
├── scripts/
│   └── wallpaper.sh
├── zshrc
├── screenshot.png
├── LICENSE
└── README.md
```

---

## 💡 Tips

- Store wallpapers in `~/Pictures/wallpaper/` with `.jpg` or `.png` format
- Run `wal -R` to restore the last colorscheme after reboot
- Edit `~/.config/i3/config` to add custom keybindings
- Make sure to install all dependencies before copying the config files

---

## 🤝 Contributing

Feel free to open an issue or pull request if you have suggestions or improvements!

---

## 📝 License

MIT License — feel free to use and modify!

---

<p align="center">Made with excitement and love by <a href="https://github.com/abindacarmo">abinda</a> from Timor-Leste 🇹🇱</p>
