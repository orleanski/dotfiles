# Apps {{{
#================================================
export VIMINIT="source ${XDG_CONFIG_HOME}/vim/vimrc"

#export LESSHISTFILE=-												# No less history (~/.lesshst file)
# lesskey is binary file generated with lesskey from ~/.lesskey,
# then copy, also can be uses as /etc/sysless
export LESSKEY="${XDG_CONFIG_HOME}/less/lesskey"

# check if directory doesn't exist, then create it
[[ -d ${XDG_DATA_HOME}/less ]] || mkdir -p ${XDG_DATA_HOME}/less
export LESSHISTFILE="${XDG_DATA_HOME}/less/history"

export GNUPGHOME=${XDG_CONFIG_HOME}/gnupg

export INPUTRC=${XDG_CONFIG_HOME}/readline/inputrc

export MYSQL_HISTFILE=${XDG_DATA_HOME}/mysql_history

#export WGETRC="$XDG_CONFIG_HOME/wgetrc"
#}}}

