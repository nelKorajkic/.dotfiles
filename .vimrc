 "============================================================
 " nelKorajkic's settings
 "============================================================
 syntax on
 colorscheme industry
 set t_Co=256
 "set termguicolors
if &term =~ '256color'
     set t_ut=
endif

 set smartindent
 highlight LineNr guifg=#aaaaaa " Dracula's colors are too dark dood
 call plug#begin('~/.vim/plugged')
 Plug 'theJian/vim-fethoi'
 Plug 'scrooloose/nerdtree'
 Plug 'Valloric/YouCompleteMe'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'jeffkreeftmeijer/vim-numbertoggle'

 call plug#end()

 set number " show line numbers
 set relativenumber
 set clipboard=unnamedplus
 "set clipboard=unnamed " use os clipboard 
 set shiftwidth=2 " number of spaces when shift indenting
 set tabstop=2 " number of visual spaces per tab
 set softtabstop=2 " number of spaces in tab when editing
 set expandtab " tab to spaces
"set cursorline  " highlight current line
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

