# Files & Directories
abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -vp"

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

# alias vo 'fd --type f --hidden --exclude .git | fzf-tmux -p --sort | xargs --no-run-if-empty nvim'
abbr :GoToFile "nvim +GoToFile"
alias vo "nvim +GoToFile"

# alias vg 'git ls-files -m --others --exclude-standard | fzf-tmux -p --sort | xargs --no-run-if-empty nvim'
abbr :GoToGitStatus "nvim +GoToFile"
alias vg "nvim +GoToFile"
abbr :Grep "nvim +Grep"

abbr p "pnpm run (jq -r '.scripts|to_entries[]|((.key))' package.json | fzf-tmux -p --border-label='pnpm run')"
abbr pa "pnpm add"
abbr pb "pnpm build"
abbr pd "pnpm dev"
abbr pe "pnpm e2e"
abbr pg "pnpm generate"
abbr ph "pnpm help"
abbr pi "pnpm install"
abbr pim "pnpm import"
abbr pir "pnpm rebuild"
abbr pit "pnpm install-test"
abbr pl "pnpm link"
abbr pls "pnpm ls"
abbr pr "pnpm run"
abbr ps "pnpm start"
abbr psa "pnpm store add"
abbr psp "pnpm store prune"
abbr pss "pnpm store status"
abbr pt "pnpm test"
abbr pu "pnpm update"
abbr pul "pnpm unlink"
abbr pw "pnpm web"

abbr nb "npm run build"
abbr nd "npm run dev"
abbr nf neofetch
abbr ni "npm install"
abbr nt "npm run test"

abbr c clear
abbr cl clear
abbr claer clear
abbr clera clear

abbr cx "chmod +x"
