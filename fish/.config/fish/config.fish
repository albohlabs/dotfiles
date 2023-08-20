set -U fish_greeting # disable fish greeting

set -x fish_user_paths
# Path
# fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/share/pnpm
fish_add_path $HOME/.local/share/bob/nvim-bin
fish_add_path /bin
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin

set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR
set -gx NVIM_APPNAME AstroVim

# Set cursor theme
set -gx XCURSOR_THEME Adwaita
set -gx SWAY_CURSOR_THEME Adwaita
set -gx XCURSOR_SIZE 16
set -gx SWAY_CURSOR_SIZE 16

# configure franciscolourenco/done
set -g __done_exclude 'nvim|vim|vi|man|less|journalctl'

# FZF options
set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --follow --exclude .git --exclude node_modules'
set -gx FZF_DEFAULT_OPTS '--height 50% --layout=reverse --border --info=inline --marker="*" --bind "ctrl-y:execute(echo {+} | wl-copy)" --bind "ctrl-a:select-all" --bind "?:toggle-preview"'
set fzf_history_opts --sort --exact --history-size=30000
set fzf_fd_opts --hidden --follow --exclude=.git
set fzf_preview_dir_cmd exa --all --color=always

set -x LESS -rF
set -x BAT_THEME Dracula
set -x MANPAGER "nvim +Man!"

source $__fish_config_dir/aliases.fish
