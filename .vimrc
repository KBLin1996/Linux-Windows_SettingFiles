set number
set t_Co=256
set showcmd
set showmode
set linebreak
set autowrite
set autoindent
set smartindent
set nocompatible
set cursorline
set wrap
set ruler
set hlsearch
set expandtab
set softtabstop=4
set shiftwidth=4
set confirm
set history=500
set laststatus=2
set clipboard=unnamedplus
set fileencodings=utf-8,utf-16,big5,gb2312,gbk,gb18030,euc-jp,euc-kr,latin1
set encoding=utf-8

colorscheme candycode
set statusline=%#filepath#[%{expand('%:p')}]%#filetype#[%{strlen(&fenc)?&fenc:&enc},\ %{&ff},\ %{strlen(&filetype)?         &filetype:'plain'}]%#filesize#%{FileSize()}%{IsBinary()}%=%#position#%c,%l/%L\ [%3p%%]

if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

hi CursorLine cterm=underline
hi Search cterm=none ctermbg=darkblue ctermfg=white
hi CursorLineNr cterm=none ctermfg=green

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

hi filepath cterm=none ctermbg=238 ctermfg=40
hi filetype cterm=none ctermbg=238 ctermfg=45
hi filesize cterm=none ctermbg=238 ctermfg=225
hi position cterm=none ctermbg=238 ctermfg=228

hi filepath cterm=none ctermbg=238 ctermfg=40
hi filetype cterm=none ctermbg=238 ctermfg=45
hi filesize cterm=none ctermbg=238 ctermfg=225
hi position cterm=none ctermbg=238 ctermfg=228

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
