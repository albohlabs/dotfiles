set -gx ATUIN_NOBIND true

atuin init fish --disable-up-arrow | source

# should come last to override the fzf ctrl-r binding - places in config.fish
# bind \cr _atuin_search
# bind -M insert \cr _atuin_search
