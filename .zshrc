export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

# uncomment for profiling zsh login
# zmodload zsh/zprof

plugins=( zsh-autosuggestions )

ZSH_THEME="powerlevel10k/powerlevel10k"

# this goes before oh-my-zsh.sh is sourced
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# add z
source $HOME/dots/.zsh/z.sh

source $HOME/dots/.base_profile
