# dotfiles

An attempt to follow [XDG specifications](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) and store config files in ``$XDG_CONFIG_HOME``.

A list of config files will grow with time. Also will reflect changes in system wide files (from ``/etc/`` dir)

## Makefile
This is my memory aid.

The ``Makefile`` will be staying @ ``$HOME``

### TODO
I'm going to add all of the config bootstapping in to the makefile snippet
to bootstrap with yadm, so it will be 

```
wget https://raw.githubusercontent.com/dmitri-o/dotfiles/master/Makefile

make homedir
```


## configs for:

- [ ] Makefile
- [ ] bash
- [ ] tmux
- [ ] ~~vim~~ / neovim
- [ ] app-misc/mc
- [ ] git
- [x] htop
- [x] neofetch
- [ ] X11
- [ ] allacritty
- [ ] user-dirs
