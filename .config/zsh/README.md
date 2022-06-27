# Switching shell
```sh
$ sudo emerge -avq zsh zsh-completions gentoo-zsh-completions zsh-syntax-highlighting
$ echo "ZDOTDIR=$HOME/.config/zsh" > /etc/zsh/zshenv
$ echo $SHELL
$ chsh -s $(which zsh)
```
