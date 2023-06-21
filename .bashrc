# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then exec xinit /usr/bin/i3; fi
alias n='nnn -H'
alias mk='mkdir -p'
alias rm='rm -rf'
alias c='clear && . .bashrc'
alias v='nvim'
alias l='ls -a --color=auto'
alias i="
pactl list sinks | awk '/ft:/{print \"Volume:\"\$5}'; 
date '+%a-%d-%m-%y %T';
free -h | awk '/Mem/{print \"Ram: \"\$3,\$2}';
df -h| pcregrep -M '/\n' | awk '{print \"Disk: \"\$3, \$2}'
curl wttr.in/thanh_ha_hai_duong?1n;
"
case $- in
    *i*) ;;
      *) return;;
esac

PS1='\[\e[93m\][$PWD] \[\e[97m\]'
. /usr/share/bash-completion/bash_completion
