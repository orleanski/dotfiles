# Aliases {{{
#================================================
alias tmux='tmux -2 -u'
alias s='exec $SHELL -l'
alias nano='nano -w'
#alias l='ls -AlhF --color=always --group-directories-first'
alias l='lsd -lA'
alias lc='ls -AhFX --color=always --group-directories-first'
alias ll='ls -AlhFX --color=always --group-directories-first | bat'
alias l1='ls -a1 --color=always --group-directories-first'
alias c='echo $TZ && date && echo "********************************" && cal -m -3'
alias h='history -i'
alias df='df -h'
alias du='du -h'
alias du1='du -h --max-depth 1'
alias x='startx -- :2&'
alias m='neomutt'
alias ncmpc='ncmpc -c'
alias mountt='mount | column -t'
alias sudi='sudo -i'
alias dosu='doas su -'
#}}}

