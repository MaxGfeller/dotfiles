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

set statusline=%f%m%r%h%w%<\ %{&ff}\ %Y\ %{fugitive#statusline()}\ %=%l/%L,%v\ %p%%

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap

au FileType javascript set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS

nmap <leader>' :set relativenumber!<cr>
nmap <leader>" :set number!<cr>

au FileType c,cpp,java,php,js,py,coffee au BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

hi CursorLine term=underline ctermbg=236 guibg=#32322f

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

