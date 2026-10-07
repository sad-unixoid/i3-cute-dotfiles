#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export NICKMANE="sad-unixoid"
export hour=$(date +%H)

alias kbreload='setxkbmap -model pc105 -layout us,ru -option grp:win_space_toggle'

alias i3config='vim ~/.config/i3/'
alias polybar.='vim ~/.config/polybar/'
alias kitty.='vim ~/.config/kitty/'
alias picom.='vim ~/.config/picom/'
alias neofetch.='vim ~/.config/neofetch/'
alias makeiso='sudo mkarchiso -v -r   -w archiso-work   -o archiso-out   ./archlive'
alias hdmion='xrandr --output HDMI1 --mode 1920x1080 --rate 120'

alias up='sudo pacman -Syyu'
alias yy='yazi'
alias anime='~/.local/share/pipx/venvs/anicli-ru/bin/anicli-ru cli -s animego'
alias gpo='git push origin main'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias .='cd ..; ls'
alias ..='cd ../..; ls'
alias ...='cd ../../..; ls'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

shopt -s autocd

PS1='\W  > '

# -------function-------
function ga() {
  git add $1
}

function gc() {
  git commit -m "$*"
}

function install() {
  sudo pacman -S $*
}

function search() {
  pacman -Ss $*
}

function remove() {
  sudo pacman -Rsn $*
}

# systemctl 

function start() {
  sudo systemctl start $*
}

function stop() {
  sudo systemctl stop $*
}

function enable () {
  sudo systemctl enable $*
}

function disable () {
  sudo systemctl disable $*
}

function restart() {
  sudo systemctl restart $*
}

function status() {
  systemctl status $*
}

if [ $hour -ge 07 ] && [ $hour -lt 11 ]; then
  echo "Бодрое утро, $NICKMANE!"
fi

# Created by `pipx` on 2026-09-02 13:32:00
export PATH="$PATH:/home/puser/.local/bin"
export EDITOR=vim

