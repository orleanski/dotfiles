# dotfiles

An attempt to follow [XDG specifications](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) and store config files in ``$XDG_CONFIG_HOME``.

A list of config files will grow with time. Also will reflect changes in system wide files (from ``/etc/`` dir)

## Makefile
This is my memory aid, I'm going to add all of the config bootstapping in to the makefile snippet

The ``Makefile`` will be staying @ ``$HOME``

### TODO
I am thinking to utilize Makefile to make bootstrapping with yadm so it will be 

```
wget https://raw.githubusercontent.com/dmitri-o/dotfiles/master/Makefile

make homedir
```


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
