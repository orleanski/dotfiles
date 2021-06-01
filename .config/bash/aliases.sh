# Aliases {{{
#================================================
alias tmux='tmux -2 -u'
alias nano='nano -w'
alias l='ls -alhF --color --group-directories-first'
alias lc='ls -ahF --color --group-directories-first'
alias ll='ls -alhF --color | sort -r | less'
alias l1='ls -a1 --color --group-directories-first'
alias c='echo "==============================" && echo $TZ && date +"%Y-%m-%d %a %T" && echo "==============================" && cal -m -3'
alias h='history'
alias df='df -h'
alias du='du -h'
alias du1='du -h --max-depth 1'
alias mountt='mount | column -t'
alias sudi='doas su -'
# alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
#}}}
