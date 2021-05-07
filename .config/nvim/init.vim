source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/plugins.vim
source $HOME/.config/nvim/general/comments.vim

source $HOME/.config/nvim/themes/themes.vim
source $HOME/.config/nvim/themes/airline.vim

lua require("mymods")

" COC shortcuts
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

" Global yank
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
