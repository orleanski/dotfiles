# dotfiles
A few config files backed up here.

__Applications should follow [XDG specifications](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) and store config files in $XDG_CONFIG_HOME.__


## Software in use and to backup their settings
* Terminal
  * Makefile (is my aid for memory loss)
  * bash
  * tmux
  * ~~vim~~ / neovim
  * app-misc/mc
  * git
  * htop
* X11
   * allacritty

# YADM
[yadm](https://yadm.io/) is used to backup and restore config files. Switched to the master branch, clone from main branch on clean system causes hiccups
* For fresh [gentoo](gentoo.org) please install yadm
``# emerge -vq yadm``
* Initialize a new repository
``# yadm init``

* Clone an existing repository
``# yadm clone https://github.com/dmitri-o/dotfiles.git``
