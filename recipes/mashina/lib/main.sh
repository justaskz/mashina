source "$MASHINA_CONFIG/mashina_env.sh"
source "$MASHINA_SOURCE/lib/main.sh"

for FILE in "$MASHINA_FUNCTIONS"/*.sh; do
  if [[ -a $FILE ]]; then source $FILE; fi
done

for FILE in "$MASHINA_INIT"/*.sh; do
  if [[ -a $FILE ]]; then source $FILE; fi
done

source "$MASHINA_CONFIG/aliases.sh"

# for sublime
if mashina__is_macos; then
  echo "export PATH=$PATH" > "$HOME/.bash_profile"
fi
