" Plugins
call plug#begin('~/.vim/plugged')

Plug 'vimsence/vimsence'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

Plug 'ycm-core/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_path_to_python_interpreter='/usr/bin/python'
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

Plug 'tpope/vim-sensible'

Plug 'arcticicestudio/nord-vim'

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_latexmk = {
        \ 'options' : [
        \   '-pdf' ,
        \   '-shell-escape' ,
        \   '-verbose' ,
        \   '-file-line-error',
        \   '-synctex=1' ,
        \   '-interaction=nonstopmode' ,
        \ ],
        \}

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/ultisnips']

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'

Plug 'ledger/vim-ledger'

Plug 'preservim/tagbar'

Plug 'tpope/vim-fugitive'

Plug 'myusuf3/numbers.vim'

Plug 'ericcurtin/CurtineIncSw.vim'

call plug#end()

" Other settings
set nocompatible
colo molokai
filetype plugin indent on
syntax enable

" Fixes background issue
let &t_ut=''

set number
set encoding=utf8

set expandtab
set tabstop=4
set shiftwidth=4

set foldmethod=marker

set undolevels=1000

set clipboard=unnamed

" Remaps
let mapleader=","

" Run Python files
au FileType python nnoremap <silent> <buffer> <leader>rr :w<CR>:!clear;python %<CR>
au FileType python nnoremap <silent> <buffer> <leader>rv :w<CR>:ter python "%"<CR>
au FileType python nnoremap <silent> <buffer> <leader>rb :w<CR>:vert ter python "%"<CR>


au FileType cpp nnoremap <silent> <buffer> <leader>rr :w<CR>:!clear;g++ % && ./a.out<CR>
au FileType cpp nnoremap <silent> <buffer> <leader>rv :w<CR>:ter ++shell g++ % && ./a.out<CR>
au FileType cpp nnoremap <silent> <buffer> <leader>rb :w<CR>:vert ter ++shell g++ % && ./a.out<CR>


" Line wrapping
au FileType markdown,tex,text setlocal textwidth=80


" Easier terminal access
nnoremap <silent> <leader>tt :term<CR>
nnoremap <silent> <leader>tv :vert term<CR>
noremap <Leader>' :Commentary<CR>


" Switch between source/header
au FileType cpp nnoremap <silent> <buffer> <leader>l :call CurtineIncSw()<CR>

inoremap jk <Esc>
command NT NERDTree
command W w
command Q q
command Wq wq
command WQ wq
command Spongebob au InsertCharPre * if rand()%2 | let v:char = toupper(v:char) | endif
command QQ q!

nnoremap <C-N> :NERDTreeToggle<CR>
nnoremap <C-Q> :TagbarToggle<CR>

hi MatchParen ctermfg=208 ctermbg=bg
