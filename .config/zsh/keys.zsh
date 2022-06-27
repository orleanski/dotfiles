# Vi Mode {{{
#================================================
  # Switch into vi mode
  bindkey -v

  # Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
  export KEYTIMEOUT=1


  # Better searching in command mode
  bindkey -M vicmd '?' history-incremental-search-backward
  bindkey -M vicmd '/' history-incremental-search-forward

  # Allow `v` to edit the command line
  # zle -N edit-command-line
  # autoload -Uz edit-command-line
  # bindkey -M vicmd v edit-command-line
# }}}
# Custom {{{
#================================================
    # Up                   '^[[A'
    # Down                 '^[[B'
    # Right                '^[[C'
    # Left                 '^[[D'
    # Home                 '^[[H'
    # End                  '^[[F'
    # Insert               '^[[2~'
    # Delete               '^[[3~'
    # PageUp               '^[[5~'
    # PageDown             '^[[6~'
    # Backspace            '^?'

# HOME key
bindkey '\e[1~' beginning-of-line

# END key
bindkey '\e[4~' end-of-line

# DELETE key
bindkey '\e[3~' delete-char

# INSERT key
bindkey '^[[2~'  overwrite-mode

# BACKSPACE key
bindkey '^?' backward-delete-char

  # Allow to move to beginning/end of line
  # bindkey '^a' beginning-of-line
  # bindkey '^e' end-of-line

  # Allow to move to backward/forward of word
  # bindkey '^b' backward-word
  # bindkey '^f' forward-word

  ## Page UP and Page Down through History
autoload -Uz history-search-end

zle -N history-beginning-search-backward-end \
                history-search-end
zle -N history-beginning-search-forward-end \
                history-search-end
bindkey "\e[5~" history-beginning-search-backward-end
bindkey "\e[6~" history-beginning-search-forward-end
# }}}
