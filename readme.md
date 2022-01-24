# Dotfiles

These are my dotfiles covering fish, tmux etc.

## Installation

To install simply run:

```sh
curl https://raw.githubusercontent.com/bboydflo/.dotfiles/main/.config/dotfiles/scripts/install.sh | bash
```

## Manual instructions to complete the installation

```shell
# show fisher commands
fisher
# install plugins
fisher update

# install tide plugin for fish and configure it
fisher install IlanCosman/tide@v5
tide configure

# put every config file in its place
dotfiles checkout

# install tmux plugin manager. https://github.com/tmux-plugins/tpm
# install plugins: CTRL+b + SHIFT+i
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

> Note 1: might need to restart the terminal session

> Note 2: Run `dotfiles ls-tree -r main` to show the files that are tracked

## (TMUX Powerline)[https://github.com/erikw/tmux-powerline]

```shell
git clone https://github.com/erikw/tmux-powerline ~/.config/tmux/tmux-powerline
```

> Edit default theme found `~/.config/tmux/tmux-powerline/themes/default.sh`

## TMUX Shortcuts

- `tat` takes the current folder and attaches to the sesion with the same name if it exists otherwise creates a session with that name

- create a new tmux session called wok: `tmux new -s work`

- list all available tmux commands: `tmux list-commands`

- attach to the last session: `tmux attach #`

- create a new tmux tab (window): `CMD/CTRL + t`

- rename the current tab (window): `CMD/CTRL + ,`

- kill the current tab (window): `CMD/CTRL + w`

- navigate to next/previous tab (window): `CMD/CTRL + SHIFT + ⭢` && `CMD/CTRL + SHIFT + ⭠`

- enable copy mode: `CMD/CTRL + [`

- create a new vertical pane: `CMD/CTRL + \`

- create a new horizontal pane: `CMD/CTRL + SHIFT + \`

- navigate between panes: `CMD/CTRL + ⭠/⭡/⭢/⭣`

- navigate to last active window: `CMD/CTRL + l`

- detach current pane onto a new window: `CMD/CTRL + b`

- detach the current tmux session: `CMD/CTRL + d`

- zoom in current pane: `CMD/CTRL + z`

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
