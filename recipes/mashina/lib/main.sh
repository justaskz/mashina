source "$MASHINA_ROOT/init/mashina_env.sh"

for FILE in $MASHINA_FUNCTIONS/*.sh; do
  if [[ -a $FILE ]]; then source $FILE; fi
done

for FILE in $MASHINA_INIT/*.sh; do
  if [[ -a $FILE ]]; then source $FILE; fi
done

source "$MASHINA_ROOT/init/aliases.sh"

if $MASHINA_IS_BASH && [[ -a "$MASHINA_INIT/.bashrc" ]]; then source "$MASHINA_INIT/.bashrc"; fi
if $MASHINA_IS_ZSH && [[ -a "$MASHINA_INIT/zsh" ]]; then source "$MASHINA_INIT/zsh.sh"; fi
