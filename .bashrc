#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


#Custom Aliases

alias cls='clear'
alias hyprconf='nano ~/.config/hypr/hyprland.conf'
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

#pywal source
[ -f ~/.cache/wal/colors.sh ] && source ~/.cache/wal/colors.sh

