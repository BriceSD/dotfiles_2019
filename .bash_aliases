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
alias ggpush='git push origin master'
#alias got='git '
#alias get='git '

# Keyboard layout
alias jeopXcape="~/.xkb/jeopPETMxCape.sh"
alias jeop='xkbcomp -I$HOME/.xkb $HOME/.xkb/jeopPETM.xkb $DISPLAY'

# TLP
alias tlpedit="sudoedit /etc/default/tlp"

# Pandoc
#alias pandoc="~/.cabal/bin/pandoc"
alias mdtopdf="~/.cabal/bin/pandoc --latex-engine=lualatex --template ~/.pandoc/pandoc-templates/default.latex --number-sections --toc"

# Ranger
alias r="ranger"

# Fonts
alias updatefonts="fc-cache && mkfontscale && mkfontdir"
