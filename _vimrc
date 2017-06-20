set nocompatible
set number
set encoding=utf-8
execute pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#helptags()
"size of a hard tabstop
set tabstop=8
"visual mode search
vnoremap // y/<C-R>"<CR>
let mapleader = "\<Space>"
" copy & paste to system clipboard
vmap <Leader>y "*y
vmap <Leader>d "*d
nmap <Leader>p "*p
nmap <Leader>P "*P
vmap <Leader>p "*p
vmap <Leader>P "*P

" size of an "indent"
set shiftwidth=4
set ignorecase
set smartcase
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
set incsearch
set hls
"set shell=powershell
"set shellcmdflag=-command
set foldmethod=indent
match errorMsg /[^\t]\zs\t\+/
:highlight CursorLine guibg=lightblue ctermbg=lightgray
" nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
" inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>
match Todo /<+.\++>/
iabbrev <buffer> forlp for (!cursor!;<+++>;<+++>){<cr><+++><cr>}<Esc>:call search('!cursor!','b')<cr>cf!
colorscheme ChocolateLiquor
:nnoremap <leader>t :NERDTreeToggle<CR>
set rnu
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
:inoremap jk <esc>
:inoremap kj <esc>
set wildignore+=*.a,*.o
set wildignore+=.git,.svn
set wildignore+=*~,*.swp,*tmp

set undodir=C:\\TEMP\\vim\\undo
set backupdir=C:\\TEMP\\vim\\backup
set backup
set undodir
set history=100
set undolevels=100
nnoremap <F5> :GundoToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set tags=./tag;,tag;
set path+=C:\Users\b41395\proj\ssl\try_env\src
set path+=**
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set listchars=tab:>~,nbsp:_,trail:.
set list

nnoremap ; :
nnoremap : ;
"current line as vim normal command
nnoremap <space>L yy:@" <cr> 

onoremap p i(
onoremap in( :<c-u>normal! f(vi(<cr>

onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>

let g:Powerline_theme = 'solarized256'
"let g:Powerline_stl_path_style = 'short'

"vsplit the previous buffer
nnoremap <leader>s :execute "rightbelow vsplit " . bufname("#")<cr>
nnoremap <leader>c :<c-u>execute "normal! mqA;\<esc>`q"<cr>

"quickfix window toggling

nnoremap <leader>q :call QuickfixToggle()<cr>

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

"correct word spelling
nnoremap <space>sp mm[s1z=`m

set colorcolumn=80
"set spell
"smart indentation
:vnoremap < <gv
:vnoremap > >gv
"autocmd BufEnter :silent! 0r C:\Program Files\Vim\vimfiles\templates\%:e.tpl
"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Multi-mode mappings (Normal, Visual, Operating-pending modes).
noremap Y y$

" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>
function! ToggleEndChar(charToMatch)
    s/\v(.)$/\=submatch(1)==a:charToMatch ? '' : submatch(1).a:charToMatch
endfunction
nnoremap ;; :call ToggleEndChar(';')<CR>
nnoremap ,, :call ToggleEndChar(',')<CR>

inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O
inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>dd
inoremap UU <Esc>u

:iabbrev teh the

:let g:session_autoload = 'no'
:let g:session_autosave = 'no'

:autocmd BufNewFile,BufRead *.html setlocal nowrap

Abolish teh the
Abolish hte the
Abolish colour{,s,ed,ing} color{}

set hidden

"copy current file name to clipboard
nnor <Leader>cf :let @*=expand("%:p")<CR>    " Mnemonic: Copy File path

au BufNewFile,BufRead *.handlebars set filetype=html
au BufNewFile,BufRead *.hbs set filetype=html
:autocmd BufNewFile,BufRead *.html setlocal nowrap


nnoremap <leader>g :TlistToggle<CR>

let g:indentLine_fileTypeExclude=['help']
let g:indentLine_bufNameExclude=['NERD_tree.*']
