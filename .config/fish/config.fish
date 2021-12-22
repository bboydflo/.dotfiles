# clear welcome text
set -g fish_greeting

# language
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# .config path
set -x CONFIG_PATH ~/.config

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# https://stackoverflow.com/a/48750830/1597360
set host_config ~/.config/fish/config-(hostname).fish
test -r $host_config; and source $host_config
