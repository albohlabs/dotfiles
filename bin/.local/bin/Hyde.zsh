_Hyde_spec_0 () {
    _path_files
}

_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "code" "--animations" "search" "--site" "version" "select" "--blur" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

    local -A descriptions
    descriptions[1]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[2]=" Removes Chaotic Aur"
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[4]="	list and copy selected"
    descriptions[5]=" Default tranparency"
    descriptions[6]="  Show the JSON format"
    descriptions[7]=" set the code theme"
    descriptions[8]=" [*] Save power by disabling features"
    descriptions[9]=" [*] Unset specific changes"
    descriptions[10]=" wallbash light mode"
    descriptions[11]="  Stop every instance of Screencap"
    descriptions[12]=" Disable animations"
    descriptions[13]=" Backing up commands"
    descriptions[14]=" Restores dots from previous backup"
    descriptions[15]=" List the backup"
    descriptions[16]=" Cursor setting"
    descriptions[17]="  Frozen screen, drag to manually snip an area"
    descriptions[18]="  Show the pretty format"
    descriptions[19]="    run without custom '.lst' bookmark files"
    descriptions[20]=" Only restores dots from default '/Configs'"
    descriptions[21]=" Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    descriptions[22]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[23]="  Record focused monitor"
    descriptions[24]=" Theme commands"
    descriptions[25]=" [*] Bookmark selector"
    descriptions[26]=" wallbash disabled"
    descriptions[27]="	Reset cache"
    descriptions[28]=" Toggle ﯦ  Set/unset current changes'"
    descriptions[29]=" [*] Pastebin manager "
    descriptions[30]=" wallbash auto"
    descriptions[31]=" System information"
    descriptions[32]=" Change all the pre-set sizes"
    descriptions[33]=" Set cursor theme"
    descriptions[34]="	list and delete selected"
    descriptions[35]=" Upgrades dots from the repository"
    descriptions[36]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[37]=" Waybar commands"
    descriptions[38]=" Just reload"
    descriptions[39]=" Pull updates from Hyde repository"
    descriptions[40]=" Backs up the current configuration"
    descriptions[41]=" Glyph selector"
    descriptions[42]="	wipe database"
    descriptions[43]="  Print focused monitor"
    descriptions[44]=" Toggle game mode"
    descriptions[45]=" Shell commands"
    descriptions[46]=" [*] Hyde Config File & Directory status"
    descriptions[47]=" Check active cursor status (only gsettings)"
    descriptions[48]="   use style [ 1 | 2 ]"
    descriptions[49]=" Set /Path/to/Wallpaper"
    descriptions[50]=" Reloads waybar"
    descriptions[51]=" Reset changes"
    descriptions[52]=" Code editor related commands"
    descriptions[53]=" Default animations"
    descriptions[54]=" [*] Web Search"
    descriptions[55]=" Search engine to use"
    descriptions[56]=" Hyde-cli version"
    descriptions[57]=" Theme selector"
    descriptions[58]=" Disable blur"
    descriptions[59]=" [*] Use variety package to manage wallpapers"
    descriptions[60]=" Clear some storage by deleting old backups"
    descriptions[61]=" [*] Calculator (libqalculate)"
    descriptions[62]=" Toogle airplane mode"
    descriptions[63]=" Reload cursors"
    descriptions[64]="   Set Browser can also set 'BROWSER' env"
    descriptions[65]="  Drag to manually snip an area"
    descriptions[66]=" reset hyde profile"
    descriptions[67]=" Reload wallpaper cache"
    descriptions[68]="	set rofi configuration"
    descriptions[69]=" Restores dots from a clone repository "
    descriptions[70]=" Information about Hyde and its components"
    descriptions[72]="   Diff mismatched dotfiles"
    descriptions[73]=" Previous wallpaper"
    descriptions[74]=" Disable border angle animation"
    descriptions[75]=" Wallpaper commands"
    descriptions[76]=" Default border angle animation"
    descriptions[77]=" Useful GUI util"
    descriptions[78]="  Add custom .conf file"
    descriptions[79]=" User/Device specific scripts that might be useful"
    descriptions[80]=" Power Options"
    descriptions[81]="	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    descriptions[82]=" [*] Show keybind hints"
    descriptions[83]=" Force rebuild cache"
    descriptions[84]=" Use rofi to select screenshot options "
    descriptions[85]=" Show Manual"
    descriptions[86]=" Fixes issues for asus devices"
    descriptions[87]=" Watches hyprland events and executes actions"
    descriptions[88]=" Overwrite current dots from the preferred user dir "
    descriptions[89]="   force rebuild cached bookmark paths"
    descriptions[90]=" set rofi configuration"
    descriptions[91]=" Default blur"
    descriptions[92]=" Restore dots"
    descriptions[93]=" Install and set sddm theme from HyDE clone Repo"
    descriptions[94]="  Add custom delimiter symbol (default '>')"
    descriptions[95]=" Browser to use"
    descriptions[96]=" Sddm commands"
    descriptions[97]=" Executable utilities"
    descriptions[98]=" Set Sddm theme from the list"
    descriptions[99]="	options"
    descriptions[100]=" Manages Hyde's cache"
    descriptions[101]=" List all local sddm themes"
    descriptions[102]=" Interactive control file"
    descriptions[103]=" Previous theme"
    descriptions[104]=" [*] Add chaotic aur to you mirror"
    descriptions[105]="   Pipes STDOUT to less"
    descriptions[106]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[107]=" Disable tranparency"
    descriptions[108]="  Reinitialize screencap"
    descriptions[109]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[110]=" Inhibits idle when player status: 'Playing"
    descriptions[111]="  Print all outputs"
    descriptions[112]=" Next theme"
    descriptions[113]="  Display this help message"
    descriptions[114]=" Wallpaper selector"
    descriptions[115]="   Diff preserved dotfiles"
    descriptions[116]=" Set cursor size"
    descriptions[117]=" Next wallppaer"
    descriptions[118]=" Set preavailable Hyde branch"
    descriptions[119]=" Next waybar layout"
    descriptions[120]=" [*] Set waybar size"
    descriptions[121]=" Flatpak setup for HyDE"
    descriptions[122]=" Manage users restore control list"
    descriptions[123]=" [*] Screenshot and screenrecord tool"
    descriptions[124]=" [*] Emoji selector"
    descriptions[125]="  Drag to manually snip an area to screen record it"
    descriptions[126]=" Previous waybar layout"
    descriptions[127]=" wallbash dark mode"
    descriptions[128]=" Converts chaotic aur packages to AUR"
    descriptions[129]=" Set theme"
    descriptions[130]=" Patch a theme from different repository."
    descriptions[131]=" Shell selector"
    descriptions[132]=" Hyde core Package status"
    descriptions[133]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([80]=7 [70]=3 [39]=4 [56]=5 [3]=6 [35]=26 [24]=8 [96]=10 [97]=11 [118]=13 [100]=12 [37]=27 [45]=14 [102]=15 [85]=16 [31]=17 [13]=18 [75]=19 [16]=20 [77]=21 [79]=22 [88]=23 [52]=25 [92]=9 [38]=2)"
    literal_transitions[3]="([132]=28 [46]=37)"
    literal_transitions[6]="([36]=28 [106]=38)"
    literal_transitions[7]="([28]=28 [44]=28 [8]=42 [51]=28 [9]=44)"
    literal_transitions[8]="([57]=28 [112]=28 [130]=28 [103]=28 [129]=28)"
    literal_transitions[9]="([109]=28 [20]=28 [14]=28 [69]=28)"
    literal_transitions[10]="([98]=28 [93]=28 [101]=28)"
    literal_transitions[11]="([62]=28 [110]=28 [87]=28 [123]=36)"
    literal_transitions[12]="([83]=28 [67]=28)"
    literal_transitions[14]="([131]=28)"
    literal_transitions[15]="([122]=28)"
    literal_transitions[18]="([15]=28 [40]=28 [60]=28 [1]=28)"
    literal_transitions[19]="([59]=30 [114]=28 [49]=28 [117]=28 [73]=28)"
    literal_transitions[20]="([63]=28 [47]=28 [116]=28 [33]=28)"
    literal_transitions[21]="([124]=40 [61]=35 [41]=28 [82]=32 [25]=41 [84]=28 [54]=34 [29]=31)"
    literal_transitions[22]="([86]=28 [121]=28 [104]=45)"
    literal_transitions[25]="([7]=28)"
    literal_transitions[27]="([120]=43 [126]=28 [50]=28 [119]=28 [133]=28)"
    literal_transitions[30]="([66]=28)"
    literal_transitions[31]="([99]=28 [34]=28 [42]=28 [4]=28)"
    literal_transitions[32]="([6]=28 [113]=28 [18]=28 [78]=33 [94]=28)"
    literal_transitions[34]="([55]=28 [95]=28 [90]=33 [27]=28)"
    literal_transitions[35]="([27]=28 [90]=33)"
    literal_transitions[36]="([11]=28 [125]=28 [23]=28 [43]=28 [17]=28 [108]=28 [65]=28 [111]=28 [22]=28)"
    literal_transitions[37]="([115]=28 [105]=28 [72]=28)"
    literal_transitions[38]="([26]=28 [30]=28 [127]=28 [10]=28)"
    literal_transitions[39]="([71]=28)"
    literal_transitions[40]="([48]=28 [68]=33)"
    literal_transitions[41]="([89]=28 [19]=28 [81]=28 [68]=33 [64]=29)"
    literal_transitions[42]="([12]=28 [58]=28 [74]=28 [107]=28)"
    literal_transitions[43]="([32]=28)"
    literal_transitions[44]="([5]=28 [53]=28 [76]=28 [91]=28)"
    literal_transitions[45]="([2]=28 [21]=28 [128]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([2]=28 [4]=28 [29]=28 [17]=28 [13]=28 [1]=24 [16]=28 [33]=28 [5]=28 [23]=28 [26]=28 [24]=39)

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

    local -A specialized_commands=([33]=0)
    if [[ -v "specialized_commands[$state]" ]]; then
        local command_id=${specialized_commands[$state]}
        _Hyde_spec_${command_id} ${words[$CURRENT]}
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
