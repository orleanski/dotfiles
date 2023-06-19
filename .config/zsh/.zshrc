# XDG settings are loaded from env.sh

# The rest of this configuration applies to interactive shells only.
[[ -o nointeractive ]] && return


#  Tmux {{{
#================================================
#if [ -z "$TMUX" ]
#then
#    tmux attach -t TMUX || tmux -u -2 new -s TMUX
#fi
# }}}
#  zellij {{{
#================================================
# eval "$(zellij setup --generate-auto-start zsh)"
# zellij + automatically attach
export ZELLIJ_AUTO_ATTACH=true
if [[ -z "$ZELLIJ" ]]; then
  zellij attach $(hostname) || zellij -s $(hostname)
fi
# }}}

# check and source config files in order {{{
#================================================
[ -f "$XDG_CONFIG_HOME"/profile/env.sh ]       && source "$XDG_CONFIG_HOME"/profile/env.sh
[ -f "$XDG_CONFIG_HOME"/profile/aliases.sh ]   && source "$XDG_CONFIG_HOME"/profile/aliases.sh
[ -f "$XDG_CONFIG_HOME"/profile/apps.sh ]      && source "$XDG_CONFIG_HOME"/profile/apps.sh
[ -f "$XDG_CONFIG_HOME"/profile/functions.sh ] && source "$XDG_CONFIG_HOME"/profile/functions.sh
[ -f "$XDG_CONFIG_HOME"/zsh/options.zsh ]      && source "$XDG_CONFIG_HOME"/zsh/options.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/keys.zsh ]         && source "$XDG_CONFIG_HOME"/zsh/keys.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/completion.zsh ]   && source "$XDG_CONFIG_HOME"/zsh/completion.zsh
[ -f "$XDG_CONFIG_HOME"/zsh/starship.zsh ]     && source "$XDG_CONFIG_HOME"/zsh/starship.zsh
#[ -f "$XDG_CONFIG_HOME"/zsh/prompt.zsh ] && source "$XDG_CONFIG_HOME"/zsh/prompt.zsh
# }}}

