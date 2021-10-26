# Dotfiles

These are my dotfiles. To use them first install [git](https://git-scm.com/) or `brew install git`

## Usage on a completely new machine

```shell
# move into home directory
cd ~

# install brew if on macos/linux
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install useful packages
brew install git fish alacritty tmux volta z diff-so-fancy

# install fisher plugin manager for fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# install tide plugin for fish
# fisher install IlanCosman/tide@v5
# configure tide
# tide configure
# install starship - https://github.com/starship/starship
# https://starship.rs/guide/#%F0%9F%9A%80-installation

# add fish to the list of installed shells
echo “/usr/local/bin/fish” | sudo tee -a /etc/shells
# make fish the default shell
chsh -s /usr/local/bin/fish

# install nerd fonts (see list of fonts here https://github.com/Homebrew/homebrew-cask-fonts/tree/master/Casks)
brew tap caskroom/fonts
brew install --cask font-hack-nerd-font font-firacode-nerd-font font-jetbrains-mono-nerd-font

# clone dotfiles repo
git clone --bare https://github.com/bboydflo/.dotfiles.git

FISH_CONFIG_OSX="
# language
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# .config path
set -x CONFIG_PATH ~/.config

# volta setup
if type -q volta
  set -gx VOLTA_HOME "$HOME/.volta"
  set -gx PATH "$VOLTA_HOME/bin" $PATH
end

# exa setup
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

# starship setup
if type -q starship
  # init starship
  starship init fish | source
end

# miscellaneous aliases
alias j "z"
alias dotfiles '/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
"
echo FISH_CONFIG_OSX >> ~/.config/fish/config-osx.fish
source ~/.config/fish/config.fish

# overwrite custom config with configuration from dotfiles repo
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
dotfiles config --local user.name "Florin Onciu"
dotfiles config --local user.email "<my-email-here>"
```

> Note: Run `dotfiles ls-tree -r main` to show the files that are tracked

## Resources

1. https://mck-workman.medium.com/how-to-manage-dotfiles-across-multiple-systems-698d3088288c
2. https://github.com/nancynobody/.dotfiles
3. https://github.com/kyazdani42/dotfiles
4. https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html
5. https://www.digitalocean.com/community/tutorials/how-to-use-rsync-to-sync-local-and-remote-directories
6. https://www.freecodecamp.org/news/dive-into-dotfiles-part-2-6321b4a73608/
7. https://github.com/mathiasbynens/dotfiles
8. http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
