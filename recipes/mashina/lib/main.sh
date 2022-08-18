source "$MASHINA_ROOT/mashina_env.sh"

for FILE in $MASHINA_FUNCTIONS/*.sh; do
  if [[ -a $FILE ]]; then source $FILE; fi
done

for FILE in $MASHINA_INIT/*.sh; do
  if [[ -a $FILE ]]; then source $FILE; fi
done

source "$MASHINA_ROOT/aliases.sh"
