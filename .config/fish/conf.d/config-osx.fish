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
  # init starship
  starship init fish | source
end

# git path
set GIT_PATH (which git)

# miscellaneous aliases
alias j='z'
alias dotfiles='$GIT_PATH --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
