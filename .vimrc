"============================================================
" nelKorajkic's settings
"============================================================
set encoding=utf8
syntax on
set t_Co=256
set termguicolors
if &term =~ '256color'
 set t_ut=
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set smartindent
call plug#begin('~/.vim/plugged')

" ======== INTERFACE SUPPORT  ======== 
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
"Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'Shougo/neocomplete.vim'
Plug 'Townk/vim-autoclose'
Plug 'majutsushi/tagbar'
Plug 'vim-syntastic/syntastic'
Plug 'jakedouglas/exuberant-ctags'
Plug 'sbdchd/neoformat'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
" ======== REACT/JSX SUPPORT  ======== 
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" ======== VIM THEMES  ======== 
Plug 'scrooloose/nerdtree'
"Plug 'Valloric/YouCompleteMe'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

let base16colorspace="256"
colorscheme OceanicNext
"set background=dark
highlight LineNr guifg=#aaaaaa " Dracula's colors are too dark dood
set number " show line numbers
set relativenumber
set clipboard=unnamedplus
"set clipboard=unnamed " use os clipboard 
set shiftwidth=2 " number of spaces when shift indenting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tab to spaces
set cursorline  " highlight current line
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase
set smartcase 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* " lol
let g:ctrlp_show_hidden=1
set noswapfile
let g:jsx_ext_required=0

"============================================================
" Mappings
"============================================================
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
inoremap jk <Esc>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>
map <C-b> :NERDTreeToggle<CR>
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a

