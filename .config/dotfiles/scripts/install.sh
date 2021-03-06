#!/usr/bin/env bash

function installHomebrew() {

    echo "==================================="
    echo "Installing homebrew"
    echo "==================================="
    echo "                                   "

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
    echo "fisher"
    echo "alacritty"
    echo "tmux"
    echo "volta"
    echo "z"
    echo "starship"
    echo "firefox"
    echo "exa"

    echo "diff-so-fancy"
    echo "delta"
    echo "fzf"
    echo "bat"
    echo "ripgrep"
    echo "neovim"
    echo "=================================="
    echo "                                   "

    cd ~/

    brew install git
    brew install fish
    brew install fisher
    brew install alacritty
    brew install tmux
    brew install volta
    brew install z
    brew install starship
    brew install firefox

    brew install exa
    brew install diff-so-fancy
    brew install delta
    brew install fzf
    brew install bat
    brew install ripgrep
    brew install neovim

    echo "=================================="
    echo "Installing homebrew fonts:"
    echo "font-jetbrains-mono"
    echo "font-hack-nerd-font"
    echo "font-jetbrains-mono-nerd-font"
    echo "=================================="
    echo "                                   "

    brew tap homebrew/cask-fonts
    brew install --cask font-jetbrains-mono font-hack-nerd-font font-jetbrains-mono-nerd-font

    echo "=================================="
    echo "Installing other software:"
    echo "visual-studio-code"
    echo "sublime-text"
    echo "webtorrent"
    echo "vlc"
    echo "bitwarden"
    echo "vscodium"
    echo "clipy"
    echo "appcleaner"
    echo "foxitreader"
    echo "notable"
    echo "lepton"
    echo "kap"
    echo "raycast"
    echo "f.lux"
    echo "hiddenbar"
    echo "=================================="
    echo "                                   "

    brew install --cask visual-studio-code
    brew install --cask sublime-text
    brew install --cask webtorrent
    brew install --cask vlc
    brew install --cask bitwarden
    brew install --cask vscodium
    brew install --cask clipy
    brew install --cask soda-player
    brew install --cask appcleaner
    brew install --cask foxitreader
    brew install --cask notable
    brew install --cask lepton
    brew install --cask kap
    brew install --cask raycast
    brew install --cask flux
    brew install --cask hiddenbar

    echo "=================================="
    echo "More apps to install manually:"
    echo "Lyia"
    echo "HEIC Converter"
    echo "Amphetamine"
    echo "Spectacle"
    echo "tad"
    echo "Pika"
    echo "=================================="
    echo "                                   "
    # brew install --cask spectacle
    # brew install --cask tad

    brew update

}

function setupFishShell() {

    echo "==================================="
    echo "Setup Fish Shell"
    echo "==================================="
    echo "                                   "

    cd ~/

    # add fish to the list of installed shells
    echo $(which fish) | sudo tee -a /etc/shells

    # make fish the default shell
    chsh -s $(which fish)
}

function installVoltaAndNodeJs() {

    echo "==================================="
    echo "Installing Volta and Node.js"
    echo "==================================="
    echo "                                   "

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
    echo "                                   "

    cd ~/

    git clone --bare https://github.com/bboydflo/.dotfiles.git .dotfiles
}

function setupTmux() {

    echo "==================================="
    echo "Linking tmux config"
    echo "==================================="
    echo "                                   "

    cd ~/

    touch ~/.config/tmux/tmux.conf
    ln -sf ~/.dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
}

function setBetterMacDefaults() {

    echo "==================================="
    echo "Set better MacOS defaults"
    echo "==================================="
    echo "                                   "

    source ~/.config/dotfiles/scripts/config-macos.sh
}

function install() {

    echo "==================================="
    echo "Beginning Installation..."
    echo "==================================="
    echo "                                   "

    installHomebrew
    installHomebrewPackages
    installVoltaAndNodeJs
    setupFishShell
    cloneDotfiles
    setupTmux
    setBetterMacDefaults
}

install
