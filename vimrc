syntax on
filetype plugin indent on
colorscheme molokai

set paste
set encoding=utf-8
set background=dark
set hidden
set history=100
set number
set showmatch
set hlsearch
set incsearch
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set showmatch
set visualbell
set noerrorbells
set nobackup
set noswapfile
set autoread
set ignorecase
set splitright
set splitbelow
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" No annoying sound on errors
set noerrorbells
set novisualbell
"set t_vb=
set tm=500
" Linebreak on 500 characters
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-startify'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/neocomplcache.vim'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'tpope/vim-markdown'
Plug 'github/markup'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'danro/rename.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-fugitive'
Plug 'tmux-plugins/vim-tmux'
Plug 'stephpy/vim-yaml'
Plug 'ap/vim-css-color'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'pangloss/vim-javascript'
Plug 'isRuslan/vim-es6'
Plug 'epilande/vim-react-snippets'
call plug#end()

" Remove white space on save
autocmd BufWritePre * :%s/\s\+$//e

" turn spell check on for Markdown files
autocmd FileType markdown setlocal spell

" map leader to space bar
let mapleader=" "

" source vimrc
nmap <leader>s :source ~/.vimrc<CR>

" turn off double qq record
map qq <Nop>

nnoremap ` <NOP>

" Remap VIM 0 to first non-blank character
nmap 0 ^

" GitGutter Settings
let g:gitgutter_realtime = 1

" Fast saving and quiting
nmap <leader>w :w!<cr>
nmap <leader>q :q<CR>
nmap <leader>wq :wq<CR>
nmap <leader>= <C-w>=

"""" BETTER MOVEMENT
" make page scrolling easier
nnoremap <S-J> <C-d>
nnoremap <S-K> <C-u>

nnoremap <CR> G
nnoremap <BS> gg

noremap j gj
noremap k gk

" make page scrolling easier
nnoremap <S-J> <C-d>
nnoremap <S-K> <C-u>

noremap j gj
noremap k gk

" begaining of line and end of line remaps
nnoremap 0 $
nnoremap 9 0

" spell-check for work spelling is turned on for Markdown files
map <leader>z z=

" Easy window navigation
nmap <leader>h  <C-w>h
nmap <leader>j  <C-w>j
nmap <leader>k  <C-w>k
nmap <leader>l  <C-w>l
"
" Map <Leader>ff to display all lines with keyword under cursor
" and ask which one to jump to
nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>

" open and close NERDtree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" Markdown Preview
" https://github.com/joeyespo/grip
let vim_markdown_preview_hotkey='<leader> m'
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1

" switch buffer
nnoremap <Leader><Leader> :e#<CR>
nnoremap <C-p> :Unite -wrap -start-insert -no-split -no-resize -buffer-name=search grep:!<cr>
nnoremap <Leader>p :Unite -start-insert -no-split -no-resize -force-redraw file_rec/async:!<cr>
nnoremap <leader>/ :nohlsearch<CR>

let g:unite_prompt = '≥≥ '

" go to note pad
nmap <leader>x :vs ~/notes.md<CR>

" Find merge conflict markers
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

" turn the ~ on the non-numbers lines black so the dont show
hi NonText ctermfg=black guifg=black

" Stop that stupid window from popping up
map q: :q
