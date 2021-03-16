# Functions {{{
#================================================
# Create a directory and change into it
mkcd () { mkdir -p "$@" && cd "$@"; }

# Nice history output
H() {
    declare -A HMAP
    while read line
    do
        INDEX=$(echo $line | cut -d' ' -f 1)
        ENTRY=$(echo $line | cut -d' ' -f 2-)
        HMAP[$ENTRY]=$INDEX
    done < <(history | grep "$*" )
    for ENTRY in "${!HMAP[@]}"
    do
        printf "%4s %s\n"  "${HMAP[$ENTRY]}" "$ENTRY"
    done | sort -n
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

# }}}
