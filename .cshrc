if ($TERM =~ *256color*) then
    #Already 256color
else
    setenv TERM $TERM-256color
endif

# For searching function in Linux
bindkey '^R' i-search-back

# Make backspace work in Vim
stty erase '^?'

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

# Access Linux setting files
alias cshrc 'vim ~/.cshrc'
alias resource 'source ~/.cshrc'
alias vimrc 'vim ~/.vimrc'
alias cd... 'cd ..;cd ..'
alias cd.... 'cd ..;cd ..;cd ..'
alias cd..... 'cd ..;cd ..;cd ..;cd ..'

# Linux cammands
alias rm 'rm -i'
alias la 'ls -a'
alias ll 'ls -l'
alias cnt 'ls -l|grep "^-"| wc -l'
alias tkdiff '/pkg/qct/software/tkdiff/current/tkdiff'

# Access conda environment
alias kb 'conda activate kb'
alias deactivate 'conda deactivate'
alias envpath 'echo $CONDA_PREFIX'

# Git commands
alias add 'git add'
alias addall 'git add -A'
alias commit 'git commit'
alias emptycommit 'git commit --allow-empty -m "Init Empty Commit"'
alias amend 'git commit --amend'
alias dif 'git diff'
alias log 'git log'
alias show 'git show'
alias status 'git status'
alias restore 'git restore --staged'
alias clone 'git clone'
alias branch 'git branch'
alias checkout 'git checkout'
alias newbranch 'git checkout -b'
alias mybranch 'git rev-parse --abbrev-ref HEAD'
alias stash 'git stash save'
alias pop 'git stash pop'
alias list 'git stash list'
alias fetch 'git fetch -p'
alias submodule 'git submodule add'
alias pull 'git pull'
alias rebase 'git pull --rebase'
alias push 'git push'
alias pushmaster 'git push origin HEAD:refs/for/master'
# push exist directory to github: git -C "directoryPath" init
alias newrepo 'gh repo create'

# Docker commands
alias access 'docker exec -it'
alias build 'docker build -t'
alias container 'docker container'
alias delc 'docker rm -f'
alias deli 'docker image rm -f'
alias exec 'docker exec'
alias image 'docker image'
alias run 'docker run'
alias showi 'docker images'
alias showc 'docker ps'
alias stop 'docker stop'
alias tag 'docker tag'
