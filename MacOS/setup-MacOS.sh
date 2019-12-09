# https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# https://getcomposer.org/
brew install composer

# https://github.com/denisidoro/navi#using-homebrew-or-linuxbrew
brew install denisidoro/tools/navi

# https://github.com/sharkdp/bat
brew install bat
echo 'alias cat "/usr/local/bin/bat"' > ~/.config/fish/config.fish

# https://github.com/stedolan/jq
brew install jq

# https://github.com/koalaman/shellcheck
brew install shellcheck

# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


#.zshrc
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/anton/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=powerlevel10k/powerlevel10k

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git-prompt zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
alias dev="cd /Users/anton/Documents/Yandex.Disk.localized/Develop"
alias cat="bat"
alias myip="curl http://ipinfo.io/ip"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export LC_ALL=en_RU.UTF-8
export LC_ALL=en_US.UTF-8



# Install https://github.com/romkatv/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel1

# Configure powerlevel10k
p10k configure