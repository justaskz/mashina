function mashina__is_variable_defined {
  if [[ -n "$1" ]]; then
    return 0
  else
    return 1
  fi
}
