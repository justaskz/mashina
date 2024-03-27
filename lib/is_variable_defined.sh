function mashina__is_variable_defined {
  if [[ -n "$1" ]]; then
    echo true
  else
    echo false
  fi
}
