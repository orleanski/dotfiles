#!/bin/sh
# Usage:
#        curl -s https://raw.githubusercontent.com/vyvox/dotfiles/master/getdotfiles.sh | sh

echo "       Installing dotfiles, it will be quick!"
echo ""
cd ~/
echo "Moving .config to .config.bak, can be deleted afterwards"
[[ -d .config ]] && mv .config .config.bak
echo "Obtaining github archive with config files"
wget -q https://github.com/vyvox/dotfiles/archive/master.zip
echo "Extracting only .config dir and subdirs ... see below"
unzip master.zip 'dotfiles-master/.config/**/*' -d ./
echo "Moving .config dir to the homedir"
mv dotfiles-master/.config/ ./
echo "Deleting unzipped dir"
rmdir dotfiles-master/
echo "Checking and removing master.zip"
[[ -f master.zip ]] && rm master.zip
echo "Checking and removing .wget-hsts"
[[ -f .wget-hsts ]] && rm .wget-hsts
echo "Checking and removing .bash_history"
[[ -f .bash_history ]] && rm .bash_history
echo ""
echo "       Done "
echo " You may want to logout and login back"
