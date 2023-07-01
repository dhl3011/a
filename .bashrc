if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then exec xinit /bin/i3; fi
alias n='nnn -H'
alias cp='cp -r'
alias mk='mkdir -p'
alias rm='rm -rf'
alias c='clear && . .bashrc'
alias v='nvim'
alias l='ls -a --color=auto'
alias lsblk='lsblk -f'
alias volume="pactl list sinks | awk '/ft:/{print \$5}'"
alias date="date '+%a-%d-%m-%y %T'"
alias ram="free -h | awk '/Mem/{print \$3,\$2}'"
alias disk="df -h| pcregrep -M '/\n' | awk '{print \$3, \$2}'"
alias weather="curl wttr.in/thanh_ha_hai_duong?1n"

[[ $- != *i* ]] && return

PS1='\[\e[38;5;33m\]$PWD \[\e[38;5;34m\]$(volume) \[\e[38;5;184m\]$(date) \[\e[38;5;99m\]$(ram) \[\e[38;5;45m\]$(disk)\[\e[0m\] '
. /usr/share/bash-completion/bash_completion
clear
