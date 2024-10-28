#  █████╗ ██╗     ██╗ █████╗ ███████╗
# ██╔══██╗██║     ██║██╔══██╗██╔════╝
# ███████║██║     ██║███████║███████╗
# ██╔══██║██║     ██║██╔══██║╚════██║
# ██║  ██║███████╗██║██║  ██║███████║
# ╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝
# A simple wrapper for the function builtin, which creates a function wrapping a command
# https://fishshell.com/docs/current/cmds/alias.html

# alias node 'docker run --rm -it -v `pwd`:/app -w /app node:16-alpine '

# alias somafm 'mplayer -really-quiet -vo none -volume 80 -playlist http://somafm.com/groovesalad.pls'
# alias goa 'mplayer -really-quiet -vo none -volume 80 -playlist http://somafm.com/suburbsofgoa.pls'
# alias beatblender 'mplayer -really-quiet -vo none -volume 80 -playlist https://somafm.com/beatblender.pls'
# alias dronezone 'mplayer -really-quiet -vo none -volume 80 -playlist http://somafm.com/dronezone.pls'
# alias defcon 'mplayer -really-quiet -vo none -volume 80 -playlist http://somafm.com/defcon.pls'
# alias sleepbot 'mplayer -really-quiet -vo none -volume 80 -playlist http://sleepbot.com/ambience/cgi/listen.m3u'

# alias pandoc='docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex '

# alias npm='docker run --rm -it -v `pwd`:/app -w /app node:16-alpine npm '
# alias deno='docker run --rm -it -v `pwd`:/app -w /app denoland/deno '
# alias aws='docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli '
# alias ffmpeg='docker run --rm -it -v `pwd`:/app jrottenberg/ffmpeg '

alias vf 'fd --type f --hidden --follow --exclude .git \
   | gum filter --limit 1 --placeholder "Choose a file to open in vim" --height 15 \
   | xargs --no-run-if-empty nvim'
alias vff 'fd --type f --hidden --follow --exclude .git \
   | fzf-tmux -p -w 100 --reverse --preview "bat --color=always --style=numbers --line-range=:500 {}" \
   | xargs --no-run-if-empty nvim'
alias vg 'git ls-files -m --others --exclude-standard \
  | gum filter --limit 1 --placeholder "Choose from git ls-file" --height 15 \
  | xargs --no-run-if-empty nvim'

alias p "pnpm run (jq -r '.scripts|to_entries[]|((.key))' package.json \
  | gum filter --limit 1 --placeholder \"pnpm run\" --height 15)"

alias j just

alias gnome-control-center "env XDG_CURRENT_DESKTOP=GNOME gnome-control-center"

abbr weather curl -s wttr.in/Leipzig | grep -v Follow

# systemctl
abbr su systemctl --user
abbr ss command systemctl status
abbr sl systemctl --type service --state running
abbr slu systemctl --user --type service --state running
abbr se sudo systemctl enable --now
abbr sd sudo systemctl disable --now
abbr sr sudo systemctl restart
abbr so sudo systemctl stop
abbr sa sudo systemctl start
abbr sf systemctl --failed --all

# journalctl
abbr jb journalctl -b
abbr jbe journalctl -b -p err
abbr jf journalctl --follow
abbr jg journalctl -b --grep
abbr ju journalctl --unit

abbr ipv4 ip addr show | grep 'inet ' | grep -v '127.0.0.1' | cut -d' ' -f6 | cut -d/ -f1
abbr ipv6 ip addr show | grep 'inet6 ' | cut -d ' ' -f6 | sed -n 2p

abbr yeet sudo pacman -Rns

abbr daty date +%Y-%m-%d

# get password from 1password-cli
abbr backup "op item get backrest --reveal --format json | jq .fields[0].value -r | restic -r /run/media/dpf/Backup/ backup ~ --exclude-file=/home/dpf/dotfiles/restic-excludes.txt --tag plan:manual --tag created-by:machine"
