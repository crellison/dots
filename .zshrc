export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

plugins=( zsh-autosuggestions )

ZSH_THEME="blinks"

# this goes before oh-my-zsh.sh is sourced
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

# add z
.  $HOME/dotfiles/.zsh/z.sh

source $HOME/dotfiles/.base_profile
