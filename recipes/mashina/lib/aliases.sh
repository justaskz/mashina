unalias -a

alias src='source $MASHINA_CONFIG/main.sh'
# alias mashina_source='cd $HOME/repos/mashina'
# alias MASHINA_CONFIG='cd $MASHINA_CONFIG'

alias h="hx"
alias k="kubectl"
alias ka="kubectl apply -f"
alias ha="helmfile apply -f"
alias kc="kubecm"
alias d="docker"
alias dc="docker compose"
# alias bat="bat --paging=always --theme=nord --style=changes,numbers"

#################################################
## TMUX
#################################################
alias tmc="tmux new -s"
alias tma="tmux attach -t"
alias tmd="tmux detach"
alias tml="tmux list-sessions"
alias tmk="tmux kill-session -t"
alias tms="tmux source-file ~/.config/tmux/tmux.conf"

##################################################
## ZELLIJ
##################################################
alias zlc="zellij -s"
alias zla="zellij attach"
alias zll="zellij list-sessions"
alias zlk="zellij delete-session"

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
alias tfaa="terraform apply -input=false -auto-approve"
alias tgp="terragrunt plan -input=false"
alias tga="terragrunt apply -input=false"
alias tgv="terragrunt validate-inputs"
alias tf_root="cd ~/repos/terraform-aws-services"
alias tf_rds="cd ~/repos/terraform-aws-services/rds/clusters"
alias tf_msk="cd ~/repos/terraform-aws-services/kafka/clusters"

#################################################
## BOOKMARKS
#################################################
alias repos="cd ~/repos"
alias notes="cd ~/repos/notes"
alias sublime_home='cd "$HOME/Library/Application Support/Sublime Text"'
alias gohome='cd $GOPATH/src/github.com/justaskz'

#################################################
## TOOLS
#################################################
alias ..="cd .."
alias s="subl"
alias a='cd $HOME/repos/ansible'
alias watch_and_make="fswatch -or . | xargs -n1 -I{} make"
alias sc="syncros"
alias nordlayer_logs="cd /Users/t1028/Library/Containers/com.nordvpn.macos.teams/Data/Library/Logs/NordLayer"

alias search="find * | grep -i"
alias searchin="fgrep --exclude-dir=.meteor --exclude-dir=.git -irn"
alias untar="tar xvzf"
alias ls="/bin/ls -lah --color"
alias python_server="python3 -m http.server"

# if command -v nvim >/dev/null 2>&1; then
#   alias vim='nvim'
# else
#   alias vim='vim'
# fi
