#!/bin/bash

echo "Which files to sync? (press Enter to skip)"
echo ""

echo "1. i3 config"
read -p "Sync? (y/n): " i3_sync

echo "2. polybar config"
read -p "Sync? (y/n): " polybar_sync

echo "3. kitty config"
read -p "Sync? (y/n): " kitty_sync

echo "4. starship config"
read -p "Sync? (y/n): " starship_sync

echo "5. zshrc"
read -p "Sync? (y/n): " zshrc_sync

echo "6. wallpaper script"
read -p "Sync? (y/n): " wallpaper_sync

echo "7. wallpaper-picker script"
read -p "Sync? (y/n): " picker_sync

echo "8. dunst config"
read -p "Sync? (y/n): " dunst_sync

echo "9. gsimplecal config"
read -p "Sync? (y/n): " gsimplecal_sync

echo "10. gtk css"
read -p "Sync? (y/n): " gtk_sync

echo "11. sync-dotfiles script"
read -p "Sync? (y/n): " syncdots_sync


[ "$i3_sync" = "y" ] && cp ~/.config/i3/config ~/dotfiles/i3/config && echo "✅ i3 synced"
[ "$polybar_sync" = "y" ] && cp ~/.config/polybar/config.ini ~/dotfiles/polybar/config.ini && echo "✅ polybar synced"
[ "$kitty_sync" = "y" ] && cp ~/.config/kitty/kitty.conf ~/dotfiles/kitty/kitty.conf && echo "✅ kitty synced"
[ "$starship_sync" = "y" ] && cp ~/.config/starship.toml ~/dotfiles/starship/starship.toml && echo "✅ starship synced"
[ "$zshrc_sync" = "y" ] && cp ~/.zshrc ~/dotfiles/zshrc && echo "✅ zshrc synced"
[ "$wallpaper_sync" = "y" ] && cp ~/scripts/wallpaper.sh ~/dotfiles/scripts/wallpaper.sh && echo "✅ wallpaper script synced"

[ "$picker_sync" = "y" ] && cp ~/scripts/wallpaper-picker.sh ~/dotfiles/scripts/wallpaper-picker.sh && echo "✅ wallpaper-picker synced"
[ "$dunst_sync" = "y" ] && cp ~/.config/dunst/dunstrc ~/dotfiles/dunst/dunstrc && echo "✅ dunst synced"
[ "$gsimplecal_sync" = "y" ] && cp ~/.config/gsimplecal/config ~/dotfiles/gsimplecal/config && echo "✅ gsimplecal synced"
[ "$gtk_sync" = "y" ] && cp ~/.config/gtk-3.0/gtk.css ~/dotfiles/gtk-3.0/gtk.css && echo "✅ gtk css synced"
[ "$syncdots_sync" = "y" ] && cp ~/scripts/sync-dotfiles.sh ~/dotfiles/scripts/sync-dotfiles.sh && echo "✅ sync-dotfiles synced"

cd ~/dotfiles
git add .

echo ""
read -p "Enter commit message: " commit_message

git commit -m "$commit_message"

echo ""
echo "✅ Dotfiles synced!"
