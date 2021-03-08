# Complied from the man pages and lots of others's zshrcs

# Load modules
autoload zmv              # mass rename files

setopt allexport 			# all parameters defined below are exported

# History options
[ -d "$XDG_DATA_HOME"/zsh ] || mkdir -p "$XDG_DATA_HOME"/zsh
HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=4096
SAVEHIST=$HISTSIZE
HISTIGNORE='&:clear:ls:cd:[bf]g:exit:[ t\]*'
setopt append_history				# don't _overwrite_ history
setopt inc_append_history			# append history as command are entered
setopt share_history				# share history between shells
setopt hist_verify					# allow correction of !-expressions before running them
setopt hist_ignore_dups				# don't save duplicate entries in history
setopt histignorealldups
setopt histreduceblanks
setopt histignorespace
setopt hist_no_store				# don't save 'history' cmd in history
setopt extended_history				# add timestamps to history
setopt hist_expire_dups_first		# assuming self-explanatory, but not sure 




# Correction
unsetopt beep
setopt correct
setopt correctall

# Misc
setopt clobber              # > and >> work as expected
setopt multios              # Enable piping to multiple outputs
setopt interactivecomments  # Enable comments in interactive mode

# Safe rm
setopt rm_star_wait         # Wait 10 seconds before executing "rm *"
unsetopt rm_star_silent

# Directory Changing
setopt auto_name_dirs		# use named dirs when possible
setopt autocd				# cd by typing dir name
#setopt autopushd        # Use "pushd" instead of "cd", enabling use of "popd"
#setopt pushdsilent      # Make "popd" be less verbose (like cd)
#setopt pushdignoredups  # Don't record the same directory as multiple entries
#setopt pushdtohome
setopt cdable_vars
#DIRSTACKSIZE=10         # Limit the number of directories to keep in history

# Job Control
setopt notify
setopt long_list_jobs
setopt nohup
setopt autoresume
setopt autocontinue
unsetopt bg_nice

# Completion, expansion and globbing
setopt autolist				# automatically list choices on ambiguous completion
setopt automenu				# automatically use menu completion
setopt always_to_end		# when something is autocompleted, cursor to end of line
setopt complete_in_word
setopt menucomplete
setopt listpacked
setopt globdots
setopt extendedglob
setopt markdirs
setopt nomatch
setopt numeric_glob_sort
setopt rc_quotes
setopt rec_exact
unsetopt autoparamslash
setopt magic_equal_subst	# path expansion




