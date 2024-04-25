##  █████╗ ██╗     ██╗ █████╗ ███████╗
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

alias fzfp 'fzf --height 100% --sort --preview "bat --style=numbers --color=always {}"'

alias pempty "trash list | fzf-tmux --multi -p --sort | awk '{print $5}' | xargs --no-run-if-empty trash empty --match=exact --force"
alias prestore "trash list | fzf-tmux --multi -p --sort | awk '{print $1}' | xargs --no-run-if-empty trash restore --match=exact --force"

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
