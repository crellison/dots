# install brew and related packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install ack bat drone git nvm pyenv pipenv zsh kubernetes gcloud vim jenv kubectx
nvm install --lts

# make zsh default shell
chsh -s /bin/zsh

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# hook up profiles
echo "source $HOME/dotfiles/.base_profile" > $HOME/.bash_profile
echo "source $HOME/dotfiles/.zshrc" > $HOME/.zshrc
echo "source $HOME/dotfiles/.vimrc" > $HOME/.vimrc
cp ./.gitconfig $HOME/.gitconfig

# reminders of tasks
echo "download jetbrains mono: https://www.jetbrains.com/lp/mono/"
echo "download go (if applicable): https://golang.org/doc/install"
