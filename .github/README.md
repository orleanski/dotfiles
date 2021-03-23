# dotfiles
* [![CI](https://github.com/orleanski/dotfiles/actions/workflows/main.yml/badge.svg)](https://github.com/orleanski/dotfiles/actions/workflows/main.yml)
* ![License:MIT](https://img.shields.io/github/license/orleanski/dotfiles)
* ![GitHub last commit](https://img.shields.io/github/last-commit/orleanski/dotfiles)
* ![Open issues](https://img.shields.io/github/issues-raw/orleanski/dotfiles?style=plastic)


An attempt to follow [XDG specifications](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) and store config files in ``${XDG_CONFIG_HOME}``.

I would like to keep my enviroment with minimal dependences, plugins and such, and keep well commented if possible.

A list of config files will grow with time. Also I will include changes in system wide files (from ``/etc/`` dir)

## Installation via copy paste of the following command:
### for BASH:
``curl -s https://raw.githubusercontent.com/orleanski/dotfiles/master/setup.sh | sh && source .config/bash/bashrc``

### for ZSH:
``curl -s https://raw.githubusercontent.com/orleanski/dotfiles/master/setup.sh | sh && source .config/zsh/.zshrc``

## Makefile
This is my memory aid.

The ``Makefile`` will be staying @ ``$HOME``

## TODO
The progress is reflected in my [TODO](TODO.md) list

## TMUX status line

![tmux status line](tmux_status.png?raw=true)

#### tmux window flags
````shell
  #:  window activity flag
  !:  window bell flag
  ~:  window silence flag
  *:  current window flag
  -:  last window flag
  Z:  window zoomed flag
  ' ' (a space):  no flags at all.
````
