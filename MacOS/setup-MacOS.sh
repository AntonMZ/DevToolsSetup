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