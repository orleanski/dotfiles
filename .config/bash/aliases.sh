# Aliases {{{
#================================================
alias tmux='tmux -2 -u'
alias nano='nano -w'
alias l='ls -AlhFX --color --group-directories-first'
alias lc='ls -ahFX --color --group-directories-first'
alias ll='ls -alhFX --color | sort -r | less'
alias l1='ls -a1X --color --group-directories-first'
alias lh='ls -1lhX --color --group-directories-first --time-style=+"%F %a %T"'
alias c='echo "==============================" && echo $TZ && date +"%F %a %T" && echo "==============================" && cal -m -3'
alias h='history'
alias df='df -h'
alias du='du -h'
alias du1='du -h --max-depth 1'
alias mountt='mount | column -t'
alias sudi='sudo su -'
alias dosu='doas su -'
# alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
#}}}
