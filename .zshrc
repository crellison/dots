export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

plugins=( zsh-autosuggestions z )

ZSH_THEME="refined"

# this goes before oh-my-zsh.sh is sourced
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# add z
.  $HOME/dots/.zsh/z.sh

source $HOME/dots/.base_profile
