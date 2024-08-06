MASHINA_CONFIG="$HOME/.config/mashina"

if [[ -a "$MASHINA_CONFIG/main.sh" ]]; then
  source "$MASHINA_CONFIG/main.sh"
fi

# if [[ -a "$HOME/.mashina/bin/mashina" ]]; then
#   eval "$($HOME/.mashina/bin/mashina init)"
# fi
