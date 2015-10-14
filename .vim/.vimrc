call pathogen#infect()
syntax enable
filetype plugin indent on


" Look and feel
" ============
set encoding=utf-8
set background=dark
set number
highlight LineNr ctermfg=black ctermbg=grey

let g:airline_powerline_fonts = 1

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
"" =========
"let g:Powerline_symbols = 'compatible'
"let g:Powerline_colorscheme = 'default'
"let g:Powerline_theme = 'default'
"let g:Powerline_stl_path_style = 'full'
"let g:Powerline_cache_enabled = 0

" Tabs and Spaces
" ===============
"set list
"set listchars=tab:\|.
""hi SpecialKey term=bold cterm=none ctermfg=0 ctermbg=none guifg=Cyan
"set expandtab
"set tabstop=4
"retab
"
"map <ESC>[1;2P <F13>
"nmap <F13> :set list!<CR>

set list
set lcs=extends:»
set lcs+=nbsp:·
set lcs+=precedes:«
set lcs+=trail:·
set lcs+=tab:\|·

" Mappings
" ========

" Tabs
set showtabline=2
nmap ö gT
nmap ä gt

" Move tabs
nmap Ä :+tabm<CR>
nmap Ö :-tabm<CR>

let mapleader = ","

" Use Mac OS X Clipboard for Copy/Paste
nmap <leader>ö :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
vmap <leader>ä :w !pbcopy<CR>

" Settings, die vom Dateityp abhängen
autocmd FileType python setlocal et sta ts=4 sw=4
autocmd BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown

" Color Column!
fun! AddAllColorColumns(begin, max)
    " Alle von begin bis einschließlich max erzeugen.
    let l:str = ''
    let l:at = a:begin
    while (l:at < a:max)
        let l:str = l:str . l:at . ","
        let l:at = l:at + 1
    endwhile
    let l:str = l:str . a:max

    " War schon was gesetzt? Dann hänge unser neues an.
    if (strlen(&colorcolumn) > 0)
        let l:str = &colorcolumn . "," . l:str
    endif

    exec 'set colorcolumn=' . l:str
endfun

" Toggle tw=0 / tw=72
fun! ToggleTextwidth(...)
    if (a:0 || &tw == 0)
        setl tw=72
        set colorcolumn=73
        call AddAllColorColumns(81, 300)
    else
        setl tw=0
        set colorcolumn=
    endif
endfun
nmap <Leader>W :call ToggleTextwidth()<CR>
call ToggleTextwidth(1)

" open NerdTree with start
au VimEnter *  NERDTree

let g:nerdtree_tabs_open_on_console_startup=1
