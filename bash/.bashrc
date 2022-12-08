#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias al='alacritty'
alias shot='shot.sh'
alias clip='xclip -selection clipboard'
alias vi="nvim"
alias school="task +school"

fcd() {
    cd "$(fd --type directory | fzf)"
}

PS1='[\u@\h \W]\$ '


export PATH=$PATH:/home/$USER/.scripts:/home/$USER/.cargo/bin:/home/$USER/.local/bin
export FZF_DEFAULT_OPTS="--color=16"
export BAT_THEME="ansi"
export QT_QPA_PLATFORMTHEME=qt5ct

set -o vi

