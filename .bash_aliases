# Apt
alias agi='sudo apt-get install'
alias agu='sudo apt-get update'
alias agg='sudo apt-get upgrade'
alias agd='sudo apt-get dist-upgrade'
alias maj='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'

# i3 mouse bug
alias mouse='gsettings set org.gnome.settings-daemon.plugins.cursor active false'

# Neovim
alias v='nvim'
alias n='nvim'
alias nv='nvim'
alias sv='sudo nvim'
alias sn='sudo nvim'
alias snv='sudo nvim'


# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
#alias got='git '
#alias get='git '

# Keyboard layout
alias jeopXcape="~/.xkb/xcape/xcape -t '200' -e 'Shift_L=Escape;Shift_R=Escape;ISO_Level5_Shift=Tab;Super_L=space'"
alias jeop='xkbcomp -I$HOME/.xkb $HOME/.xkb/jeopPETM.xkb $DISPLAY'
