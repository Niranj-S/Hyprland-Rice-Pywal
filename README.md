# Hyprland Rice

A minimal Arch Linux setup built around Hyprland, with pywal-driven theming and a focus on a clean, distraction-free workflow.

Automatic wallpaper change upon switching workspaces

This is my daily driver configuration.

---

## Screenshots

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/dfdb9008-c3ef-4f48-8ceb-13132c1ced8c" />

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/cd183be8-aed4-4cd6-b1f8-9620adde08e4" />


<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/1554bbd2-8fcd-40d3-8d46-c4e5cfaad7f0" />




---

## System

- OS: Arch Linux  
- Window Manager: Hyprland  
- Terminal: kitty  
- Shell: bash  
- Bar: waybar  
- Launcher: wofi  
- File Manager: yazi    
- Color scheme: pywal  
- Wallpaper Manager: swww

---

## Theming

Colors are generated using pywal and applied consistently across the system.

- Wallpaper-driven color generation
- Shared color palette for kitty, waybar, wofi, and yazi
- Yazi colors are generated using a custom pywal template
- RGB Keyboard backlit sync with wallpaper (asusctl)

To add more wallpapers, add a similar bind line to hyprland's config file.

```bash
bind = $mainMod, 4, exec, swww img ~/Pictures/Wallpapers/neon_tokyo.webp --transition-duration 0.5   --transition-fps 144 && wal -i ~/Pictures/Wallpapers/neon_tokyo.webp
```

Replace the path with the wallpaper's

---

## Keybindings (selected)

| Key | Action |
|----|-------|
| Super + Enter | Open terminal |
| Super + D | Application launcher |
| Super + E | File manager |
| Print | Screenshot (select area, save to file, copy to clipboard) |

---

## Dotfiles

This repository uses a bare Git repository to manage dotfiles.

To check out the configuration on a new system:

```bash
git clone --bare git@github.com:Niranj-S/hyprland-rice.git ~/.dotfiles
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dots checkout
