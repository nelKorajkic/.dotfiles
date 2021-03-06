 "============================================================
 " nelKorajkic's settings
 "============================================================
 syntax on
 set splitbelow splitright
 augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

augroup setSpelling
  autocmd!

  autocmd FileType gitcommit setlocal spell spelllang=en_us
  autocmd FileType markdown setlocal spell spelllang=en_us
augroup END

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Easier to type, and I never use the default behavior.
noremap H ^
noremap L $

nnoremap <leader>et :vsplit ~/.tmux.conf<cr>
nnoremap <leader>ev :vsplit ~/.vimrc<cr>

" Substitute
nnoremap <c-s> :%s/
vnoremap <c-s> :s/

" Select (charwise) the contents of the current line, excluding indentation.
" Great for pasting Python lines into REPLs.
nnoremap vv ^vg_

 "============================================================
 " Mappings
 "============================================================
 nnoremap <c-j> <c-w>j
 nnoremap <c-k> <c-w>k
 nnoremap <c-h> <c-w>h
 nnoremap <c-l> <c-w>l
 map <C-Left> <Esc>:bprev<CR>
 map <C-Right> <Esc>:bnext<CR>

set nocompatible
set ruler
set hidden
set history=10000
set expandtab
set showtabline=2
set showcmd
set nobackup
set nowritebackup
set autoindent
set showmatch
set scrolloff=3
set switchbuf=useopen
:let mapleader=" "
set wildmode=longest,list
set nolist
set autoread
set nojoinspaces
:set timeout timeoutlen=1000 ttimeoutlen=100
"set shell=bash
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
Plug 'tpope/vim-commentary'
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
Plug 'https://github.com/miconda/lucariox.vim.git'
Plug 'airblade/vim-gitgutter'
Plug 'dbeniamine/cheat.sh-vim'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" ======== REACT/JSX SUPPORT  ========
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'epilande/vim-react-snippets'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ntpeters/vim-better-whitespace'

" ======== VIM THEMES  =======
Plug 'scrooloose/nerdtree'
"Plug 'Valloric/YouCompleteMe'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

" ============ Prettier on save ===========
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
let g:prettier#config#bracket_spacing = 'true'

" ============ general settings ===========
let base16colorspace="256"
colorscheme OceanicNext
"set background=dark
highlight LineNr guifg=#aaaaaa " Dracula's colors are too dark dood
set number " show line numbers
set relativenumber
set clipboard+=unnamed
"set clipboard=unnamed " use os clipboard
set shiftwidth=2 " number of spaces when shift indenting
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tab to spaces
set bs=2 "fix backspace in insert
set cursorline  " highlight current line
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase smartcase
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* " lol

" ====== SYNTASTIC / GIT GUTTER SETTINGS =======
set signcolumn="yes"
hi clear signColumn
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers= ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
" You gotta add a lint npm script to each package.json you want linting for
set mouse=a


" Mappings
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

map <C-a> :NERDTreeToggle<CR>


cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT
set pastetoggle=<F2> "F2 before pasting to preserve indentation
"Copy paste to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"

"enter key = new line without entering insert mode
nnoremap <CR> o<Esc>

"move blocks of text
vnoremap J :m ‘>+1gv=gv
vnoremap K :m ‘<-2gv=gv
