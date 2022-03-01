# clear welcome text
set -g fish_greeting

# language
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# finish fish installation
eval (/opt/homebrew/bin/brew shellenv)

# .config path
set -x CONFIG_PATH ~/.config

# Commands to run in interactive sessions can go here
if status is-interactive

    # https://stackoverflow.com/a/48750830/1597360
    set host_config $CONFIG_PATH/fish/config-(hostname).fish
    test -r $host_config; and source $host_config

    # volta setup
    if type -q volta
        set -gx VOLTA_HOME "$HOME/.volta"
        set -gx PATH "$VOLTA_HOME/bin" $PATH
    end

    # exa setup
    if type -q exa
        alias ll="exa -l -g --icons"
        alias lla="ll -a"
    end

    # starship setup
    if type -q starship
        set -x STARSHIP_CONFIG $CONFIG_PATH/starship/config.toml
        # init starship
        # starship init fish | source
    end

    # better find
    if type -q fzf
        export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
        alias f "find * -type f | fzf"
    end

    # if bass fish plugin available
    if type -q bass
        alias tat="bass $CONFIG_PATH/fish/custom-scripts/tmux-tat.sh"
    end

    # git path
    set GIT_PATH (which git)

    # miscellaneous aliases
    alias j="z"
    alias tmux="tmux -f $CONFIG_PATH/tmux/tmux.conf"

    # dotfiles configuration
    alias dotfiles="$GIT_PATH --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
    dotfiles config --local status.showUntrackedFiles no
    dotfiles config --local user.name "Florin Onciu"
    dotfiles config --local user.email "cosmin.onciu@gmail.com"
end

