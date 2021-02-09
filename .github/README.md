![License:MIT](https://img.shields.io/github/license/dmitri-o/dotfiles)
# dotfiles

An attempt to follow [XDG specifications](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) and store config files in ``${XDG_CONFIG_HOME}``.

A list of config files will grow with time. Also will reflect changes in system wide files (from ``/etc/`` dir)

## Makefile
This is my memory aid.

The ``Makefile`` will be staying @ ``$HOME``

### TODO
I'm going to add all of the config bootstapping in to the [makefile snippet](https://github.com/dmitri-o/dotfiles/issues/1#issue-803264396)
to bootstrap with yadm, so it will be

```
wget https://raw.githubusercontent.com/dmitri-o/dotfiles/master/Makefile

make homedir
```


## configs for:

- [ ] /etc/profile.d/xdg.sh
- [x] Makefile
- [x] bash
- [x] tmux
- [x] vim
- [x] neovim
- [ ] app-misc/mc
- [x] git
- [x] yadm
- [x] htop
- [x] neofetch
- [ ] X11
- [ ] allacritty
- [x] user-dirs <- changes are made in /etc/xdg/user-dirs.defaults

* ![Open issues](https://img.shields.io/github/issues-raw/dmitri-o/dotfiles?style=plastic)
* ![GitHub last commit](https://img.shields.io/github/last-commit/dmitri-o/dotfiles)
