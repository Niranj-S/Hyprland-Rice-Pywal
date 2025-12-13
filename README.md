# Hyprland Rice

A minimal Arch Linux setup built around Hyprland, with pywal-driven theming and a focus on a clean, distraction-free workflow.

Automatic wallpaper change upon switching workspaces

This is my daily driver configuration.

---

## Screenshots

![Desktop](Screenshots/1.png)

![Terminal](Screenshots/2.png)

![Launcher](Screenshots/3.png)



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

---

## Theming

Colors are generated using pywal and applied consistently across the system.

- Wallpaper-driven color generation
- Shared color palette for kitty, waybar, wofi, and yazi
- Yazi colors are generated using a custom pywal template

Generated cache files are intentionally not tracked in this repository.

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
