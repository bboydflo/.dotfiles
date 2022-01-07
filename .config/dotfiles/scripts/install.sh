#!/usr/bin/env bash

function installHomebrew() {

    echo "==================================="
    echo "Installing homebrew"
    echo "==================================="

    cd ~/

    which -s brew > /dev/null
    if [[ $? -eq 1 ]]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        brew upgrade
    fi

}

function installHomebrewPackages() {

    echo "=================================="
    echo "Installing homebrew packages:"
    echo "git"
    echo "fish"
    echo "alacritty"
    echo "tmux"
    echo "volta"
    echo "z"
    echo "starship"

    echo "diff-so-fancy"
    echo "fzf"
    echo "bat"
    echo "ripgrep"
    echo "neovim"
    echo "=================================="

    cd ~/

    brew install git
    brew install fish
    brew install alacritty
    brew install tmux
    brew install volta
    brew install z
    brew install starship

    brew install diff-so-fancy
    brew install fzf
    brew install bat
    brew install ripgrep
    brew install neovim

    brew update

}

function setupFishShell() {

    echo "==================================="
    echo "Setup Fish Shell"
    echo "==================================="

    cd ~/

    # add fish to the list of installed shells
    echo '/usr/local/bin/fish' | sudo tee -a /etc/shells

    # make fish the default shell
    chsh -s /usr/local/bin/fish

    # install fisher plugin manager for fish
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

    # Manual setup
    # show fisher commands
    # fisher
    # install plugins
    # fisher update
}

function installVoltaAndNodeJs() {

    echo "==================================="
    echo "Installing Volta and Node.js"
    echo "==================================="

    cd ~/

    # install Volta
    curl -L https://get.volta.sh | bash -s -- --skip-setup

    # install Node
    volta install node
}

function cloneDotfiles() {

    echo "==================================="
    echo "Cloning dotfiles"
    echo "==================================="

    cd ~/

    git clone --bare https://github.com/bboydflo/.dotfiles.git .dotfiles
}

function setupTmux() {

    echo "==================================="
    echo "Linking tmux config"
    echo "==================================="

    cd ~/

    touch ~/.config/tmux/tmux.conf
    ln -sf ~/.dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
}

function setBetterMacDefaults() {

    echo "==================================="
    echo "Set better MacOS defaults"
    echo "==================================="

    source ~/.config/dotfiles/scripts/config-macos.sh
}

function install() {

    echo "==================================="
    echo "Beginning Installation..."
    echo "==================================="

    installHomebrew
    installHomebrewPackages
    installVoltaAndNodeJs
    setupFishShell
    cloneDotfiles
    # setupTmux
    setBetterMacDefaults
}

install
