#
# ███████╗██╗███████╗██╗  ██╗
# ██╔════╝██║██╔════╝██║  ██║
# █████╗  ██║███████╗███████║
# ██╔══╝  ██║╚════██║██╔══██║
# ██║     ██║███████║██║  ██║
# ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝
# A smart and user-friendly command line
# https://fishshell.com/

set -U fish_greeting # disable fish greeting
set -U fish_key_bindings fish_vi_key_bindings

set -gx GPG_TTY (tty)

set -x fish_user_paths
# Path
fish_add_path /bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/share/pnpm
fish_add_path $HOME/.local/share/active/bin

# golang - https://golang.google.cn/
set -Ux GOPATH (go env GOPATH)
fish_add_path $GOPATH/bin

set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR
# set -gx NVIM_APPNAME AstroVim
set -gx NVIM_APPNAME lazyvim
set -Ux PAGER nvimpager

# configure franciscolourenco/done
set -g __done_exclude 'nvim|vim|vi|man|less|journalctl|newsboat'

set -x LESS -rF
set -x MANPAGER "nvim +Man!"

# print very large env variables
# set -xL | string match -r '.{1024,}'
