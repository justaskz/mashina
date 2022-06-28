#################################################
## ZSH CONFIG
#################################################

# prevent duplicates in command history
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

#################################################
## OH MY ZSH CONFIG
#################################################

# path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# would you like to use another custom folder than $ZSH/custom?
export ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"

# which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(zsh-syntax-highlighting)

# start ohmyzsh
source $ZSH/oh-my-zsh.sh
