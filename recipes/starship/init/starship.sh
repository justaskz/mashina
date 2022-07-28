export STARSHIP_CONFIG="$HOME/.starship"

if $(mashina_is_bash); then eval "$(starship init bash)"; fi
if $(mashina_is_zsh); then eval "$(starship init zsh)"; fi
