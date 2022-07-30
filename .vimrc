syntax on
colorscheme hemisu

" NeoBundle
set nocompatible
filetype plugin indent off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" NeoBundle設定の開始
call neobundle#begin(expand('~/.vim/neobundle'))

" NeoBundleのバージョンをNeoBundle自身で管理する
NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundleで入れたいプラグインを記述
NeoBundle 'tyru/caw.vim.git'
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)
NeoBundle 'prettier/vim-prettier'
NeoBundle 'alvan/vim-closetag'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'Townk/vim-autoclose'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#show_tab_type = 0
"let g:airline#extensions#tabline#show_close_button = 0
NeoBundle 'tpope/vim-surround'

" NeoBundle設定の終了
call neobundle#end()

filetype plugin indent on

" vim起動時に未インストールのプラグインをインストールする
NeoBundleCheck

set t_Co=256
set paste

set background=dark
set number
set fenc=utf-8
set ambiwidth=double
set showcmd
set showmatch
source $VIMRUNTIME/macros/matchit.vim
set cursorline
set cursorcolumn
set virtualedit=onemore
"set smartindent
set visualbell
set showmatch
set laststatus=2
set cmdheight=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk

set list listchars=tab:\▸\-
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

set confirm
set hidden
set autoread
set mouse=a

set wildmenu wildmode=list:longest,full
set history=10000

set cindent

