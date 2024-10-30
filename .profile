trap  2 3

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Access Linux setting files
alias cshrc='vim ~/.cshrc'
alias profile='vim ~/.profile'
alias vimrc='vim ~/.vimrc'
alias resource='bash -l'

# Linux cammands
alias rm='rm -i'
alias la='ls -a'
alias ll='ls -l'
alias cnt='ls -l|grep "^-"| wc -l'
alias tkdiff='/pkg/qct/software/tkdiff/current/tkdiff'
alias python='python3'

# Temporary solution for the list joining
alias join='newgrp dragon_comp_dev'

# Access conda environment
alias kb='conda activate kb'
alias deactivate='conda deactivate'
alias envpath='echo $CONDA_PREFIX'

# Linux commands
cd() { if [[ $@ == "..." ]]; then command cd ..;cd ..;
    elif [[ $@ == "...." ]]; then command cd ..;cd ..;cd ..;
    elif [[ $@ == "....." ]]; then command cd ..;cd ..;cd ..; cd ..;
    elif [[ $@ == "......" ]]; then command cd ..;cd ..;cd ..; cd ..; cd ..;
    elif [[ $@ == "......." ]]; then command cd ..;cd ..;cd ..; cd ..; cd ..; cd ..;
    else command cd "$@"; fi; }

# Git commands
alias add='git add'
alias addtrack='git add -u'
alias addall='git add -A'
alias commit='git commit'
alias emptycommit='git commit --allow-empty -m "Init Empty Commit"'
alias amend='git commit --amend'
alias dif='git diff'
alias log='git log'
alias show='git show'
alias status='git status'
alias reset='git reset'
alias undo='git reset HEAD^'
alias restore='git restore'
alias clone='git clone'
alias branch='git branch'
alias checkout='git checkout'
alias newbranch='git checkout -b'
alias mybranch='git rev-parse --abbrev-ref HEAD'
alias stash='git stash save'
alias pop='git stash pop'
alias list='git stash list'
alias fetch='git fetch -p'
alias submodule='git submodule add'
alias pull='git pull'
alias rebase='git pull --rebase'
alias push='git push'
alias pushmaster='git push origin HEAD:refs/for/master'
# Push exist directory to github: git -C "directoryPath" init
alias newrepo='gh repo create'

# Docker commands
alias access='docker exec -it'
alias build='docker build -t'
alias container='docker container'
alias delc='docker rm -f'
alias deli='docker image rm -f'
alias exec='docker exec'
alias image='docker image'
alias run='docker run'
alias showi='docker images'
alias showc='docker ps'
alias stop='docker stop'
alias tag='docker tag'

# Cleartool commands
alias ct='cleartool'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
    START='${debian_chroot:+($debian_chroot)}'
    LOCATION='\[\033[01;34m\](\w)'
    HOST='\[\033[01;32m\]\u@\h\[\033[00m\]:'
    BRANCH='\[\033[01;31m\] $(parse_git_branch)'
    END='\[\033[00m\]\$ '

    PS1=$HOST$LOCATION$BRANCH$END
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\](\w)\[\033[01;31m\] $(parse_git_branch)\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:(\w)$(parse_git_branch)\$ '
fi

# The count of the subdirectories from the path to show
PROMPT_DIRTRIM=2

# Path is set in cshrc
export PATH=$CSH_PATH
