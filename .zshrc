HISTFILE=~/.histfile
HISTSIZE=5
SAVEHIST=0

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PS1="%1d -> \$ "

alias ls='ls --color=auto'
alias la='ls -A'
alias l='ls -lh'
alias ll='ls -lah'
alias mv='mv -i'
alias cp='cp -i'
alias ins='sudo pacman -S'
alias rem='sudo pacman -Rsn'
alias update='sudo pacman -Syy'
alias upgrade='sudo pacman -Syyu'
export PATH=$PATH:/home/baka/.local/bin/
