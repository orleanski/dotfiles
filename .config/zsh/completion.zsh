# completions for zsh

# cache
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
zstyle ':completion:*' cache-path  "$XDG_CACHE_HOME"/zsh/cache
zstyle ':completion::complete:*' use-cache on

[ -d /usr/share/zsh/site-functions ] && fpath=(/usr/share/zsh/site-functions $fpath)

zmodload zsh/complist

autoload -Uz compinit zrecompile		# used modern completion system
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump

zstyle ':completion::complete:*' rehash true


zstyle ':completion:*:default' menu select=2	# select completions with arrow keys
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' group-name ''			# group results by category

completion_waiting_dots="true"					# red dots while waiting for completion

# If you end up using a directory as argument, 
# this will remove the trailing slash (usefull in ln) 
zstyle ':completion:*' squeeze-slashes true

# Completing process IDs with menu selection: 
zstyle ':completion:*:*:kill:*' menu yes select 
zstyle ':completion:*:kill:*'   force-list always

# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# activate approximate completion, but only after regular completion (_complete) 
zstyle ':completion:::::' completer _complete _approximate
# limit to 2 errors 
zstyle ':completion:*:approximate:*' max-errors 2


zstyle ':completion:*' special-dirs true 
zstyle ':completion:*' accept-exact-dirs true



