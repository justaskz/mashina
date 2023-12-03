function mashina_group {
  local old_group="$GROUP"
  local new_group="$(inv groups | fzf)"

  if [[ -n "$new_group" ]]; then
    GROUP="$new_group"
  fi

  echo "GROUP=$GROUP"
}
