" number lines
set nu

" good color scheme for white background
colorscheme delek
" colorscheme slate

" make sure arrow keys work on mac (http://vim.wikia.com/wiki/Fix_arrow_keys_that_display_A_B_C_D_on_remote_shell)
" this was messing things up so comment out
" set term=cons25


"reselect after indenting
    vnoremap < <gv
    vnoremap > >gv

"Paste Toggle
" i.e., switch between paste-insert mode and ordinary insert-mode using \1
set pastetoggle=<Leader>1

