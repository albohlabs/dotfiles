# vim: set ft=zsh:

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# update via `g pull --recurse-submodules`
plugins=(
    # https://github.com/djui/alias-tips
    # alias-tips

    # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins
    # colored-man-pages
    docker
    docker-compose
    # fd
    # fzf
    git
    npm
    node
    postgres
    rust
    rsync
    tmux
    ubuntu
)

source $ZSH/oh-my-zsh.sh

# source after oh-my-zsh
for file in ~/.{zinit,exports,functions,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

[ -f "/home/dpf/.ghcup/env" ] && source "/home/dpf/.ghcup/env" # ghcup-env

source "$HOME/.cargo/env"
