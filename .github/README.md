# dotfiles #
A few config files backed up here.

__Applications should follow [XDG specifications](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) and store config files in $XDG_CONFIG_HOME.__
I use [yadm](https://yadm.io/) to backup and restore them.

## tl;dr YADM

Insall yadm in Gentoo ```emerge -vq yadm```

Clone: ```yadm clone https://github.com/dmitri-o/dotfiles```

or Pull ```yadm pull --rebase origin main```


Unstaged changes and diffs before commit: ```yadm status -vv```

Push: ```yadm push -u origin main```

**main** branch is now the default branch on github.

Move the master branch to main with the command: ```git branch -m master main```.

Push the newly-named main branch to GitHub (assuming that is your remote repository) with the command: 

```git push -u origin main```. [See details](https://www.techrepublic.com/article/github-to-replace-master-with-main-starting-in-october-what-developers-need-to-know/).

Set default branch main for git init: ```git config --global init.defaultBranch main```.


## Software in use and to backup their settings
  * Makefile (my aid for memory loss)
* Terminal
  * bash
  * tmux
  * ~~vim~~ / neovim
  * app-misc/mc
  * htop
* X11
   * allacritty
