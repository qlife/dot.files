set secure
set nomodeline
set nocompatible
syntax on
set background=dark
syn region myFold start="{" end="}" transparent fold
syn sync fromstart
set foldmethod=syntax
set backspace=2
set ruler
set suffixes=.class,.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc


" Tab setting
" for my interesting in python , i always insert space when <TAB> being
" pressed
"
" Press Ctrl+V <TAB> to insert a 'real' \t
" (for makefile , syslog.conf .. etc. )
set shiftwidth=4
set tabstop=4
set expandtab

" note that you don't need double qoute outside any string literial
" set backup
" set backupdir=~/backup/

filetype on
filetype plugin on
filetype indent on


" set cursorline
"highlight CursorLine cterm=none ctermbg=blue

"set makeprg=make\ -f\ ~/Makefile\ %<
set makeprg=make\ %<


" 啟動後是使用 utf-8 編碼
set encoding=utf-8
" 新開的檔案預設是 utf-8 編碼
set fileencoding=utf-8
" 所有可能的檔案編碼
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
" 設定輸出到 terminal 的編碼
set termencoding=utf-8
" 將 unicode 中不確定的字符表示成雙字符，在 unicode 下才有用
set ambiwidth=double
"
"UTF-8 envorinment , Big5 document
noremap ,b :e ++enc=big5<CR>:set tenc=big5<CR>
"Insert mode with no cursor line
"autocmd InsertLeave * se cul
"autocmd InsertEnter * se nocul

"toggle paste status in Normal mode
"set pt is abbrv.
set pastetoggle=,p

"256 color
set t_Co=256
colorscheme submarine


"狀態列設為3行
set cmdheight=1
"預設的狀態列
set statusline=%<%h%m%r\ [%n]\ %(%F%)%=%-14.(%l,%c%V%)\ %P
"%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"永遠都有狀態列
set laststatus=2


"key mapping
map <F7> G!1G astyle --style=allman<CR>
imap <F7> <ESC>G!1G astyle --style=allman<CR>
map <F8> :!cppcheck --all --style\ \%<
map <F9> :make <CR>

if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
endif 
set secure

