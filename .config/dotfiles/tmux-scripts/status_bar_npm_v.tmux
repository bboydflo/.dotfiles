#!/bin/bash
PLUGIN_DIR=$(tmux show-option -gqv "@status_variables_dir")
source "$PLUGIN_DIR/utils/sdk.sh"

on_cache_miss() {
    echo "$(npm -v 2>&1 > /dev/null)"
    sleep 1
}

# echo "$(get_cached_value on_cache_miss)"
tmux set-option -gq "npm_version" "$(get_cached_value on_cache_miss)"
