if ! $(mashina__is_zsh); then return 1; fi

#################################################
## ZSH CONFIG
#################################################

# record timestamp of command in HISTFILE
setopt extended_history

# delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_expire_dups_first

# ignore duplicated commands history list
setopt hist_ignore_dups

# ignore commands that start with space
setopt hist_ignore_space

# show command with history expansion to user before running it
setopt hist_verify

# share command history data
# setopt share_history

# skip cd to enter directory
# setopt auto_cd


# prevent duplicates in command history
# setopt EXTENDED_HISTORY
# setopt HIST_EXPIRE_DUPS_FIRST
# setopt HIST_IGNORE_DUPS
# setopt HIST_IGNORE_ALL_DUPS
# setopt HIST_IGNORE_SPACE
# setopt HIST_FIND_NO_DUPS
# setopt HIST_SAVE_NO_DUPS
# setopt HIST_BEEP

#################################################
## OH MY ZSH CONFIG
#################################################

# path to your oh-my-zsh installation.
# export ZSH=$HOME/.oh-my-zsh

# would you like to use another custom folder than $ZSH/custom?
# export ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"

# which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# plugins=(zsh-syntax-highlighting)

# start ohmyzsh
# source $ZSH/oh-my-zsh.sh

#################################################
## PLUGINS
#################################################

# syntax highlighting
source $MASHINA_OPT/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[path]="fg=none"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=red"

# git autocomplete
zstyle ':completion:*:*:git:*' script $MASHINA_FUNCTIONS/git-completion.zsh
fpath=($MASHINA_FUNCTIONS $fpath)
autoload -Uz compinit && compinit

# enable directory completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# fzf-tab
autoload -U compinit; compinit
source "$MASHINA_OPT/fzf-tab/fzf-tab.plugin.zsh"

# add empty line before comamnd
# precmd() { precmd() { echo "" } }



##################################################
## EXPERIMENTAL
##################################################

# successful_history_file="$HOME/zsh_successful_history"

# function log_successful_command {
#   if [[ $? -eq 0 || $? -eq 1 ]]; then
#     echo "$LAST_CMD" >> "$successful_history_file"
#   fi
# }

# function preexec_function {
#   export LAST_CMD="$1"
# }

# # Register the hooks
# autoload -Uz add-zsh-hook
# add-zsh-hook precmd log_successful_command
# add-zsh-hook preexec preexec_function
