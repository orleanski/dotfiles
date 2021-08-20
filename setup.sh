#!/bin/sh
# Usage:
#        curl -s https://raw.githubusercontent.com/orleanski/dotfiles/master/setup.sh | sh && source .config/bash/bashrc
#        curl -s https://raw.githubusercontent.com/orleanski/dotfiles/master/setup.sh | sh && source .config/zsh/.zshrc

echo "       Installing dotfiles, it will be quick!"
echo ""

cd "$HOME/"

echo "Moving .config to .config.bak, can be deleted afterwards"
[[ -d .config ]] && mv .config .config.bak

echo "Obtaining github archive with config files"
wget -nc "https://github.com/orleanski/dotfiles/archive/master.zip"

echo "Unzipping archive"
unzip  master.zip  -d "$HOME/"

echo "Moving  dir structure to the homedir"
mv dotfiles-master/.config $HOME/
mv dotfiles-master/.local $HOME/
mv dotfiles-master/Desktop $HOME/
mv dotfiles-master/Documents $HOME/
mv dotfiles-master/Downloads $HOME/
mv dotfiles-master/Media $HOME/
mv dotfiles-master/Projects $HOME/
mv dotfiles-master/Public $HOME/
mv dotfiles-master/Makefile $HOME/

echo " .... cleaning up now .... "

echo "Deleting temp unzipped dir"
[[ -d dotfiles-master ]] && rm -rf dotfiles-master

echo "Checking and removing master.zip"
[[ -f master.zip ]] && rm master.zip

echo "Checking and removing .wget-hsts"
[[ -f .wget-hsts ]] && rm .wget-hsts

echo "Checking and removing .bash_history"
[[ -f .bash_history ]] && rm .bash_history

# echo "Creating homedir structure, may ways"
# [ -d "$HOME/Desktop" ] || mkdir -p "$HOME/Desktop"
# [ -d "$HOME/Documents/Templates" ] || mkdir -p "$HOME/Documents/Templates"
# [ -d "$HOME/Downloads" ] || mkdir "$HOME/Downloads"
# [ -d "$HOME/Media/Books" ] || mkdir -p "$HOME/Media/Books"
# [ -d "$HOME/Media/Music" ] || mkdir "$HOME/Media/Music"
# [ -d "$HOME/Media/Picture/Backgrounds" ] || mkdir -p "$HOME/Media/Pictures/Backgrounds"
# [ -d "$HOME/Media/Picture/Screenshots" ] || mkdir -p "$HOME/Media/Pictures/Screenshots"
# [ -d "$HOME/Media/Videos" ] || mkdir "$HOME/Media/Videos"
# [ -d "$HOME/Projects" ] || mkdir "$HOME/Projects"
# [ -d "$HOME/Public" ] || mkdir "$HOME/Public"



echo "Checking on XDG directories and creating them if needed"
# [ -d "${XDG_CACHE_HOME:-$HOME/.cache}" ] || mkdir "${XDG_CACHE_HOME}"
# [ -d "${XDG_CONFIG_HOME:-$HOME/.config}" ] || mkdir "${XDG_CONFIG_HOME}"
# [ -d "${XDG_DATA_HOME:-$HOME/.local/share}" ] || mkdir -p "${XDG_DATA_HOME}"
# [ -d "${XDG_DATA_HOME/templates}" ] || mkdir -p "${XDG_DATA_HOME/templates}"
mkdir -v $HOME/cache

echo "Updating current state of the users user-dirs.dir"
xdg-user-dirs-update --force

echo "checking return of xdg_cache_home, xdg_config_home, xdg_data_home"
xdg-user-dir XDG_CACHE_HOME
xdg-user-dir XDG_CONFIG_HOME
xdg-user-dir XDG_DATA_HOME

echo "Changing permissions on 700 to .cache .config and .data"
chmod -R 700 ${XDG_CACHE_HOME} ${XDG_CONFIG_HOME} ${XDG_DATA_HOME}

echo "check for some dotfiles, move them into ~/.local and link it"
[ -d "$HOME/.local/.ssh" ] || mkdir -p "$HOME/.local/.ssh" && ln -s ".local/.ssh" "$HOME/"
[ -d "$HOME/.local/.gnupg" ] || mkdir -p "$HOME/.local/.gnupg" && ln -s ".local/.gnupg" "$HOME/"
[ -d "$HOME/.local/.dbus" ] || mkdir -p "$HOME/.local/.dbus" && ln -s ".local/.dbus" "$HOME/"
[ -d "$HOME/.local/.kde4" ] || mkdir -p "$HOME/.local/.kde4" && ln -s ".local/.kde4" "$HOME/"
[ -d "$HOME/.local/.cargo" ] || mkdir -p "$HOME/.local/.cargo" && ln -s ".local/.cargo" "$HOME/"

echo ""
echo "       Done "
echo "it's time for the POST INSTALL steps"
echo "- please add xdg.sh to /etc/profile.d/"
echo "- please change /etc/bash/bashrc and let it read our bashrc"
echo "- emerge -avq --noreplace eselect-repository doas tmux vim bash-completion xdg-user-dirs dev-vcs/git"
echo "- logout and log back in"
echo "- run nvim and :PlugInstall"
echo "and you should be set"
echo " Goodbye now ... "
echo ""
read -e -n 1 -p "press any key to continue" \n; 
