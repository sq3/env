set nocompatible
set nobackup
set noswapfile
set backspace=indent,eol,start
set autoindent ts=4
set textwidth=78
set backupcopy=no
set history=500
set ruler
set encoding=utf-8
set background=light
set number
set cursorline
set mouse=a
set showmatch
set laststatus=2
set wildmenu
set clipboard=unnamed
set list
set lcs=extends:»
set lcs+=nbsp:·
set lcs+=precedes:«
set lcs+=trail:¬
set lcs+=tab:\|·

syntax enable

highlight LineNr ctermfg=darkgrey

highlight ColorColumn ctermbg=black
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(400,999),",")

" Tabs
set showtabline=2
nmap ö gT
nmap ä gt

" Move tabs
nmap Ä :+tabm<CR>
nmap Ö :-tabm<CR>

let mapleader = ","

" Settings, die vom Dateityp abhängen
autocmd FileType python setlocal et sta ts=4 sw=4
autocmd BufNewFile,BufRead *.md  set ft=markdown


nmap <Leader><Tab> :set tabstop=4 shiftwidth=4 expandtab<CR>
vnoremap <Leader>c :!sed 's/^/-/' \| column -t \| sed 's/^-//'<CR>
vnoremap <Leader>C :!sed 's/^/-/' \| column -t \| sed 's/^-//'<CR>gv=

autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4

" saltstack syntax "
au BufNewFile,BufRead *.tmpl set ft=jinja
:autocmd FileType yaml set shiftwidth=2
:autocmd FileType yaml set softtabstop=2
:autocmd FileType yaml set autoindent
:autocmd FileType yaml set smartindent
:autocmd FileType yaml set expandtab

au BufRead,BufNewFile *.sls setfiletype yaml
:autocmd FileType yaml set shiftwidth=2
:autocmd FileType yaml set softtabstop=2
:autocmd FileType yaml set autoindent
:autocmd FileType yaml set smartindent
:autocmd FileType yaml set expandtab
