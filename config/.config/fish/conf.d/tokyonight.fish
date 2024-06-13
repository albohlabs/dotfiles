# . ~/Development/tokyonight.nvim/extras/fish/tokyonight_night.fish

set style $FISH_THEME
set theme tokyonight_{$style}

set src ~/Development/tokyonight.nvim/extras/fish_themes/{$theme}.theme
set dst ~/.config/fish/themes/{$theme}.theme

[ -L $dst ]
or ln -s $src $dst

fish_config theme choose $theme
