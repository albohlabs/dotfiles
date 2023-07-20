function nvims
    set -l items default LazyVim AstroNvim
    set -l config (printf "%s\n" $items | fzf --prompt=" Neovim Config = " --height=~50% --layout=reverse --border --exit-0)

    if test "$config" = LazyVim
        nvim
        return 0
    end

    if test -z $config
        echo "Nothing selected"
        return 0
    else if test "$config" = default
        set config ""
    end

    echo "Running set -x NVIM_APPNAME $config; nvim $argv"
    set -x NVIM_APPNAME $config
    nvim $argv
end
