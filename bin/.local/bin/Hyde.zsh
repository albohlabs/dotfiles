_Hyde () {
    local -a literals=("revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "d" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "override" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--rebuild" "--blur" "restore" "-d" "emoji" "sddm" "run" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    local -A descriptions
    descriptions[1]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[2]=" Removes Chaotic Aur"
    descriptions[3]=" Setup Choatic Aur, append [fresh] to run in fresh install mode"
    descriptions[4]=" Toggle to use wallpaper accent themes"
    descriptions[5]=" Default tranparency"
    descriptions[6]="  Show the JSON format"
    descriptions[7]=" [*] Save power by disabling features"
    descriptions[8]=" [*] Unset specific changes"
    descriptions[9]=" wallbash light mode"
    descriptions[10]="  Stop every instance of Screencap"
    descriptions[11]=" Disable animations"
    descriptions[12]=" Backing up commands"
    descriptions[13]=" Restores dots from previous backup"
    descriptions[14]=" List the backup"
    descriptions[15]=" Cursor setting"
    descriptions[16]="  Show the pretty format"
    descriptions[17]="    run without custom '.lst' bookmark files"
    descriptions[18]=" Only restores dots from default '/Configs'"
    descriptions[19]=" cliphist list and delete selected"
    descriptions[20]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[21]="  Record focused monitor"
    descriptions[22]=" Theme commands"
    descriptions[23]=" [*] Bookmark selector"
    descriptions[24]=" wallbash disabled"
    descriptions[25]="  Frozen screen, drag to manually snip an area"
    descriptions[26]=" [*] Pastebin manager "
    descriptions[27]=" wallbash auto"
    descriptions[28]=" System information"
    descriptions[29]=" Change all the pre-set sizes"
    descriptions[30]=" Set cursor theme"
    descriptions[31]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[32]=" Upgrades dots from the repository"
    descriptions[33]=" Waybar commands"
    descriptions[34]=" Toggle ﯦ Set/unset current changes'"
    descriptions[35]=" Just reload"
    descriptions[36]=" Pull updates from Hyde repository"
    descriptions[37]=" Backs up the current configuration"
    descriptions[38]=" Glyph selector"
    descriptions[39]="  Print focused monitor"
    descriptions[40]=" cliphist wipe database"
    descriptions[41]=" Toggle game mode"
    descriptions[42]=" Shell commands"
    descriptions[43]=" [*] Hyde Config File & Directory status"
    descriptions[44]=" Check active cursor status (only gsettings)"
    descriptions[45]=" Reloads waybar"
    descriptions[46]=" Reset changes"
    descriptions[47]=" Default animations"
    descriptions[48]=" Hyde-cli version"
    descriptions[49]=" Theme selector"
    descriptions[50]=" Disable blur"
    descriptions[51]=" Select sddm theme"
    descriptions[52]=" Clear some storage by deleting old backups"
    descriptions[53]=" [*]Set waybar size"
    descriptions[54]=" Reload cursors"
    descriptions[55]="  Add custom file"
    descriptions[56]="  Drag to manually snip an area"
    descriptions[57]=" Reload wallpaper cache"
    descriptions[58]=" Restores dots from a clone repository "
    descriptions[59]=" Information about Hyde and its components"
    descriptions[60]=" Overwrite current dots from the prefered user dir "
    descriptions[62]="   Diff mismatched dotfiles"
    descriptions[63]=" Previous wallpaper"
    descriptions[64]=" Disable border angle animation"
    descriptions[65]=" Wallpaper commands"
    descriptions[66]=" Default border angle animation"
    descriptions[67]=" Useful GUI util"
    descriptions[68]="  Custom width"
    descriptions[69]=" User/Device specific scripts that might be useful"
    descriptions[70]=" Power Options"
    descriptions[71]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[72]=" [*] Show keybind hints"
    descriptions[73]=" Force rebuild cache"
    descriptions[74]=" Use rofi to select screenshot options "
    descriptions[75]=" cliphist list and copy selected"
    descriptions[76]=" Show Manual"
    descriptions[77]=" Fixes issues for asus devices"
    descriptions[78]=" Watches hyprland events and executes actions"
    descriptions[79]="   force rebuild cached bookmark paths"
    descriptions[80]=" Default blur"
    descriptions[81]=" Restore dots"
    descriptions[82]="  Add custom delimiter symbol (default '>')"
    descriptions[83]=" Emoji selector"
    descriptions[84]=" Sddm commands"
    descriptions[85]=" Executable utilities"
    descriptions[86]=" Manages Hyde's cache"
    descriptions[87]=" Interactive control file"
    descriptions[88]=" Previous theme"
    descriptions[89]=" [*] Add chaotic aur to you mirror"
    descriptions[90]="   Pipes STDOUT to less"
    descriptions[91]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[92]=" Disable tranparency"
    descriptions[93]="  Reinitialize screencap"
    descriptions[94]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[95]=" Inhibits idle when player status: 'Playing"
    descriptions[96]="  Print all outputs"
    descriptions[97]=" Next theme"
    descriptions[98]="  Display this help message"
    descriptions[99]=" Wallpaper selector"
    descriptions[100]="   Diff preserved dotfiles"
    descriptions[101]=" Set cursor size"
    descriptions[102]=" Next wallppaer"
    descriptions[103]=" Set preavailable Hyde branch"
    descriptions[104]=" Flatpak setup for HyDE"
    descriptions[105]=" Manage users restore control list"
    descriptions[106]=" [*] Screenshot and screenrecord tool"
    descriptions[107]="  Drag to manually snip an area to screen record it"
    descriptions[108]=" wallbash dark mode"
    descriptions[109]=" Converts chaotic aur packages to AUR"
    descriptions[110]=" Set theme"
    descriptions[111]=" Patch a theme from different repository."
    descriptions[112]=" Shell selector"
    descriptions[113]=" Hyde core Package status"
    descriptions[114]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([33]=25 [59]=3 [36]=4 [48]=5 [4]=6 [60]=7 [22]=8 [84]=10 [85]=11 [103]=13 [86]=12 [35]=26 [42]=14 [87]=15 [76]=16 [28]=17 [12]=18 [65]=19 [15]=20 [67]=21 [69]=22 [32]=24 [70]=2 [81]=9)"
    literal_transitions[2]="([34]=28 [41]=28 [7]=36 [46]=28 [8]=35)"
    literal_transitions[3]="([113]=28 [43]=31)"
    literal_transitions[6]="([31]=28 [91]=34)"
    literal_transitions[8]="([49]=28 [97]=28 [111]=28 [88]=28 [110]=28)"
    literal_transitions[9]="([94]=28 [18]=28 [13]=28 [58]=28)"
    literal_transitions[10]="([51]=28)"
    literal_transitions[11]="([95]=28 [78]=28 [106]=27)"
    literal_transitions[12]="([73]=28 [57]=28)"
    literal_transitions[14]="([112]=28)"
    literal_transitions[15]="([105]=28)"
    literal_transitions[18]="([14]=28 [37]=28 [52]=28 [1]=28)"
    literal_transitions[19]="([99]=28 [102]=28 [71]=28 [63]=28)"
    literal_transitions[20]="([54]=28 [44]=28 [101]=28 [30]=28)"
    literal_transitions[21]="([83]=28 [74]=28 [26]=30 [38]=28 [72]=33 [23]=32)"
    literal_transitions[22]="([77]=28 [104]=28 [89]=37)"
    literal_transitions[25]="([45]=28 [53]=38 [114]=28)"
    literal_transitions[27]="([10]=28 [107]=28 [21]=28 [39]=28 [25]=28 [93]=28 [56]=28 [96]=28 [20]=28)"
    literal_transitions[29]="([61]=28)"
    literal_transitions[30]="([40]=28 [19]=28 [75]=28)"
    literal_transitions[31]="([100]=28 [90]=28 [62]=28)"
    literal_transitions[32]="([79]=28 [17]=28)"
    literal_transitions[33]="([6]=28 [98]=28 [16]=28 [68]=28 [82]=28 [55]=28)"
    literal_transitions[34]="([24]=28 [27]=28 [108]=28 [9]=28)"
    literal_transitions[35]="([5]=28 [47]=28 [66]=28 [80]=28)"
    literal_transitions[36]="([11]=28 [50]=28 [64]=28 [92]=28)"
    literal_transitions[37]="([2]=28 [109]=28 [3]=28)"
    literal_transitions[38]="([29]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([24]=28 [4]=28 [13]=28 [17]=28 [1]=23 [7]=28 [16]=28 [5]=28 [23]=29 [26]=28)

    declare -A subword_transitions

    local state=1
    local word_index=2
    while [[ $word_index -lt $CURRENT ]]; do
        if [[ -v "literal_transitions[$state]" ]]; then
            local -A state_transitions
            eval "state_transitions=${literal_transitions[$state]}"

            local word=${words[$word_index]}
            local word_matched=0
            for ((literal_id = 1; literal_id <= $#literals; literal_id++)); do
                if [[ ${literals[$literal_id]} = "$word" ]]; then
                    if [[ -v "state_transitions[$literal_id]" ]]; then
                        state=${state_transitions[$literal_id]}
                        word_index=$((word_index + 1))
                        word_matched=1
                        break
                    fi
                fi
            done
            if [[ $word_matched -ne 0 ]]; then
                continue
            fi
        fi

        if [[ -v "match_anything_transitions[$state]" ]]; then
            state=${match_anything_transitions[$state]}
            word_index=$((word_index + 1))
            continue
        fi

        return 1
    done

    completions_no_description_trailing_space=()
    completions_no_description_no_trailing_space=()
    completions_trailing_space=()
    suffixes_trailing_space=()
    descriptions_trailing_space=()
    completions_no_trailing_space=()
    suffixes_no_trailing_space=()
    descriptions_no_trailing_space=()

    if [[ -v "literal_transitions[$state]" ]]; then
        local -A state_transitions
        eval "state_transitions=${literal_transitions[$state]}"

        for literal_id in ${(k)state_transitions}; do
            if [[ -v "descriptions[$literal_id]" ]]; then
                completions_trailing_space+=("${literals[$literal_id]}")
                suffixes_trailing_space+=("${literals[$literal_id]}")
                descriptions_trailing_space+=("${descriptions[$literal_id]}")
            else
                completions_no_description_trailing_space+=("${literals[$literal_id]}")
            fi
        done
    fi

    local maxlen=0
    for suffix in ${suffixes_trailing_space[@]}; do
        if [[ ${#suffix} -gt $maxlen ]]; then
            maxlen=${#suffix}
        fi
    done
    for suffix in ${suffixes_no_trailing_space[@]}; do
        if [[ ${#suffix} -gt $maxlen ]]; then
            maxlen=${#suffix}
        fi
    done

    for ((i = 1; i <= $#suffixes_trailing_space; i++)); do
        if [[ -z ${descriptions_trailing_space[$i]} ]]; then
            descriptions_trailing_space[$i]="${(r($maxlen)( ))${suffixes_trailing_space[$i]}}"
        else
            descriptions_trailing_space[$i]="${(r($maxlen)( ))${suffixes_trailing_space[$i]}} -- ${descriptions_trailing_space[$i]}"
        fi
    done

    for ((i = 1; i <= $#suffixes_no_trailing_space; i++)); do
        if [[ -z ${descriptions_no_trailing_space[$i]} ]]; then
            descriptions_no_trailing_space[$i]="${(r($maxlen)( ))${suffixes_no_trailing_space[$i]}}"
        else
            descriptions_no_trailing_space[$i]="${(r($maxlen)( ))${suffixes_no_trailing_space[$i]}} -- ${descriptions_no_trailing_space[$i]}"
        fi
    done

    compadd -Q -a completions_no_description_trailing_space
    compadd -Q -S ' ' -a completions_no_description_no_trailing_space
    compadd -l -Q -a -d descriptions_trailing_space completions_trailing_space
    compadd -l -Q -S '' -a -d descriptions_no_trailing_space completions_no_trailing_space
    return 0
}

compdef _Hyde Hyde
