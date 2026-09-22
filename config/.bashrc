#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias kdreload='setxkbmap -model pc105 -layout us,ru -option grp:win_space_toggle'
alias i3.='vim ~/.config/i3/'
alias polybar.='vim ~/.config/polybar/'
alias kitty.='vim ~/.config/kitty/'
alias picom.='vim ~/.config/picom/'
alias neofetch.='vim ~/.config/neofetch/'
alias up='sudo pacman -Syyu'
alias yy='yazi'
alias anime='~/.local/share/pipx/venvs/anicli-ru/bin/anicli-ru cli -s animego'
alias gpom='git push origin main'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias .='vim'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

shopt -s autocd

PS1='\W  > '

# Created by `pipx` on 2026-09-02 13:32:00
export PATH="$PATH:/home/puser/.local/bin"
export EDITOR=vim

neofetch
