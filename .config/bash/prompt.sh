# PROMPT {{{
#================================================

if [ $(id -u) -eq 0 ];
then # you are root, set red colour prompt
  PS1="\\[$(tput setaf 1)\\]\\u@\$(hostname -f):\\[$(tput sgr0)\\]\\w \n# "
else # normal
#  PS1="[\\u@\\h:\\w] $ "
PS1="\[\033[38;5;2m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\H\[$(tput sgr0)\]:\[$(tput sgr0)\]\[\033[38;5;3m\]\w\[$(tput sgr0)\]\n\\$\[$(tput sgr0)\] "
fi
# }}}

