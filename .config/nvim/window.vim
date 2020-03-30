" Handles window and tab Neovim configuration.
" This file has no copyright.
"
" Author: @ayazhafiz
" Source: https://github.com/ayazhafiz/hmcd

" Split to bottom and right
set splitbelow
set splitright

" Tabs
nnoremap H gT
nnoremap L gt

" Windows
let g:C_Ctrl_j = 'off'
noremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" Error columns beyond 10
set colorcolumn=80
highlight ColorColumn ctermbg=8

" Highlight extra whitespace
au BufWinEnter <buffer> match Error /\s\+$/
au InsertEnter <buffer> match Error /\s\+\%#\@<!$/
au InsertLeave <buffer> match Error /\s\+$/
au BufWinLeave <buffer> call clearmatches()

" Auto-wrap at 100 columns
set textwidth=100
set formatoptions+=t
