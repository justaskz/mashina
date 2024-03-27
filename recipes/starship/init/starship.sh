export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

if $(mashina__is_bash); then eval "$(starship init bash)"; fi
if $(mashina__is_zsh); then eval "$(starship init zsh)"; fi
