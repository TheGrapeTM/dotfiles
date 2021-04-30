" Enable tabline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=":t"
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep=' '
let g:airline#extensions#tabline#right_sep=' '
let g:airline#extensions#tabline#right_alt_sep=' '

let g:airline_powerline_fonts = 1
let g:airline_left_sep="\uE0B0"
let g:airline_right_sep="\uE0B2"

" Remap for switching tabs
nmap <leader><tab> :bn<CR>
nmap <leader>bd :bdelete<CR>

" Airline theme
let g:airline_theme = "material"

" Always show tabs
set showtabline=2
