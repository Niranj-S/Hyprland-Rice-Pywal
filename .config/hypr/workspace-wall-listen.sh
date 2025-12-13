#!/usr/bin/env bash
LOG="$HOME/.cache/hypr/workspace-wall.log"
mkdir -p "$(dirname "$LOG")"
echo "$(date +%F %T) listener starting" >>"$LOG"

# Start swww-daemon if not running
if ! pgrep -x swww-daemon >/dev/null; then
    echo "$(date +%F %T) starting swww-daemon" >>"$LOG"
    swww-daemon >>"$LOG" 2>&1 &
    sleep 0.3
fi

# New Hyprland event feed (JSON)
hyprctl -m -j events 2>>"$LOG" \
  | jq -r 'select(.event == "workspace") | .id' \
  | while read -r ws; do
        echo "$(date +%F %T) workspace changed: $ws" >>"$LOG"
        ~/.config/hypr/workspace-wall.sh "$ws"
    done
