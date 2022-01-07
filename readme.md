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

# install nerd fonts (see list of fonts here https://github.com/Homebrew/homebrew-cask-fonts/tree/master/Casks)
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font font-jetbrains-mono-nerd-font

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

# clone dotfiles repo
git clone --bare https://github.com/bboydflo/.dotfiles.git .dotfiles
# configure fish alias
alias dotfiles="/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
# put every config file in its place
dotfiles checkout

# overwrite custom config with configuration from dotfiles repo
# dotfiles config --local status.showUntrackedFiles no
# dotfiles config --local user.name "Florin Onciu"
# dotfiles config --local user.email "cosmin.onciu@gmail.com"

# install tmux plugin manager
# https://github.com/tmux-plugins/tpm
# install plugins: CTRL+b + SHIFT+i
```

> Note 1: might need to restart the terminal session

> Note 2: Run `dotfiles ls-tree -r main` to show the files that are tracked

## TMUX Powerline (https://github.com/erikw/tmux-powerline)

```shell
git clone https://github.com/erikw/tmux-powerline ~/.config/tmux/tmux-powerline

# edit default theme found ~/.config/tmux/tmux-powerline/themes/default.sh
```

## TMUX Shortcuts

- `tat` takes the current folder and attaches to the sesion with the same name if it exists otherwise creates a session with that name

- create a new tmux session called wok: `tmux new -s work`

- attach to the last session: `tmux attach #`

- create a new tmux tab: `CMD/CTRL + t`

- rename the current tab: `CMD/CTRL + ,`

- kill the current tab: `CMD/CTRL + w`

- navigate to next/previous tab: `CMD/CTRL + SHIFT + ⭢` && `CMD/CTRL + SHIFT + ⭠`

- create a new vertical panel: `CMD/CTRL + \`

- create a new horizontal panel: `CMD/CTRL + SHIFT + \`

- navigate between panels: `CMD/CTRL + ⭠/⭡/⭢/⭣`

- detach the current tmux session: `CMD/CTRL + d`

- zoom in current panel: `CMD/CTRL + z`

- refresh tmux config: `CMD/CTRL + r`

- list tmux sessions: `tmux session list`

- navigate tmux sessions, windows and panes via choose-tree: `CMD/CTRL + j`

> Check `~/.config/alacritty/alacritty.yml` file to inspect other active shortcuts

---

## Tmux Resources

- official tmux docs: https://man.openbsd.org/tmux

- more tmux docs https://www.man7.org/linux/man-pages/man1/tmux.1.html

- https://devhints.io/tmux

- https://thevaluable.dev/tmux-config-mouseless/

- https://tao-of-tmux.readthedocs.io/en/latest/index.html

---

## Resources

1.  https://mck-workman.medium.com/how-to-manage-dotfiles-across-multiple-systems-698d3088288c
2.  https://github.com/nancynobody/.dotfiles
3.  https://github.com/kyazdani42/dotfiles
4.  https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html
5.  https://www.digitalocean.com/community/tutorials/how-to-use-rsync-to-sync-local-and-remote-directories
6.  https://www.freecodecamp.org/news/dive-into-dotfiles-part-2-6321b4a73608/
7.  https://github.com/mathiasbynens/dotfiles
8.  http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
9.  https://reconshell.com/tmux-resources/ for more tmux resources
10. https://medium.com/hackernoon/customizing-tmux-b3d2a5050207 understanding tmux configuration
11. https://github.com/sbernheim4/dotfiles cool example on how to bootstrap dotfiles on a new system
