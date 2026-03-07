set nocompatible

if has('termguicolors')
	set termiguicolors
endif

filetype plugin indent on
syntax on
set title
set encoding=utf-8
set backspace=indent,eol,start
set noerrorbells
set confirm
set hidden
set splitbelow
set splitright
set path+=**
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

let $RCPATH = '~/.vim/'
let $RC = $RCPATH.'vimrc'

set number
set relativenumber
set scrolloff=2
set cursorline

let &t_SI="\e[6 q"
let &t_EI="\e[2 q"
" Indentação {{{1
set autoindent
set smartindent
" Tabulações {{{1
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" Busca {{{1
set ignorecase
set smartcase
set incsearch
set hls     " Será alternado no mapeamento de teclas...
let @/ = "" " Será redefinido no mapeamento de teclas...
" Menu da barra de status {{{1
set wildmenu
set wildmode=longest,full
set wildoptions=pum
" Barra de status {{{1
set noshowmode   " Negado para as definições da barra de status...
set laststatus=2
" Quebra de linha {{{1
set nowrap       " Negado para o mapeamento da quebra de linhas...
set linebreak
" Folding {{{1
set foldmethod=marker
" Caracteres de preenchimento {{{1
set nolist       " Negado para o mapeamento dos caracteres invisíveis... 
set listchars=tab:›-,space:·,trail:⋯,eol:↲
set fillchars=vert:│,fold:\ ,eob:~,lastline:@
" Possibilita o uso de <c-z> em vez de <tab> nos mapeamentos (NOVO!) {{{1
set wildcharm=<c-z>
" Ortografia {{{1
set nospell      " Negado para o mapeamento da correção ortográfica...
set spelllang=pt_br,en
" Menu do modo insert {{{1
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c
" Esquema de cores {{{1
" https://github.com/sainnhe/edge.git
" set background=dark
" colorscheme edge
colorscheme habamax
" Arquivos externos {{{1
"execute 'source '.$RCPATH.fnameescape('autocmds.vim')
execute 'source '.$RCPATH.fnameescape('customcolors.vim')
execute 'source '.$RCPATH.fnameescape('statusbar.vim')
"execute 'source '.$RCPATH.fnameescape('mappings.vim')
"execute 'source '.$RCPATH.fnameescape('icomplete.vim')

