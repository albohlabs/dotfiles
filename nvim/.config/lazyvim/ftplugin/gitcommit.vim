"
" https://github.com/JoosepAlviste/dotfiles/blob/c171efbbbe0daa5e737250ec82338a51ed53c15a/config/nvim/ftplugin/gitcommit.vim
" Settings
"

" No line numbers
setlocal norelativenumber
setlocal nonumber
setlocal signcolumn=no

setlocal textwidth=72
setlocal colorcolumn=73,51

" Autoformatting
setlocal spell
setlocal iskeyword+=-


"
" Plugin settings
"

let b:EditorConfig_disable = 1


"
" Mappings
"

" Navigate between changed files
nnoremap <silent> <buffer> { ?^@@<CR>
nnoremap <silent> <buffer> } /^@@<CR>
