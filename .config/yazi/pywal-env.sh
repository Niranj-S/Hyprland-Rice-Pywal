#!/usr/bin/env bash

WAL="$HOME/.cache/wal/colors.json"

export WAL_BG=$(jq -r '.special.background' "$WAL")
export WAL_FG=$(jq -r '.special.foreground' "$WAL")

export WAL_BLACK=$(jq -r '.colors.color0' "$WAL")
export WAL_RED=$(jq -r '.colors.color1' "$WAL")
export WAL_GREEN=$(jq -r '.colors.color2' "$WAL")
export WAL_YELLOW=$(jq -r '.colors.color3' "$WAL")
export WAL_BLUE=$(jq -r '.colors.color4' "$WAL")
export WAL_MAGENTA=$(jq -r '.colors.color5' "$WAL")
export WAL_CYAN=$(jq -r '.colors.color6' "$WAL")
export WAL_WHITE=$(jq -r '.colors.color7' "$WAL")
