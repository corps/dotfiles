source /etc/vim/vimrc
syntax on

set background=dark
set visualbell
set noerrorbells
set nocompatible
set autoread
set hidden
set t_vb= 
map <space> <leader>
map <space><space> <leader><leader>

tnoremap <Esc> <C-\><C-n>

call plug#begin('~/.vim/plugged')
Plug 'jeetsukumaran/vim-buffergator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'cloudhead/neovim-fuzzy'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
call plug#end()

filetype plugin on
filetype plugin indent on


set hlsearch history=10000

au FileType haskell,vhdl,ada,purescript setlocal commentstring=--\ %s
au FileType vim                         setlocal commentstring="\ %s
au FileType c,cpp,java,go,typescript    setlocal commentstring=//\ %s
au FileType sh,make,ruby                setlocal commentstring=#\ %s
au FileType tex                         setlocal commentstring=%\ %s
au FileType nix                         setlocal commentstring=#\ %s
xmap <leader>,  <Plug>Commentary
nmap <leader>,  <Plug>Commentary
omap <leader>,  <Plug>Commentary
nmap <leader>,, <Plug>CommentaryLine

" gt for buffer
map <leader>] :BuffergatorMruCycleNext<CR>
" gT for buffer
map <leader>[ :BuffergatorMruCyclePrev<CR>
" close current buffer
map gc :bdelete<CR>

" Allow switching windows even if terminal is open.
tnoremap <C-w>w <C-\><C-n><C-w>w
tnoremap <C-w>W <C-\><C-n><C-w>W

" Fuzzy matching (used instead of ctrlp)
nnoremap <leader>p :FuzzyOpen<CR>

" set incsearch
" haya14busa/incsearch
set ignorecase smartcase        " better searching
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

set backspace=indent,eol,start " Make backspace work cool
set expandtab autoindent tabstop=2 shiftwidth=2
set undolevels=10000            " many undos
set wrap
set showbreak=«

autocmd FileType make setlocal noexpandtab

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
