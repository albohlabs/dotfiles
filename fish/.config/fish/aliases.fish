# Files & Directories
abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -vp"
abbr put trash

# https://github.com/ranger/ranger
abbr f ranger

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

# Editor
abbr nvim nvim
abbr vim nvim
abbr vi nvim
abbr v nvim

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

# alias vo 'fd --type f --hidden --exclude .git | fzf-tmux -p --sort | xargs --no-run-if-empty nvim'
abbr :GoToFile "nvim +GoToFile"
alias vo "nvim +GoToFile"

# alias vg 'git ls-files -m --others --exclude-standard | fzf-tmux -p --sort | xargs --no-run-if-empty nvim'
abbr :GoToGitStatus "nvim +GoToGitStatus"
alias vg "nvim +GoToGitStatus"

abbr :Grep "nvim +Grep"
alias vf "nvim +Grep"

abbr p "pnpm run (jq -r '.scripts|to_entries[]|((.key))' package.json | fzf-tmux -p --border-label='pnpm run')"
