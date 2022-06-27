# XDG settings are loaded from env.sh

# The rest of this configuration applies to interactive shells only.
[[ -o nointeractive ]] && return


#  Tmux {{{
#================================================
if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux -u -2 new -s TMUX
fi
# }}}

# check and source config files in order {{{
#================================================
[ -f "$XDG_CONFIG_HOME"/shell_common_cfg/env.sh ]       && source "$XDG_CONFIG_HOME"/shell_common_cfg/env.sh
[ -f "$XDG_CONFIG_HOME"/shell_common_cfg/aliases.sh ]   && source "$XDG_CONFIG_HOME"/shell_common_cfg/aliases.sh
[ -f "$XDG_CONFIG_HOME"/shell_common_cfg/apps.sh ]      && source "$XDG_CONFIG_HOME"/shell_common_cfg/apps.sh
[ -f "$XDG_CONFIG_HOME"/shell_common_cfg/functions.sh ] && source "$XDG_CONFIG_HOME"/shell_common_cfg/functions.sh
[ -f "$XDG_CONFIG_HOME"/zsh/options.zsh ]               && source "$XDG_CONFIG_HOME"/zsh/options.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/keys.zsh ]                  && source "$XDG_CONFIG_HOME"/zsh/keys.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/completion.zsh ]            && source "$XDG_CONFIG_HOME"/zsh/completion.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/starship.zsh ]              && source "$XDG_CONFIG_HOME"/zsh/starship.zsh
#[ -f "$XDG_CONFIG_HOME"/zsh/prompt.zsh ] && source "$XDG_CONFIG_HOME"/zsh/prompt.zsh
# }}}

