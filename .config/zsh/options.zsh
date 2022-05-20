# Complied from the man pages and lots of others's zshrcs

# Load modules
autoload zmv              # mass rename files

setopt allexport 			# all parameters defined below are exported

# History options {{{
#================================================
[ -d "$XDG_DATA_HOME"/shell ] || mkdir -p "$XDG_DATA_HOME"/shell
HISTFILE="$XDG_DATA_HOME"/shell/history
HISTSIZE=4096
SAVEHIST=$HISTSIZE
HISTIGNORE='&:clear:ls:cd:[bf]g:exit:[ t\]*'
setopt EXTENDED_HISTORY       # save timestamp and duration.
setopt HIST_IGNORE_SPACE      # ignore lines which start with space.
setopt HIST_REDUCE_BLANKS     # trim extra blanks from history lines.
setopt HIST_EXPIRE_DUPS_FIRST # expire a duplicate event first when trimming history.
setopt HIST_IGNORE_ALL_DUPS   # ignore duplicates.
setopt HIST_IGNORE_DUPS       # do not record an event that was just recorded again.
setopt HIST_SAVE_NO_DUPS      # do not write a duplicate event to the history file.
setopt HIST_FIND_NO_DUPS      # do not display duplicates of a found line.
setopt INC_APPEND_HISTORY     # incremental append, do not wait until shell exits.
setopt SHARE_HISTORY          # share history between zsh processes.
setopt HIST_NO_STORE          # don't save 'history' cmd in history
setopt HIST_NO_FUNCTIONS      # skip function definitions.
setopt HIST_VERIFY            # allow correction of !-expressions before running them
setopt HIST_ALLOW_CLOBBER     # use history entries to enable clobbering.
# }}}

setopt AUTOCD                 # cd just by typing the name of a directory.
setopt AUTOPUSHD              # flip between two places easily.
setopt AUTO_NAME_DIRS         # use named dirs when possible
setopt markdirs
setopt PUSHD_IGNORE_DUPS      # do not push multiple copies of the same dir onto the stack.
setopt PUSHD_SILENT           # do not print the directory stack after pushd or popd.
setopt PUSHD_TO_HOME          # pushd with no arguments gets you to $HOME.
setopt PUSHD_MINUS            # swaps `+` and `-` when used w/a number to specify a dir in the stack.
setopt INTERACTIVE_COMMENTS   # allow inline comments.
setopt COMPLETE_IN_WORD       # complete from the cursor onwards.
setopt ALWAYS_TO_END          # move cursor after the word with each completion.
setopt NO_BEEP                # beep when no results are available.
unsetopt BEEP
setopt NO_LIST_BEEP           # disable beeping on ambiguous-completion.
setopt EXTENDED_GLOB          # expand globbing.
setopt COMPLETE_ALIASES       # autocompletion for alias switches.
setopt NO_FLOW_CONTROL        # disable Ctrl + q / Ctrl + s flow control. Similar to `stty -ixon`.
setopt PROMPT_SUBST           # command substitution, parameter and arithmetic expansion.
setopt AUTO_MENU              # show menu for completion. Disables MENU_COMPLETE.
unsetopt menucomplete
setopt MAGIC_EQUAL_SUBST      # enable completion after equals sign on `var=value` patterns.
setopt PATH_DIRS              # perform path search even on command names with slashes.
setopt AUTO_LIST              # automatically list choices on ambiguous completion.
setopt AUTO_PARAM_SLASH       # add a trailing slash for completed directories.
setopt AUTO_PARAM_KEYS        # attempt to autocomplete params on lists.
setopt AUTO_REMOVE_SLASH      # remove the slash if the next character is delimiter.
setopt RCQUOTES               # double-single quotes '' for escaping
setopt REC_EXACT
setopt cdable_vars
#DIRSTACKSIZE=10              # Limit the number of directories to keep in history


# Correction
setopt CORRECT
setopt CORRECTALL

# Misc
unsetopt NO_CLOBBER             # avoid overwriting files. Use ! to confirm.
setopt clobber              # > and >> work as expected
setopt multios              # Enable piping to multiple outputs
setopt interactivecomments  # Enable comments in interactive mode

# Safe rm
setopt rm_star_wait         # Wait 10 seconds before executing "rm *"
unsetopt rm_star_silent


# Job Control
setopt notify
setopt long_list_jobs
setopt nohup
setopt autoresume
setopt autocontinue
unsetopt bg_nice

# Completion, expansion and globbing
setopt listpacked
setopt globdots
setopt extendedglob

setopt nomatch
setopt numeric_glob_sort
