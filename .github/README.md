# dotfiles

An attempt to follow [XDG specifications](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) and store config files in ``$XDG_CONFIG_HOME``.

A list of config files will grow with time. Also will reflect changes in system wide files (from ``/etc/`` dir)

## Makefile
This is my memory aid, I'm going to add all of the config bootstapping in to the makefile snippet

The ``Makefile`` will be staying ``$HOME`` and perhaps in ``/etc/skel/``


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
## Brand new with existing repo
* For fresh [gentoo](gentoo.org) please install yadm
``# emerge -vq yadm``
* Clone an existing repository
``# yadm clone https://github.com/dmitri-o/dotfiles.git``

## Brand new with no repo
* Initialize a new repository
``# yadm init``
* Start choosing files for back up ``yadm add path/configrc``


### Errors
When cloning
* If you encounter any error when cloning, run
``yadm stash``
* Then reclone with
``# yadm clone -f https://github.com/dmitri-o/dotfiles.git``

Please report any issues you have [here](https://github.com/dmitri-o/dotfiles/issues)
