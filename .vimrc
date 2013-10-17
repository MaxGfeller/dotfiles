set mouse=ar
set nocompatible     
set virtualedit=

set nobackup
set nowritebackup
set noswapfile

set autoindent
set copyindent

set showmatch
set shiftround
set ruler
set scrolloff=4

set incsearch 
set ignorecase
set smartcase

set backspace=2         
set nu
set hidden
set mouse=a
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

filetype plugin indent on
set t_Co=256
Bundle 'jelera/vim-javascript-syntax'
Bundle 'bling/vim-airline'

inoremap jk <Esc>

set laststatus=2

set guifont=Source\ Code\ Pro\ for\ Powerline:h14
let g:airline_powerline_fonts = 1
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1


set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap

au FileType javascript set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au FileType css set omnifunc=csscomplete#CompleteCSS

nmap <leader>' :set relativenumber!<cr>
nmap <leader>" :set number!<cr>

"au FileType c,cpp,java,php,js,py,coffee au BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

"hi CursorLine term=underline ctermbg=236 guibg=#32322f

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

