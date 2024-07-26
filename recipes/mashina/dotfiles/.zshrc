MASHINA_CONFIG="$HOME/.config/mashina"

if [[ -a "$MASHINA_CONFIG/main.sh" ]]; then
  source "$MASHINA_CONFIG/main.sh"
fi

# if [[ -a ~/repos/mashina/poc/mashina/bin/mashina ]]; then
#   eval "$(~/repos/mashina/poc/mashina/bin/mashina init)"
# fi
