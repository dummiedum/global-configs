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
alias rem='sudo pacman -R'
alias update='sudo pacman -Syy'
alias upgrade='sudo pacman -Syyu'
alias deps='pacman -Qdtq'
export PATH=$PATH:/home/baka/.local/bin/

set -o vi

terminfo_down_sc=$terminfo[cud1]$terminfo[cuu1]$terminfo[sc]$terminfo[cud1]
function zle-line-init zle-keymap-select {
    PS1_2="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    PS1="%{$terminfo_down_sc$PS1_2$terminfo[rc]%}%~ %# "
    zle reset-prompt
}
preexec () { print -rn -- $terminfo[el]; }