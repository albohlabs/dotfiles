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

export PNPM_HOME="/home/dpf/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

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
--preview-window=right:50%
--preview-window=sharp
--preview-window=cycle
--preview '([[ -f {} ]] && (bat --style=numbers --color=always --theme=\"Catppuccin-mocha\" --line-range :500 {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--prompt='λ -> '
--pointer='|>'
--marker='✓'
--bind 'ctrl-e:execute(nvim {} < /dev/tty > /dev/tty 2>&1)' > selected
--bind 'ctrl-v:execute(code {+})'"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
