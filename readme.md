# Dotfiles

These are my dotfiles. To use them first install [git](https://git-scm.com/) or `brew install git`

## Usage on a completely new machine

```shell
# move into home directory
cd ~

# install brew if on macos/linux
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install useful packages
brew install git fish alacritty tmux volta fzf z diff-so-fancy

# add fish to the list of installed shells
echo '/usr/local/bin/fish' | sudo tee -a /etc/shells
# make fish the default shell
chsh -s /usr/local/bin/fish

# install fisher plugin manager for fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
# show fisher commands
fisher
# install plugins
fisher update

# install tide plugin for fish
# fisher install IlanCosman/tide@v5
# configure tide
# tide configure
# install starship - https://github.com/starship/starship
# https://starship.rs/guide/#%F0%9F%9A%80-installation

# install nerd fonts (see list of fonts here https://github.com/Homebrew/homebrew-cask-fonts/tree/master/Casks)
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font font-jetbrains-mono-nerd-font

# clone dotfiles repo
git clone --bare https://github.com/bboydflo/.dotfiles.git .dotfiles

> might need to restart the terminal session

# overwrite custom config with configuration from dotfiles repo
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
dotfiles config --local user.name "Florin Onciu"
dotfiles config --local user.email "cosmin.onciu@gmail.com"
```

> Note: Run `dotfiles ls-tree -r main` to show the files that are tracked

## TMUX Shortcuts

- create a new tmux session called wok: `tmux new -s work`

- create a new tmux tab: `CMD/CTRL + t`

- rename the current tab: `CMD/CTRL + ,`

- navigate to next/previous tab: `CMD/CTRL + SHIFT + ]` && `CMD/CTRL + SHIFT + [`

- create a new vertical panel: `CMD/CTRL + n`

- create a new horizontal panel: `CMD/CTRL + SHIFT + n`

- navigate between panels: `CMD/CTRL + ⭠/⭡/⭢/⭣`

- kill a current panel or tab: `CMD/CTRL + d`

> Check `~/.config/alacritty/alacritty.yml` file to inspect other active shortcuts

## Resources

1. https://mck-workman.medium.com/how-to-manage-dotfiles-across-multiple-systems-698d3088288c
2. https://github.com/nancynobody/.dotfiles
3. https://github.com/kyazdani42/dotfiles
4. https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html
5. https://www.digitalocean.com/community/tutorials/how-to-use-rsync-to-sync-local-and-remote-directories
6. https://www.freecodecamp.org/news/dive-into-dotfiles-part-2-6321b4a73608/
7. https://github.com/mathiasbynens/dotfiles
8. http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
