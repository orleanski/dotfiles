# dotfiles
* [![CI](https://github.com/orleanski/dotfiles/actions/workflows/main.yml/badge.svg)](https://github.com/orleanski/dotfiles/actions/workflows/main.yml)
* ![License:MIT](https://img.shields.io/github/license/orleanski/dotfiles)
* ![GitHub last commit](https://img.shields.io/github/last-commit/orleanski/dotfiles)
* ![Open issues](https://img.shields.io/github/issues-raw/orleanski/dotfiles?style=plastic)


An attempt to follow [XDG specifications](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) and store config files in ``${XDG_CONFIG_HOME}``.

I would like to keep my enviroment with minimal dependences and keep my configs well commented if possible.

A list of config files will grow with time. Also I will include changes in system wide files (from ``/etc/`` dir)

## Installation via copy paste of the following command:
### for BASH:
``curl -s https://raw.githubusercontent.com/orleanski/dotfiles/master/setup.sh | sh && source .config/bash/bashrc``

### for ZSH:
``curl -s https://raw.githubusercontent.com/orleanski/dotfiles/master/setup.sh | sh && source .config/zsh/.zshrc``

#### Directory structure after running `setup.sh`
![initial directory structure](setup.sh_dir_structure.png?raw=true)

#### TMUX status line
![tmux status line](tmux_statusline.png?raw=true)

- Red heart will be visible in UTF-8 console, and if your font does not support it, you will see just a red square. If console is not UTF-8 enabled, then the heart will dissapear.
- who @ hostname
- window with ongoing process name (make)
- window with finished process ended with alert `sleep 5s && echo -e '\a'` as an example
- window with two panes, one is marked and zoomed, but no activity
- active window
- date and time are always in the right corner

##### tmux window flags
````tmux
  #:  window activity flag
  !:  window bell flag
  ~:  window silence flag
  *:  current window flag
  -:  last window flag
  M:  marked pane flag
  Z:  window zoomed flag
````
#### VIM
Vim on the first start will automatically download vim-plug and then install few plugins, and will give you a warning, 
just let it finish installation close vim and open it again, vim will start quick and clean.

##### Vim plugins
![vim plugins](vim_plugins.png?raw=true)

### Truecolors
Combination of Alacritty + Tmux + Neovim now uses truecolors with alacrity-direct, tmux-direct and termguicolors in respective config files. 
For TTY, kmscon could be a solution, I've tried it and it works, but I am holding it off for now, since it is a rare event when I have to login to the console under a user. 
For ssh access putty works well with truecolors (in the Connection->Data->Terminal-type string replace xterm with tmux-direct). 

## Makefile
This is my memory aid.

The ``Makefile`` will be staying @ ``$HOME``

## TODO
The progress is reflected in my [TODO](TODO.md) list

