" use plugins, such as tComment 
execute pathogen#infect()
syntax on
filetype plugin indent on

" number lines
set nu

" allow color highlighting
syntax enable

" good color scheme for white background
colorscheme delek
" colorscheme slate

" make sure arrow keys work on mac (http://vim.wikia.com/wiki/Fix_arrow_keys_that_display_A_B_C_D_on_remote_shell)
" this was messing things up so comment out
" set term=cons25
" use this instead: (http://vim.wikia.com/wiki/Fix_broken_arrow_key_navigation_in_insert_mode)
set term=builtin_ansi

"reselect after indenting
    vnoremap < <gv
    vnoremap > >gv

"Paste Toggle
" i.e., switch between paste-insert mode and ordinary insert-mode using \1
set pastetoggle=<Leader>1

" http://www.techrepublic.com/blog/linux-and-open-source/create-custom-keybindings-in-vim/
" map CTRL-E to end-of-line (insert mode)
inoremap <C-e> <esc>$i<right>
" map CTRL-A to beginning-of-line (insert mode)
inoremap <C-a> <esc>0i

inoremap jj <esc>
