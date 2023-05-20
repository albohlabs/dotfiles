# vim: set ft=zsh:

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

# source after oh-my-zsh
for file in ~/.{zinit,exports,functions,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

[ -f "/home/dpf/.ghcup/env" ] && source "/home/dpf/.ghcup/env" # ghcup-env

source "$HOME/.cargo/env"
