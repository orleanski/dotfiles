
autoload -U promptinit && promptinit
autoload colors && colors

# hex colors. There are only 8 available colors:
# 30 - black
# 31 - red
# 32 - green
# 33 - yellow
# 34 - blue
# 35 - magenta
# 36 - cyan
# 37 - white

# prompt 4
#PROMPT="%F{yellow}%n@%m%f:%F{cyan}%~ %f
#%(?.$fg[green].$fg[red])%#$reset_color "

# prompt 5
PS1='%F{yellow}%n@%m%f:%F{cyan}%~%f
%# '

# the prompt we see when being asked for substitutions
SPROMPT="zsh: correct '%R' to '%r'? [N/y/a/e] "


