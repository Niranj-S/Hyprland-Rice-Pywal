#!/usr/bin/env bash
LOG="$HOME/.cache/hypr/workspace-wall.log"

WALLS="$HOME/Pictures/Wallpapers"

case "$1" in
  1) wp="$WALLS/neon_tokyo.webp" ;;
  2) wp="$WALLS/raiden.png" ;;
  *) wp="$WALLS/neon_tokyo.webp" ;;
esac

echo "$(date +%F %T) setting wallpaper: $wp" >>"$LOG"
swww img "$wp" --transition-type any --transition-duration 0.5 >>"$LOG" 2>&1
