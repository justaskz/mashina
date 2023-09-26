unalias -a

alias src="source $MASHINA_ROOT/main.sh"
alias mashina_source="cd $HOME/repos/mashina"
alias mashina_root="cd $MASHINA_ROOT/"

alias x="hx"
alias k="kubectl"

#################################################
## TMUX
#################################################
alias tmc="tmux new -s"
alias tma="tmux attach -t"
alias tmd="tmux detach"
alias tmk="tmux kill-session -t"
alias tml="tmux list-sessions"
alias tms="tmux source-file ~/.tmux.conf"

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
alias gisave="git add .; git commit -m wip"

#################################################
## TERRAFORM
#################################################
alias tf="terraform"
alias tg="terragrunt"
alias tfp="terraform plan -input=false"
alias tfa="terraform apply -input=false"
alias tgp="terragrunt plan -input=false"
alias tga="terragrunt apply -input=false"
alias tgv="terragrunt validate-inputs"
alias tf_root="cd ~/repos/terraform-aws-services"
alias tf_rds="cd ~/repos/terraform-aws-services/rds/clusters"
alias tf_msk="cd ~/repos/terraform-aws-services/kafka/clusters"

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
alias sc="syncros"

alias search="find * | grep -i"
alias searchin="fgrep --exclude-dir=.meteor --exclude-dir=.git -irn"
alias untar="tar xvzf"
alias ls="/bin/ls -lah --color"
alias python_server="python3 -m http.server"

if command -v nvim >/dev/null 2>&1; then
  alias vim='nvim'
else
  alias vim='vim'
fi
