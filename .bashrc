#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#PS1='[\u@\h \W]\$ '

#PS1='\033[36;4;1m\W\033[0m -> \033[31;4;1m\$\033[0m '
PS1='\W -> \$ '
HISTFILESIZE=25
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
alias vim='nvim'
export PATH=$PATH:/home/baka/.local/bin/
