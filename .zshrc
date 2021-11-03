export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

# uncomment for profiling zsh login
# zmodload zsh/zprof

plugins=( evalcache zsh-autosuggestions )

ZSH_THEME="powerlevel10k/powerlevel10k"

# this goes before oh-my-zsh.sh is sourced
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# add z
source $HOME/dots/.zsh/z.sh

export DOTS=$HOME/dots
path+=("$HOME/bin" "/usr/local/bin" "/usr/local/sbin")

# fnm (instead of nvm)
_evalcache fnm env

# work
source $DOTS/.work

# pyenv setup
if command -v pyenv 1>/dev/null 2>&1; then
  _evalcache pyenv init -
fi
export PYTHONSTARTUP=$DOTS/.pythonrc

# use brew versions of things
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"

# jenv setup
path+=("$HOME/.jenv/bin")
_evalcache jenv init -

# rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
_evalcache rbenv init -

# go
export GOPATH="$HOME/go"
path+=("$GOPATH/bin" "/usr/local/go/bin")

# rust
source "$HOME/.cargo/env"

# kubernetes
source $DOTS/.kubernetes

# google cloud
source $DOTS/.gcs

# good stuff
source $DOTS/.aliases
source $DOTS/.functions

export PATH
