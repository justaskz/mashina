export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

if $(mashina_is_bash); then eval "$(starship init bash)"; fi
if $(mashina_is_zsh); then eval "$(starship init zsh)"; fi
