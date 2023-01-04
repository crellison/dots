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

export DOTS=$HOME/dots
path+=("$HOME/bin" "/usr/local/bin" "/usr/local/sbin")

# asdf for all tool/language version management
. /usr/local/opt/asdf/libexec/asdf.sh

# rust
source "$HOME/.cargo/env"

# gcp
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

source $DOTS/.work
source $DOTS/.kubernetes
source $DOTS/.aliases
source $DOTS/.functions

export PATH
