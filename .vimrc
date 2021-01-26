syntax on
set autowrite
set autoindent
set backspace=indent,eol,start
set confirm
set cursorline
set clipboard=unnamedplus
set expandtab
set encoding=utf-8
set fileencodings=utf-8,utf-16,big5,gb2312,gbk,gb18030,euc-jp,euc-kr,latin1
set hlsearch
set history=500
set linebreak
set laststatus=2
set number
set nocompatible
set ruler
set showcmd
set showmode
set smartindent
set shiftwidth=4
set softtabstop=4
set statusline=%#filepath#[%{expand('%:p')}]%#filetype#[%{strlen(&fenc)?&fenc:&enc},\ %{&ff},\ %{strlen(&filetype)?&filetype:'plain'}]%#filesize#%{FileSize()}%{IsBinary()}%=%#position#%c,%l/%L\ [%3p%%]
set t_Co=256
hi CursorLine cterm=underline
hi Search cterm=none ctermbg=darkblue ctermfg=white
hi CursorLineNr cterm=none ctermfg=green
hi filepath cterm=none ctermbg=238 ctermfg=40
hi filetype cterm=none ctermbg=238 ctermfg=45
hi filesize cterm=none ctermbg=238 ctermfg=225
hi position cterm=none ctermbg=238 ctermfg=228

function IsBinary()
    if (&binary == 0)
        return ""
    else
        return "[Binary]"
    endif
endfunction

function FileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <= 0
        return "[Empty]"
    endif
    if bytes < 1024
        return "[" . bytes . " Bytes]"
    elseif bytes < 1048576
        return "[" . (bytes / 1024) . " KB]"
    else
        return "[" . (bytes / 1048576) . " MB]"
    endif
endfunction

if has("multi_byte")
else
    echoerr "If +multi_byte is not included, you should compile Vim with big features."
endif

map <C-j> :call ToUTF8()<CR>
map! <C-j> <Esc>:call ToUTF8()<CR>
function ToUTF8()
    if (&fileencoding == "utf-8")
        echo "It is already UTF-8."
    else
        let &fileencoding="utf-8"
        echo "Convert to UTF-8."
    endif
    let &ff="unix"
endfunction

if has("autocmd")
	autocmd BufRead *.txt set tw=78
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\	exe "normal g'\"" |
	\ endif
endif

let mapleader = "\<Space>"
nnoremap <leader>p oimport pdb; pdb.set_trace()<Esc>
nnoremap <leader>m oif __name__ == '__main__':<Esc>
nmap <F1> :set invnumber<CR>
nmap <S-Tab> :< <CR>


" Vundle Settings
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Plugin Third Party Tools. Run :PluginInstall to install plugins
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'preservim/nerdtree'
    Plugin 'Yggdroot/indentLine'
    Plugin 'tpope/vim-fugitive'

call vundle#end()

" NerdTree Settings
filetype plugin indent on
nmap <C-f> :NERDTreeToggle<CR>
" autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-h> <C-w> h
map <C-j> <C-w> j
map <C-k> <C-w> k
map <C-l> <C-w> l
" Ctrl-a or Ctrl-d to go to the next or previous tabs
map <C-a> :tabn<CR>
map <C-d> :tabp<CR>


" indentLine setting
map <F2> :IndentLinesToggle<CR>
let b:indentLine_ConcealOptionSet = 1
let b:indentLine_original_concealcursor = &l:concealcursor
let b:indentLine_original_conceallevel = &l:conceallevel
let &l:concealcursor = exists("g:indentLine_concealcursor") ? g:indentLine_concealcursor : "inc"
let &l:conceallevel = exists("g:indentLine_conceallevel") ? g:indentLine_conceallevel : "2"
let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|']


" fugitive setting
map :add :Gwrite<CR>
map :who :Gblame<CR>

