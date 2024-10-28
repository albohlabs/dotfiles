#  █████╗ ██████╗ ██████╗ ██████╗
# ██╔══██╗██╔══██╗██╔══██╗██╔══██╗
# ███████║██████╔╝██████╔╝██████╔╝
# ██╔══██║██╔══██╗██╔══██╗██╔══██╗
# ██║  ██║██████╔╝██████╔╝██║  ██║
# ╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚═╝  ╚═╝
# abbreviations - user-defined words that are replaced with longer phrases when entered
# https://fishshell.com/docs/current/cmds/abbr.html

abbr :GoToFile "nvim +GoToFile"
abbr vo "nvim +GoToFile"

abbr :SmartGoTo "nvim +SmartGoTo"
abbr :Grep "nvim +Grep"
abbr :bd exit
abbr :q "tmux kill-server"
abbr :qa! "tmux kill-server"

# Files & Directories
abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -vp"
abbr put trash

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

abbr l eza -A --group-directories-first
abbr ll eza -F -l -A --icons --group-directories-first
abbr tree eza -A --tree --icons

abbr lsvim 'tmux list-panes -a -F "#{session_name} #{command} #{pane_pid} #{pane_title} #{window_name} #{pane_id} #{session_path}" | grep nvim'

abbr g git
abbr gb 'git branch -vv'
abbr gp 'git push'

abbr grep rg
abbr cat bat
abbr suod sudo

abbr s "sesh connect \"\$(sesh list -i | gum filter --limit 1 --fuzzy --no-sort --placeholder 'Pick a sesh' --prompt='⚡')\""
abbr s. "sesh connect ."

# Editor
abbr nvim nvim
abbr vim nvim
abbr vi nvim
abbr v nvim
