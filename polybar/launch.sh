#!/bin/bash

# Merge pywal colors ke xrdb dulu
xrdb -merge ~/.cache/wal/colors.Xresources

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar top 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
