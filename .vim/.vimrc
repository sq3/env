call pathogen#infect()
syntax enable
filetype plugin indent on


" Look and feel
" ============
set encoding=utf-8
set background=dark
set number
highlight LineNr ctermfg=black ctermbg=grey

colorscheme solarized


set nocompatible backspace=indent,eol,start autoindent ts=4 textwidth=0 backupcopy=yes history=500 ruler so=5 cmdheight=2 hh=20 wh=65 hlsearch ic nofoldenable t_Co=256 t_Sf=m t_Sb=m bg=dark showcmd incsearch

"Clips
"=====
let loaded_matchparen=1
set showmatch

" Statusline
" ==========
set laststatus=2
"set statusline=%f\ %y\ \ %h%m%r
"                \\ \ %#Error#%{&ff=='unix'?'':'\ '.&ff.'\ '}%*
"                \\ \ %#Error#%{&fenc==''?'':&fenc=='utf-8'?'':'\ '.&fenc.'\ '}%*
"                \\ \ %#Error#%{&bomb?'\ BOM\ ':''}%*
"                \\ \ %#Error#%{&paste?'\ PASTE\ ':''}%*
"                \%=\ [C:%4b,%4B]\ [X:%3v/%3{&tw}]\ [Y:%5l/%5L]
"
set wildmenu
"
" Powerline
" =========
let g:Powerline_symbols = 'compatible'
let g:Powerline_colorscheme = 'default'
let g:Powerline_theme = 'default'
let g:Powerline_stl_path_style = 'full'
let g:Powerline_cache_enabled = 0

" Tabs and Spaces
" ===============
set list
set listchars=tab:\|. 
hi SpecialKey term=bold cterm=none ctermfg=0 ctermbg=none guifg=Cyan

map <ESC>[1;2P <F13>
nmap <F13> :set list!<CR>

" Mappings
" ========

" Tabs 
set showtabline=2
nmap ö gT
nmap ä gt

let mapleader = ","

" Use Mac OS X Clipboard for Copy/Paste
nmap <leader>ö :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
vmap <leader>ä :w !pbcopy<CR>

" Settings, die vom Dateityp abhängen
autocmd FileType python setlocal et sta ts=4 sw=4
autocmd BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown
