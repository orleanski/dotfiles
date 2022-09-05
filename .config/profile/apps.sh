# Apps {{{
#================================================
# export VIMINIT="source ${XDG_CONFIG_HOME}/vim/vimrc"

#export LESSHISTFILE=-												# No less history (~/.lesshst file)
# lesskey is binary file generated with lesskey from ~/.lesskey,
# then copy, also can be uses as /etc/sysless
export LESSKEY="${XDG_CONFIG_HOME}/less/lesskey"

# check if directory doesn't exist, then create it
[[ -d ${XDG_DATA_HOME}/shell ]] || mkdir -p ${XDG_DATA_HOME}/shell
export LESSHISTFILE="${XDG_DATA_HOME}/shell/lesshst"

export GNUPGHOME=${XDG_CONFIG_HOME}/gnupg

export INPUTRC=${XDG_CONFIG_HOME}/readline/inputrc

export ICEAUTHORITY="${XDG_CACHE_HOME}/ICEauthority"

export XAUTHORITY="${XDG_CACHE_HOME}/Xauthority"

export XINITRC="${XDG_CONFIG_HOME}/X11/xinitrc"

export MYSQL_HISTFILE=${XDG_DATA_HOME}/mysql_history

export LYNX_CFG_PATH="${XDG_CONFIG_HOME}"/lynx/lynx.cfg

# for dircolors from sys-apps/coreutils
# thats if you would like non standard colors
#eval $(dircolors "$XDG_CONFIG_HOME"/dircolors)

#export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"

export CARGO_HOME="${XDG_DATA_HOME}/cargo"

# set PATH so it includes user's cargo bin if it exists
if [ -d "$CARGO_HOME/bin" ] ; then
    PATH="$CARGO_HOME/bin:$PATH"
fi


#}}}

