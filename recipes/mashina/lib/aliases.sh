unalias -a

alias src="source $MASHINA_ROOT/main.sh"

#################################################
## TMUX
#################################################
alias tmc="tmux new -s"
alias tma="tmux attach -t"
alias tmd="tmux detach"
alias tmk="tmux kill-session -t"
alias tml="tmux list-sessions"
alias tms="tmux source-file ~/.tmux.conf"
alias fix_ssh="ln -sf $SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock"

#################################################
## GIT
#################################################
alias gis="git status -s -u"
alias gic="git checkout"
alias gip="git remote prune origin"
alias gil="git log"
alias gilll="git log --graph --pretty=format:'%C(yellow)%h%Creset%C(blue)%d%Creset %C(white bold)%s%Creset %C(white dim)(by %an %ar)%Creset' --all"
alias gir="git reset HEAD^"
alias gib="git branch --sort=-committerdate"
alias gibb="git branch"
alias gifp="git push -f origin HEAD"
alias gisave="git add .; git commit -m wip"

#################################################
## DOCKER
#################################################
alias dci="docker images"
alias dcc="docker ps -a"
# alias dccs="docker stop $(docker ps -a -q)"
# alias dcir="docker rmi $(docker images -a -q)"
alias dccr="docker system prune -f"

#################################################
## BOOKMARKS
#################################################
alias bin="cd ~/bin"
alias opt="cd ~/opt"
alias repos="cd ~/repos"
alias notes="cd ~/repos/notes"
alias sublime_home='cd "$HOME/Library/Application Support/Sublime Text"'
alias gohome="cd $GOPATH/src/github.com/justaskz"

#################################################
## TOOLS
#################################################
alias ..="cd .."
alias s="subl"
alias add="subl -a"
alias a="cd $HOME/repos/ansible"
alias watch_and_make="fswatch -or . | xargs -n1 -I{} make"
alias vim="nvim"
alias vi="/usr/bin/vim"
alias sublime_backup="$HOME/repos/mashina/recipes/sublime/main.sh backup_macos"

alias search="find * | grep -i"
alias searchin="fgrep --exclude-dir=.meteor --exclude-dir=.git -irn"
alias psa="ps xw | grep"
alias untar="tar xvzf"
alias genv="env | grep"
alias ls="/bin/ls -lah --color"
alias python_server="python3 -m http.server"
