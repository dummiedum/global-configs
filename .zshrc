# history
HISTFILE=~/.histfile
HISTSIZE=5
SAVEHIST=0

# prompt
PS1="%1d -> \$ "

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# aliases
alias ls='ls --color=auto'
alias la='ls -A'
alias l='ls -lh'
alias ll='ls -lah'
alias mv='mv -i'
alias cp='cp -i'
alias ins='sudo pacman -S'
alias rem='sudo pacman -R'
alias update='sudo pacman -Syy'
alias upgrade='sudo pacman -Syyu'
alias deps='pacman -Qdtq'
alias malw='mal cfg list-widthha $(tput cols)'
alias malp='mal -r -a --status planning'

# path
export PATH=$PATH:/home/baka/.local/bin/
