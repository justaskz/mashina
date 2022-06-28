export STARSHIP_CONFIG="$HOME/.starship"

if $MASHINA_IS_BASH; then eval "$(starship init bash)"; fi
if $MASHINA_IS_ZSH; then eval "$(starship init zsh)"; fi
