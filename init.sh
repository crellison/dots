# install brew and related packages from Brewfile
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle 

# install nvm
git clone --depth 1 https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm

# make zsh default shell
chsh -s /bin/zsh

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# hook up profiles
echo "source $HOME/dots/.base_profile" > $HOME/.bash_profile
echo "source $HOME/dots/.zshrc" > $HOME/.zshrc
echo "source $HOME/dots/.vimrc" > $HOME/.vimrc
cp ./.gitconfig $HOME/.gitconfig

# reminders of tasks
echo "download jetbrains mono: https://www.jetbrains.com/lp/mono/"
echo "download go (if applicable): https://golang.org/doc/install"
echo "run `p10k configure` to set up shell look"
