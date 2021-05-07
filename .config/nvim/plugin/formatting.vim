" Prettier
" enable command :Prettier
" command! -nargs=0 Prettier :CocCommand prettier.formatFile

" key remaps for file formatting
" vmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

let g:neoformat_python_yapf = {
            \ 'exe': 'yapf',
            \ 'stdin': '1',
            \  }

let g:neoformat_enabled_python = ['yapf']

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

nnoremap <leader>f :Neoformat<cr>
vnoremap <leader>f :Neoformat<cr>
