# Files & Directories
abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -vp"

# https://github.com/ranger/ranger
abbr cdc ranger

alias ls "exa --color=always --icons --group-directories-first"
alias la 'exa --color=always --icons --group-directories-first --all'
alias ll 'exa --color=always --icons --group-directories-first --all --long'
abbr l ll

set -x exa_options '--links --group --changed --time-style long-iso --icons'
alias tree "exa --long --tree --level=4 -a $(printf $exa_options)"

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

alias vo 'fd --type f --hidden --exclude .git | fzf-tmux -p --sort | xargs --no-run-if-empty nvim'
alias vg 'g ls-files -m --others --exclude-standard | fzf-tmux -p --sort | xargs --no-run-if-empty nvim'
alias fzfp 'fzf --height 100% --sort --preview "bat --style=numbers --color=always {}"'

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
