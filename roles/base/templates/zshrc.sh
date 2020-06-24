export VISUAL=vim
export EDITOR="$VISUAL"
export TERM="xterm-256color"

# Set default user to avoid long name in prompt
DEFAULT_USER=`whoami`

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(kube_ps1 virtualenv)

# determine OS/platform
unamestr=$(uname)

ZSH_THEME="{{zsh_theme}}"

POWERLEVEL9K_DISABLE_RPROMPT=true

if [[ $unamestr == "Darwin" ]]; then
    plugins=(
        git
        brew
        vagrant
        aws
        z
        take
        docker
        extract
        autojump
        colorize
        virtualenv
        zsh_reload
        copyfile
        copydir
        kube-ps1
        kubectl
        )
else
    plugins=(git vagrant aws z take docker)
fi

source $ZSH/oh-my-zsh.sh

alias v="vim"
alias c="ccat"
alias r="ranger"
alias s="spotify"
alias l="exa --all --modified"
alias ppython="ptpython"
alias tree="exa -T"
alias kx="kubectx"
alias ks="kubens"
alias d="docker"
alias k="kubectl"
alias python="python3"
alias wk="watch kubectl get pod"