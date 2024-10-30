# For searching function in Linux
bindkey '^R' i-search-back

# Make backspace work in Vim
stty erase '^?'

setenv CSH_PATH $PATH

# Prompt and use bash environment
if ($?prompt) then
    set prompt="%B%n@%m:%b%~%# "
    env SHELL=/bin/bash /bin/bash -l
endif

# Auto-complete
set complete
# Don't beep at all...
set nobeep
# Autolist commands
set autolist
# Never ever autologout
unset autologout
# Enables colored output for embedded commands
set color
# LS_COLORS
source ~/bin/ls_colors.tcsh

setenv PATH /pkg/vim/sles12/9.0/bin/\:$PATH
# nvim
#setenv PATH /pkg/neovim/0.7.2/bin/\:$PATH
# tmux
setenv PATH /pkg/gnu/tmux/3.2a/bin\:$PATH
# fzf
setenv PATH /pkg/fzf/0.27.0/bin\:$PATH
# jq
setenv PATH /pkg/jq/1.6\:$PATH
# rg
setenv PATH /pkg/ripgrep/12.1.1\:$PATH
