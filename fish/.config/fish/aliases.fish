# Files & Directories
abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -vp"
abbr put trash

abbr --add f ranger
abbr --add e yazi

abbr --add "?" "tlm suggest"
abbr --add "??" "tlm explain"

abbr c clear
abbr cl clear
abbr claer clear
abbr clera clear
abbr cx "chmod +x"

abbr s sesh_start
abbr s. "sesh connect ."
abbr sc "sesh connect"

abbr pc podman-compose
abbr pcd "podman-compose down"
abbr pcdv "podman-compose down -v"
abbr pcr "podman-compose restart"
abbr pcu "podman-compose up -d"
abbr pps "podman ps --format 'table {{.Names}}\t{{.Status}}'"

abbr fi "fisher install"
abbr fr "fisher refresh"
abbr fu "fisher update"
abbr fl "fisher list | sed 's/.*/"&"/'"

abbr ".." "cd ../"
abbr "..." "cd ../../"
abbr "...." "cd ../../../"
abbr "....." "cd ../../../../"
abbr "......" "cd ../../../../../"
abbr "......." "cd ../../../../../../"

abbr l "lsd  --group-dirs first -A"
abbr ll "lsd  --group-dirs first -Al"
abbr lt "lsd  --group-dirs last -A --tree"
# -A, --almost-all Do not list implied . and ..
# -l, --long       Display extended file metadata as a table
# -F, --classify   Append indicator (one of */=>@|) at the end of the file names
abbr tree "lsd -AF --tree"

abbr lsvim 'tmux list-panes -a -F "#{session_name} #{command} #{pane_pid} #{pane_title} #{window_name} #{pane_id} #{session_path}" | grep nvim'

abbr g git
alias gb 'git branch -vv'
alias gp 'git push'

alias k9="kill -9"
abbr -ag pg pgrep -f
abbr -ag pk pkill -f

abbr grep rg
abbr cat bat
abbr suod sudo

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

abbr s sesh_start
abbr s. "sesh connect ."
abbr sc "sesh connect"

# Editor
abbr nvim nvim
abbr vim nvim
abbr vi nvim
abbr v nvim

abbr vo "nvim +GoToFile"

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
