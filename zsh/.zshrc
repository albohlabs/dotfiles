# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# https://github.com/zsh-users/zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
# ZSH_THEME="avit"
# ZSH_THEME="miloshadzic"

# update via `g pull --recurse-submodules`
plugins=(
    # https://github.com/djui/alias-tips
    alias-tips
    git
    npm
    tmux
    colored-man-pages
    # direnv
    # https://github.com/zsh-users/zsh-autosuggestions
    zsh-autosuggestions
    # https://github.com/zsh-users/zsh-history-substring-search
    history-substring-search
    # https://github.com/zsh-users/zsh-completions
    zsh-completions
    # https://github.com/jeffreytse/zsh-vi-mode
    vi-mode
)

source $ZSH/oh-my-zsh.sh

# source after oh-my-zsh
for file in ~/.{exports,functions,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

# enable fzf keybindings
source /usr/share/doc/fzf/examples/key-bindings.zsh
# enable fuzzy auto-completion
source /usr/share/doc/fzf/examples/completion.zsh

# https://github.com/zsh-users/zsh-syntax-highlighting
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PNPM_HOME="/home/dpf/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# https://github.com/ajeetdsouza/zoxide#installation
eval "$(zoxide init zsh)"

[ -f "/home/dpf/.ghcup/env" ] && source "/home/dpf/.ghcup/env" # ghcup-env

# https://starship.rs/
eval "$(starship init zsh)"

