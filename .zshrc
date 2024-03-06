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
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
export ASDF_NODEJS_LEGACY_FILE_DYNAMIC_STRATEGY=latest_installed

# rust
source "$HOME/.cargo/env"

source $DOTS/.work
source $DOTS/.kubernetes
source $DOTS/.aliases
source $DOTS/.functions

export PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cellison/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cellison/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cellison/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cellison/google-cloud-sdk/completion.zsh.inc'; fi
