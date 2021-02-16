
# dotfiles  ![License:MIT](https://img.shields.io/github/license/vyvox/dotfiles)
* ![Open issues](https://img.shields.io/github/issues-raw/vyvox/dotfiles?style=plastic)
* ![GitHub last commit](https://img.shields.io/github/last-commit/vyvox/dotfiles)


An attempt to follow [XDG specifications](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) and store config files in ``${XDG_CONFIG_HOME}``.

A list of config files will grow with time. Also will reflect changes in system wide files (from ``/etc/`` dir)

## Makefile
This is my memory aid.

The ``Makefile`` will be staying @ ``$HOME``

### TODO
I'm going to add all of the config bootstapping in to the [makefile snippet](https://github.com/vyvox/dotfiles/issues/1#issue-803264396)
to bootstrap with yadm, so it will be something like  vyvox/dotfiles#1

```
wget zip-archive

make homedir
```


## configs for:

- [x] Makefile see vyvox/dotfiles#1
- [x] .config/ag
- [x] .config/bash
- [x] .config/git
- [x] .config/htop
- [x] .config/less
- [x] .config/neofetch
- [x] .config/neovim
- [x] .config/tmux
- [x] .config/vim
- [x] .config/yadm
- [x] .config/user-dirs <- changes are made in /etc/xdg/user-dirs.defaults
- [ ] /etc/profile.d/xdg.sh see vyvox/dotfiles#3
- [ ] allacritty
- [ ] app-misc/mc
- [ ] X11
