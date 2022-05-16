function fixzsh    { compaudit | xargs chmod go-w } 
function ff()      { find . -iname "$1*" -print } 
#function ht()      { (head $1 && echo "---" && tail $1) | less } 
function monitor() { watch --no-title "clear; cat $1" } 
function mkcd()    { mkdir -p $1 && cd $1 } 
function cols()    { head -1 $1 | tr , \\n | cat -n | column }		# show CSV header 
function zcolors() { for code in {000..255}; do print -P -- "$code: %F{$code}Test%f"; done | column}


function h() { 
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac --height "50%" | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g') 
}

# Automatically ls after you cd 
function chpwd() { 
    emulate -L zsh 
	ls -AlhFX --color=always --group-directories-first
}


# recursively chmod a directory so that:
# chmodd Directories are 0775
# chmodf Files are 0664
chmodd() { 
  find . -type d -exec chmod 0755 {} + 
}

chmodf() { 
  find . -type f -exec chmod 0644 {} + 
}

