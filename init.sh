# install brew and related packages from Brewfile
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle 

# install nvm
git clone --depth 1 https://github.com/lukechilds/zsh-nvm.git ~/.zsh-nvm

# install rust
echo "installing rust. no need to modify profiles to add ruse CLI's to PATH"
sh -c "$(curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh)"

# make zsh default shell
chsh -s /bin/zsh

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# hook up profiles
echo "source $HOME/dots/.zshrc" > $HOME/.zshrc
echo "source $HOME/dots/.vimrc" > $HOME/.vimrc
echo "source $HOME/dots/.profile" > $HOME/.profile
echo "source $HOME/dots/.profile" > $HOME/.zprofile
cp ./.gitconfig $HOME/.gitconfig

./configure-osx.sh

# reminders of tasks
echo "Install complete. Review the following tasks.

- download jetbrains mono: https://www.jetbrains.com/lp/mono/
- run 'p10k configure' to set up shell look
- verify .gitconfig contains the correct user
- install sdkman: https://sdkman.io/"
