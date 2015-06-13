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
alias sv='sudoedit'

# Pacman
alias pS='sudo pacman -S'
alias pi='sudo pacman -S'
alias yS='yaourt -S'
alias yi='yaourt -S'

# Git
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
alias jeopXcape="~/.xkb/jeopPETMxCape.sh"
alias jeop='xkbcomp -I$HOME/.xkb $HOME/.xkb/jeopPETM.xkb $DISPLAY'

# TLP
alias tlpedit="sudoedit /etc/default/tlp"
