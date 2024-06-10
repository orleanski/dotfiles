function fixzsh    { compaudit | xargs chmod go-w } 
function ff()      { find . -iname "$1*" -print } 
#function ht()      { (head $1 && echo "---" && tail $1) | less } 
function monitor() { watch --no-title "clear; cat $1" } 
function mkcd()    { mkdir -p $1 && cd $1 } 
function cols()    { head -1 $1 | tr , \\n | cat -n | column }		# show CSV header 
function zcolors() { for code in {000..255}; do print -P -- "$code: %F{$code}Test%f"; done | column}

# fast history search with ripgrep
rh() { 
  rg "$1" $HISTFILE
}

# Automatically ls after you cd 
# function chpwd() {
#     emulate -L zsh
#   ls -AlhFX --color=always --group-directories-first
# }


# recursively chmod a directory so that:
# chmodd Directories are 0775
# chmodf Files are 0664
chmodd() { 
  find . -type d -exec chmod 0755 {} + 
}

chmodf() { 
  find . -type f -exec chmod 0644 {} + 
}


function lowercase()  # move filenames to lowercase
{
    for file ; do
        filename=${file##*/}
        case "$filename" in
        */*) dirname==${file%/*} ;;
        *) dirname=.;;
        esac
        nf=$(echo $filename | tr A-Z a-z)
        newname="${dirname}/${nf}"
        if [ "$nf" != "$filename" ]; then
            mv "$file" "$newname"
            echo "lowercase: $file --> $newname"
        else
            echo "lowercase: $file not changed."
        fi
    done
}

# Get IP addressess
myip() {
    echo "   Local IP: `ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'`"
    echo "External IP: `curl -s http://icanhazip.com`"
}

# instant web server in the current directory on localIP:9000 port
httpserve() {
	python -m http.server --bind `ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'` --directory ./ 8000
}

# check weather
	# curl wttr.in/PPG?format=4
	# curl wttr.in/PPG?0
# Special URLs:
#     /:help                  # show this page
#     /:bash.function         # show recommended bash function wttr()
#     /:translation           # show the information about the translators
# will check only current weather
weather() { 
  curl wttr.in/PGV
}

newtodo() {
  echo "create and/or open for edit a new todo file w/ the current date as a file name"
  vi `date -I`.todo
}

extract() {
    local c e i

    (($#)) || return

    for i; do
        c=''
        e=1

        if [[ ! -r $i ]]; then
            echo "$0: file is unreadable: \`$i'" >&2
            continue
        fi

        case $i in
            *.t@(gz|lz|xz|b@(2|z?(2))|a@(z|r?(.@(Z|bz?(2)|gz|lzma|xz)))))
                   c=(bsdtar xvf);;
            *.7z)  c=(7z x);;
            *.Z)   c=(uncompress);;
            *.bz2) c=(bunzip2);;
            *.exe) c=(cabextract);;
            *.gz)  c=(gunzip);;
            *.rar) c=(unrar x);;
            *.xz)  c=(unxz);;
            *.zip) c=(unzip);;
            *.zst) c=(unzstd);;
            *)     echo "$0: unrecognized file extension: \`$i'" >&2
                   continue;;
        esac

        command "${c[@]}" "$i"
        ((e = e || $?))
    done
    return "$e"
}
