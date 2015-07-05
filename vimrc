" clear all autocommands
autocmd!

syntax on
set mouse=a
set nrformats=
set number
let mapleader='-'
let maplocalleader='='
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
filetype plugin indent on
" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
" pydiction stuff
let g:pydiction_location="/home/gmm/python/pydiction-1.2/complete-dict"
nmap <c-s> :w<CR>
imap <c-s> :w<CR>a
augroup python "-----------------------{{{
"    autocmd BufNewFile,BufRead *.py compiler python
    autocmd FileType python :iabbrev <buffer> iff if:<left>
augroup END "}}}
augroup java "-----------------------{{{
   nnoremap <leader>alert oAlertDialog.Builder builder = new AlertDialog.Builder();<cr>builder.setTitle();<cr>builder.setMessage();<cr>builder.setPositiveButton();<cr>builder.show();jk
augroup END "}}}
filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
"nmap <c-h> :FufHelp<CR>

call pathogen#infect()
" noremap <leader> dd
nnoremap <c-u> viwU
" remove arrow keys --------------------------------{{{
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <pageup> <nop>
noremap <pagedown> <nop>
" }}}
" nnoremap <down> ddp
" nnoremap <up> ddkP
" nnoremap <c-o> ojk
" nnoremap <c-O> O<esc>j
"{{{ sets
set foldmethod=marker
set spell 
set cul
set expandtab
set smarttab
set autoindent
set shiftwidth=3
set softtabstop=3
"}}}
nnoremap <F5> :UndotreeToggle<cr>
nnoremap <space> za
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
inoremap jk <esc>
inoremap <esc> <nop>
iabbrev mymail morgan.gm@gmail.com
iabbrev signoff regards,<cr>Michael Morgan.
autocmd BufNewFile *.txt :write
autocmd BufWritePre *.html :normal gg=G
autocmd BufNewFile,BufRead *.html setlocal nowrap
autocmd BufWrite * echom "writing buffer"
augroup filetype_vim "------------------{{{
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
	autocmd FileType vim nnoremap <localleader>c 0i"<esc>
	autocmd FileType vim inoremap <localleader>ag <esc>0iaugroup <esc>ea "------------{{{<cr>augroup END "}}}<esc>O<tab>
augroup	END " }}}
augroup tex "------------{{{
    autocmd BufNewFile,BufRead *.tex setlocal spell
    autocmd FileType tex nnoremap <buffer><leader>c 0i%<esc>
    autocmd FileType tex set statusline=TeX
    autocmd FileType tex :iabbrev <buffer> nnn jko\begin{enumerate}%-------------{{{<cr>\end{enumerate}%}}}jkO\item 
    autocmd FileType tex :iabbrev <buffer> iii <cr>\item 
augroup END "}}}
augroup python "------------{{{
		
augroup END "}}}
colorscheme blue
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set nolist
nnoremap <leader>l :set list!<cr>
cnoremap sudow w ! sudo tee % > /dev/null
