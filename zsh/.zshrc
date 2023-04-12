# vim: set ft=zsh:

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# https://github.com/zsh-users/zsh-completions
# fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
# ZSH_THEME="avit"
# ZSH_THEME="miloshadzic"

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
    
    # https://github.com/zsh-users/zsh-autosuggestions
    # zsh-autosuggestions
    # https://github.com/zsh-users/zsh-completions
    # zsh-completions
    # https://github.com/jeffreytse/zsh-vi-mode
    # vi-mode
)

source $ZSH/oh-my-zsh.sh

# source after oh-my-zsh
for file in ~/.{zinit,exports,functions,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

# fzf
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND="rg --files --no-ignore-vcs --hidden -g '!{**/node_modules/*,**/.git/*}'"
# export FZF_CTRL_T_COMMAND="rg --files --no-ignore-vcs --hidden -g '!{**/node_modules/*,**/.git/*}'"
# source /usr/share/doc/fzf/examples/key-bindings.zsh # enable fzf keybindings
# source /usr/share/doc/fzf/examples/completion.zsh # enable fuzzy auto-completion

# https://github.com/zsh-users/zsh-syntax-highlighting
# source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# https://github.com/ajeetdsouza/zoxide#installation
# eval "$(zoxide init zsh)"

[ -f "/home/dpf/.ghcup/env" ] && source "/home/dpf/.ghcup/env" # ghcup-env

# https://starship.rs/
# eval "$(starship init zsh)"

source "$HOME/.cargo/env"

# bun completions
# [ -s "/home/dpf/.bun/_bun" ] && source "/home/dpf/.bun/_bun"

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

#####################
# FZF SETTINGS      #
#####################
export FZF_DEFAULT_OPTS="
--ansi
--layout=default
--info=inline
--height=100%
--multi
--no-sort
--prompt='λ -> '
--pointer='|>'
--marker='✓'
--bind 'ctrl-e:execute(nvim {} < /dev/tty > /dev/tty 2>&1)' > selected
--bind 'ctrl-v:execute(code {+})'"
FD_OPTIONS="--hidden --follow"
export FZF_DEFAULT_COMMAND="fd --type f --type l $FD_OPTIONS || git ls-files --cached --others --exclude-standard"
export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"
export FZF_COMPLETION_OPTS="-x"

_fzf_compgen_path() {
    fd --hidden --follow . "$1"
}
_fzf_compgen_dir() {
    fd --type d --hidden --follow . "$1"
}

#####################
# PNPM SETTINGS      #
#####################
export PNPM_HOME="/home/dpf/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
