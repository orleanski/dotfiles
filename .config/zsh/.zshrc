# XDG settings are loaded from zshenv

# The rest of this configuration applies to interactive shells only.
[[ -o nointeractive ]] && return


# check and source config files in order {{{
#================================================
[ -f "$XDG_CONFIG_HOME"/zsh/options.zsh ] && source "$XDG_CONFIG_HOME"/zsh/options.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/aliases.zsh ] && source "$XDG_CONFIG_HOME"/zsh/aliases.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/functions.zsh ] && source "$XDG_CONFIG_HOME"/zsh/functions.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/completion.zsh ] && source "$XDG_CONFIG_HOME"/zsh/completion.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/keys.zsh ] && source "$XDG_CONFIG_HOME"/zsh/keys.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/prompt.zsh ] && source "$XDG_CONFIG_HOME"/zsh/prompt.zsh
# }}}

#  Tmux {{{
#================================================
if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux -u -2 new -s TMUX
fi
# }}}
