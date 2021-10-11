HISTFILE=~/.histfile
HISTSIZE=5
SAVEHIST=0

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

set -o vi
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

PS1="%1d -> \$ "

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
export PATH=$PATH:/home/baka/.local/bin/